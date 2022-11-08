import 'dart:isolate';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:http/http.dart' as http;
import 'package:receipt_generator/log.dart';

import '../../entity/config/code_value_entity.dart';
import '../../entity/pos/entity.dart';

class BackgroundSyncServiceFromIso {
  final log = Logger('BackgroundSyncServiceFromIso');
  static Isar? _isar;
  String path;

  final String transactionSync = 'TRANSACTION';

  BackgroundSyncServiceFromIso(this.path) {
    log.info('Starting the database service for background sync: $path');
    _initIsar(path);
  }

  static _initIsar(String path) async {
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

  Future<void> getNewTransactionToSync() async {
    if (_isar == null) {
      log.warning('Isar is not initialized');
      await _initIsar(path);
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

      // last sync time
      DateTime lastSyncTime = syncEntity?.lastSyncAt ?? DateTime.now().subtract(const Duration(days: 30));
      DateTime lastSyncTimeEnd = DateTime.now();

      var x = await _isar!.transactionHeaderEntitys.filter().lastChangedAtBetween(lastSyncTime, lastSyncTimeEnd, includeLower: false).exportJson();

      if (x.isNotEmpty) {
        log.info('Found ${x.length} transactions to sync');
        await _isar!.writeTxn(() async {
          for (var i in x) {
            // Get the transaction and update the last changed at.
            var transaction = await _isar!.transactionHeaderEntitys
                .where()
                .transIdEqualTo(i['transId'])
                .findFirst();

            if (transaction != null) {
              transaction.lastChangedAt = lastSyncTimeEnd;
              await _isar!.transactionHeaderEntitys.put(transaction);
            }
          }
        });
      } else {
        log.info('No new transaction found');
      }

      await _isar!.writeTxn(() async {
        syncEntity = SyncEntity(
            type: transactionSync,
            lastSyncAt: lastSyncTimeEnd,
            status: 100,
            syncStartTime: syncEntity!.syncStartTime,
            syncEndTime: lastSyncTimeEnd);
        await _isar!.syncEntitys.putByType(syncEntity!);
      });

    } catch (e) {
      log.severe(e);
    }
  }
}

class IsolateSyncService {
  static Logger log = Logger('IsolateSyncService');

  static httpGetCall() async {
    var _url = Uri.parse('http://www.example.com/');
    final response = await http.get(_url);
    print(response);
    print("GET Response: ${response.statusCode}");
  }

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
    var syncDb = BackgroundSyncServiceFromIso('test');
    await executeSync(syncDb);
    receivePort.listen((dynamic message) async {
      await executeSync(syncDb);
    });
  }
}
