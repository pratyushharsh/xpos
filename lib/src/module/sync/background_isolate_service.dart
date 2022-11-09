import 'dart:convert';
import 'dart:isolate';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:http/http.dart' as http;
import 'package:receipt_generator/log.dart';

import '../../entity/config/code_value_entity.dart';
import '../../entity/pos/entity.dart';

/// Syncing architecture information
/// Pull the record from the last timestamp to the current timestamp
/// 1. Get the last timestamp from the local database
/// 2. Get the current timestamp from the server
/// 3. Get the data from the last timestamp to the current timestamp
/// 4. Save the data to the local database
/// 5. Update the last timestamp to the current timestamp

class BackgroundSyncServiceFromIso {
  final log = Logger('BackgroundSyncServiceFromIso');
  final int storeId;
  static Isar? _isar;
  String path;

  final String _baseUrl =
      'https://yp4fg0z7dc.execute-api.ap-south-1.amazonaws.com/DEV';

  final String transactionSync = 'TRANSACTION';

  BackgroundSyncServiceFromIso(this.path, this.storeId) {
    log.info('Starting the database service for background sync: $path');
  }

  initIsar() async {
    _isar = await Isar.open([
      RetailLocationEntitySchema,
      ContactEntitySchema,
      EmployeeEntitySchema,
      EmployeeRoleEntitySchema,
      ProductEntitySchema,
      CollectionEntitySchema,
      SequenceEntitySchema,
      SettingEntitySchema,
      SyncEntitySchema,
      TransactionHeaderEntitySchema,
      CodeValueEntitySchema,
      ReasonCodeEntitySchema,
      TaxGroupEntitySchema,
      ReportConfigEntitySchema,
    ], inspector: false, name: 'xpos');
  }

  Future<Map<String, dynamic>> uploadSyncData(
      List<Map<String, dynamic>> input) async {
    log.info('Uploading Sync Data');
    Map<String, dynamic> rawBody = {
      'transactions': input,
    };
    var body = json.encode(rawBody);
    final response = await http.post(
      Uri.parse('$_baseUrl/business/$storeId/sync'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return responseJson;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Map<String, dynamic>> getDataFromServer(int timestamp) async {
    log.info('Get Sync Data From: $_baseUrl/business/$storeId/sync?startTime=$timestamp');
    final response = await http.get(
      Uri.parse('$_baseUrl/business/$storeId/sync?startTime=$timestamp'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return responseJson;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> getNewTransactionToSync() async {
    if (_isar == null) {
      log.warning('Isar is not initialized');
      await initIsar();
    }

    try {
      // Get Last Synced Transaction Time
      var lastData = await _isar!.syncEntitys
          .where()
          .typeEqualTo(transactionSync)
          .findFirst();

      late SyncEntity? syncEntity = lastData;

      if (lastData == null) {
        log.info('No last sync data found');
        syncEntity = SyncEntity(
            type: transactionSync,
            lastSyncAt: null,
            status: 100,
            syncStartTime: DateTime.now(),
            syncEndTime: null);
        await _isar!.writeTxn(() async {
          await _isar!.syncEntitys.putByType(syncEntity!);
        });
      } else {
        log.info('Last sync data found: ${lastData.lastSyncAt}');
        await _isar!.writeTxn(() async {
          syncEntity = SyncEntity(
              type: transactionSync,
              lastSyncAt: syncEntity!.lastSyncAt,
              status: 100,
              syncStartTime: DateTime.now(),
              syncEndTime: null);
          await _isar!.syncEntitys.putByType(syncEntity!);
        });
      }

      // Fetch Data from Server
      var data = await getDataFromServer(syncEntity!.lastSyncAt?.microsecondsSinceEpoch ?? 0);

      List<Map<String, dynamic>> transactions = [];

      for (var transaction in data['transactions']) {
        var tmp = Map<String, dynamic>.from(transaction);
        tmp['syncState'] = 1000;
        transactions.add(tmp);
      }

      var trans = data['transactions'].map((e) {
        Map<String, dynamic> tmp = Map<String, dynamic>.from(e);
        tmp['syncState'] = 1000;
        return tmp;
      }).toList();

      await _isar!.writeTxn(() async {
        await _isar!.transactionHeaderEntitys.importJson(transactions);
        syncEntity = SyncEntity(
            type: transactionSync,
            lastSyncAt: DateTime.fromMicrosecondsSinceEpoch(data['to']),
            status: 100,
            syncStartTime: syncEntity!.syncStartTime,
            syncEndTime: DateTime.fromMicrosecondsSinceEpoch(data['to']));
        await _isar!.syncEntitys.putByType(syncEntity!);
      });

      log.info('Server Data: $data');

      // last sync time
      DateTime lastSyncTime = syncEntity?.lastSyncAt ??
          DateTime.now().subtract(const Duration(days: 30));

      var x = await _isar!.transactionHeaderEntitys
          .where()
          .syncStateIsNull()
          .or()
          .syncStateLessThan(500)
          .or()
          .lastSyncAtGreaterThan(lastSyncTime)
          .exportJson();

      if (x.isNotEmpty) {
        log.info('Found ${x.length} transactions to sync');
        // Do the api call to sync the data
        var uploadResponse = await uploadSyncData(x);
        log.info('Upload Response: $uploadResponse');
        DateTime syncedTime =
            DateTime.fromMicrosecondsSinceEpoch(uploadResponse['lastSyncedAt']);

        await _isar!.writeTxn(() async {
          for (var i in x) {
            // Get the transaction and update the last changed at.
            var transaction = await _isar!.transactionHeaderEntitys
                .where()
                .transIdEqualTo(i['transId'])
                .findFirst();

            if (transaction != null) {
              transaction.lastSyncAt = syncedTime;
              transaction.syncState = 1000;
              await _isar!.transactionHeaderEntitys.put(transaction);
            }
          }

          syncEntity = SyncEntity(
              type: transactionSync,
              lastSyncAt: syncedTime,
              status: 100,
              syncStartTime: syncEntity!.syncStartTime,
              syncEndTime: syncedTime);
          await _isar!.syncEntitys.putByType(syncEntity!);
        });
      } else {
        log.info('No new transaction found');
      }
    } catch (e) {
      log.severe(e);
    }
  }
}

class IsolateSyncService {
  static Logger log = Logger('IsolateSyncService');

  static executeSync(BackgroundSyncServiceFromIso syncDb) async {
    DateTime start = DateTime.now();
    await syncDb.getNewTransactionToSync();
    DateTime end = DateTime.now();
    Duration diff = end.difference(start);
    log.info('Time taken to sync: ${diff.inMilliseconds} ms');
  }

  static void isolateEntryPoint(SendPort sendPort) async {
    final ReceivePort receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);
    // Initializing the logger
    initRootLogger();
    BackgroundSyncServiceFromIso? syncDb;
    receivePort.listen((dynamic message) async {
      if (message is Map) {
        if (message['syncType'] == 'start') {
          log.info('Starting Sync Service');
          syncDb = BackgroundSyncServiceFromIso(
              '${message['storeId']}', message['storeId']);
          await syncDb!.initIsar();
          await executeSync(syncDb!);
        } else if (message['syncType'] == 'refresh') {
          await executeSync(syncDb!);
        }
      }
    });
  }
}
