import 'dart:convert';
import 'dart:isolate';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:http/http.dart' as http;
import 'package:receipt_generator/log.dart';
import 'package:receipt_generator/src/database/db_provider.dart';
import 'package:receipt_generator/src/module/receipt_display/template/invoice_config.dart';

import '../../entity/pos/entity.dart';
import '../../repositories/repository.dart';

/// Syncing architecture information
/// Pull the record from the last timestamp to the current timestamp
/// 1. Get the last timestamp from the local database
/// 2. Get the current timestamp from the server
/// 3. Get the data from the last timestamp to the current timestamp
/// 4. Save the data to the local database
/// 5. Update the last timestamp to the current timestamp

class BackgroundSyncServiceFromIso with DatabaseProvider {
  final log = Logger('BackgroundSyncServiceFromIso');
  InvoiceRepository invoiceRepository = InvoiceRepository();
  final int storeId;
  String path;

  final String _baseUrl =
      'https://yp4fg0z7dc.execute-api.ap-south-1.amazonaws.com/DEV';

  static const String transactionSync = 'TRANSACTION';
  static const String customerSync = 'CUSTOMER';
  static const String productSync = 'PRODUCT';
  static const String taxSync = 'TAX';
  static const String invoiceSync = 'INVOICE';

  List<String> toSyncEntity = [
    transactionSync,
    customerSync,
    productSync,
    taxSync,
    invoiceSync
  ];

  BackgroundSyncServiceFromIso(this.path, this.storeId) {
    log.info('Starting the database service for background sync: $path');
  }

  initIsar() async {
    await DatabaseProvider.ensureInitialized(
        name: storeId.toString(), isolateInit: true);
  }

  Future<Map<String, dynamic>> uploadSyncData(
      Map<String, dynamic> input) async {
    var body = json.encode(input);
    log.info('Uploading Sync Data: $body');
    final response = await http.post(
      Uri.parse('$_baseUrl/business/$storeId/sync'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );
    log.info('Response: ${response.body}');
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return responseJson;
    } else {
      log.severe(response.body);
      throw Exception('Failed to load data');
    }
  }

  Future<Map<String, dynamic>> getDataFromServer(int timestamp) async {
    log.info(
        'Get Sync Data From: $_baseUrl/business/$storeId/sync?startTime=$timestamp');
    final response = await http.get(
      Uri.parse('$_baseUrl/business/$storeId/sync?startTime=$timestamp'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    log.info('Response: ${response.body}');
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return responseJson;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> syncAllData() async {
    if (db == null) {
      log.warning('Isar is not initialized');
      await initIsar();
    }

    // Fetch all the SyncEntity from the database
    try {
      var rawSyncData = await db.syncEntitys.where().findAll();
      // Filter the records to sync.
      // var syncEntities = rawSyncData.where((e) => toSyncEntity.contains(e.type)).toList();

      List<SyncEntity> syncEntities = [];
      for (var e in toSyncEntity) {
        var syncEntity = rawSyncData.firstWhere((element) => element.type == e,
            orElse: () => SyncEntity(
                type: e,
                lastSyncAt: null,
                status: 100,
                syncStartTime: DateTime.now(),
                syncEndTime: null));
        syncEntities.add(syncEntity);
      }

      await db.writeTxn(() async {
        await db.syncEntitys.putAllByType(syncEntities);
      });

      // Find the minimum lastsync time
      var minLastSyncTime = syncEntities
          .map((e) => e.lastSyncAt?.millisecondsSinceEpoch ?? 0)
          .reduce((value, element) => value < element ? value : element);

      // ***************** Import Process Start *****************
      // Fetch All the data from last sync.
      // Fetch Data from Server
      // Find the last sync time and proceed
      var data = await getDataFromServer(minLastSyncTime);

      List<Map<String, dynamic>> transactions = [];
      List<Map<String, dynamic>> customers = [];
      List<Map<String, dynamic>> products = [];
      List<Map<String, dynamic>> taxConfiguration = [];
      List<Map<String, dynamic>> invoiceConfigurations = [];

      // Loading transaction from the server
      if (data['transactions'] != null &&
          data['transactions']['data'] != null) {
        for (var transaction in data['transactions']['data']) {
          var tmp = Map<String, dynamic>.from(transaction);
          tmp['syncState'] = 1000;
          transactions.add(tmp);
        }
      }
      await db.writeTxn(() async {
        if (transactions.isNotEmpty) {
          await db.transactionHeaderEntitys.importJson(transactions);
        }

        // Find Sync Entity
        var e = syncEntities
            .firstWhere((element) => element.type == transactionSync);
        e.lastSyncAt =
            DateTime.fromMillisecondsSinceEpoch(data['transactions']['to']);
        e.syncStartTime = DateTime.now();
        await db.syncEntitys.putByType(e);
      });

      // Loading Customer Data from server
      if (data['customers'] != null && data['customers']['data'] != null) {
        for (var customer in data['customers']['data']) {
          var tmp = Map<String, dynamic>.from(customer);
          tmp['syncState'] = 1000;
          customers.add(tmp);
        }
      }
      await db.writeTxn(() async {
        if (customers.isNotEmpty) {
          await db.contactEntitys.importJson(customers);
        }

        // Find Sync Entity
        var e =
            syncEntities.firstWhere((element) => element.type == customerSync);
        e.lastSyncAt =
            DateTime.fromMillisecondsSinceEpoch(data['customers']['to']);
        e.syncStartTime = DateTime.now();
        await db.syncEntitys.putByType(e);
      });

      // Loading product from server to database
      if (data['products'] != null && data['products']['data'] != null) {
        for (var product in data['products']['data']) {
          var tmp = Map<String, dynamic>.from(product);
          tmp['syncState'] = 1000;
          products.add(tmp);
        }
      }
      await db.writeTxn(() async {
        if (products.isNotEmpty) {
          await db.productEntitys.importJson(products);
        }
        // Find Sync Entity
        var e =
            syncEntities.firstWhere((element) => element.type == productSync);
        e.lastSyncAt =
            DateTime.fromMillisecondsSinceEpoch(data['products']['to']);
        e.syncStartTime = DateTime.now();
        await db.syncEntitys.putByType(e);
      });

      // Loading tax configuration from server to database
      if (data['config'] != null &&
          data['config']['taxConfig'] != null &&
          data['config']['taxConfig']['data'] != null) {
        for (var tax in data['config']['taxConfig']['data']) {
          var tmp = Map<String, dynamic>.from(tax);
          tmp['syncState'] = 1000;
          taxConfiguration.add(tmp);
        }
      }
      await db.writeTxn(() async {
        if (taxConfiguration.isNotEmpty) {
          await db.taxGroupEntitys.importJson(taxConfiguration);
        }
        // Find Sync Entity
        var e = syncEntities.firstWhere((element) => element.type == taxSync);
        e.lastSyncAt = DateTime.fromMillisecondsSinceEpoch(
            data['config']['taxConfig']['to']);
        e.syncStartTime = DateTime.now();
        await db.syncEntitys.putByType(e);
      });

      // Loading invoice configuration from server to database
      if (data['config'] != null &&
          data['config']['invoiceConfig'] != null &&
          data['config']['invoiceConfig']['data'] != null) {
        for (var invoice in data['config']['invoiceConfig']['data']) {
          var tmp = Map<String, dynamic>.from(invoice);
          tmp['syncState'] = 1000;
          invoiceConfigurations.add(tmp);
        }
      }
      await db.writeTxn(() async {
        if (invoiceConfigurations.isNotEmpty) {
          await db.reportConfigEntitys.importJson(invoiceConfigurations);
        }
        // Find Sync Entity
        var e =
            syncEntities.firstWhere((element) => element.type == invoiceSync);
        e.lastSyncAt = DateTime.fromMillisecondsSinceEpoch(
            data['config']['invoiceConfig']['to']);
        e.syncStartTime = DateTime.now();
        await db.syncEntitys.putByType(e);
      });

      // ***************** Import Process Start *****************

      // Get the unsynced data from the database and post it to the server.

      // Fetch all the transaction from the database
      var transactionsToSync = await db.transactionHeaderEntitys
          .where()
          .syncStateIsNull()
          .or()
          .syncStateLessThan(500)
          .exportJson();

      // Fetch all the customer from the database
      var customerToSync = await db.contactEntitys
          .where()
          .syncStateIsNull()
          .or()
          .syncStateLessThan(500)
          .exportJson();

      // Fetch all the product from the database
      var productToSync = await db.productEntitys
          .where()
          .syncStateIsNull()
          .or()
          .syncStateLessThan(500)
          .exportJson();

      // Fetch all the tax configuration from the database
      var taxConfigurationToSync =
          await db.taxGroupEntitys.where().exportJson();

      // Fetch all the invoice configuration from the database
      var invoiceConfigurationToSync = await db.reportConfigEntitys
          .where()
          .syncStateIsNull()
          .or()
          .syncStateLessThan(500)
          .exportJson();

      // Get the tax configuration from the database
      // Find if the last sync of the tax group updated after lastSyncAt
      bool taxSyncRequired = false;
      for (var tax in taxConfigurationToSync) {
        if (tax['syncState'] != null && tax['syncState'] < 500) {
          taxSyncRequired = true;
          break;
        }
      }

      Map<String, dynamic> rawRequestBody = {
        'transactions': transactionsToSync,
        'customers': customerToSync,
        'products': productToSync,
        'config': {
          'taxConfig': taxSyncRequired ? taxConfigurationToSync : [],
          'invoiceConfig': invoiceConfigurationToSync
        }
      };

      if (!(transactionsToSync.isNotEmpty ||
          customerToSync.isNotEmpty ||
          productToSync.isNotEmpty ||
          rawRequestBody['config']['taxConfig'].isNotEmpty ||
          rawRequestBody['config']['invoiceConfig'].isNotEmpty)) {
        log.info('No data to sync');
        return;
      }

      var uploadResponse = await uploadSyncData(rawRequestBody);

      // Construct the json to add lastSyncAt state and syncState
      // Update the syncState and lastSyncAt in the database
      DateTime syncedTime =
          DateTime.fromMicrosecondsSinceEpoch(uploadResponse['lastSyncedAt']);
      int syncTimeInMill = uploadResponse['lastSyncedAt'];

      var transactionsToSyncResp = transactionsToSync.map((e) {
        var tmp = Map<String, dynamic>.from(e);
        tmp['syncState'] = 1000;
        tmp['lastSyncAt'] = syncTimeInMill;
        return tmp;
      }).toList();

      await db.writeTxn(() async {
        await db.transactionHeaderEntitys.importJson(transactionsToSyncResp);

        // Find Sync Entity
        var e = syncEntities
            .firstWhere((element) => element.type == transactionSync);
        e.lastSyncAt = syncedTime;
        e.syncEndTime = syncedTime;
        await db.syncEntitys.putAllByType(syncEntities);
      });

      var customerToSyncResp = customerToSync.map((e) {
        var tmp = Map<String, dynamic>.from(e);
        tmp['syncState'] = 1000;
        tmp['lastSyncAt'] = syncTimeInMill;
        return tmp;
      }).toList();

      await db.writeTxn(() async {
        await db.contactEntitys.importJson(customerToSyncResp);

        // Find Sync Entity
        var e =
            syncEntities.firstWhere((element) => element.type == customerSync);
        e.lastSyncAt = syncedTime;
        e.syncEndTime = syncedTime;
        await db.syncEntitys.putByType(e);
      });

      var productToSyncResp = productToSync.map((e) {
        var tmp = Map<String, dynamic>.from(e);
        tmp['syncState'] = 1000;
        tmp['lastSyncAt'] = syncTimeInMill;
        return tmp;
      }).toList();

      await db.writeTxn(() async {
        await db.productEntitys.importJson(productToSyncResp);
        // Find Sync Entity
        var e =
            syncEntities.firstWhere((element) => element.type == productSync);
        e.lastSyncAt = syncedTime;
        e.syncEndTime = syncedTime;
        await db.syncEntitys.putByType(e);
      });

      var taxConfigurationToSyncResp = taxConfigurationToSync.map((e) {
        var tmp = Map<String, dynamic>.from(e);
        tmp['syncState'] = 1000;
        tmp['lastSyncAt'] = syncTimeInMill;
        return tmp;
      }).toList();

      await db.writeTxn(() async {
        await db.taxGroupEntitys.importJson(taxConfigurationToSyncResp);
        // Find Sync Entity
        var e = syncEntities.firstWhere((element) => element.type == taxSync);
        e.lastSyncAt = syncedTime;
        e.syncEndTime = syncedTime;
        await db.syncEntitys.putByType(e);
      });

      var invoiceConfigurationToSyncResp = invoiceConfigurationToSync.map((e) {
        var tmp = Map<String, dynamic>.from(e);
        tmp['syncState'] = 1000;
        tmp['lastSyncAt'] = syncTimeInMill;
        return tmp;
      }).toList();
      await db.writeTxn(() async {
        await db.reportConfigEntitys.importJson(invoiceConfigurationToSyncResp);
        // Find Sync Entity
        var e = syncEntities.firstWhere((element) => element.type == invoiceSync);
        e.lastSyncAt = syncedTime;
        e.syncEndTime = syncedTime;
        await db.syncEntitys.putByType(e);
      });
    } catch (e, st) {
      log.severe('Error while syncing data: $e', e, st);
    }
  }
}

class IsolateSyncService {
  static Logger log = Logger('IsolateSyncService');

  static executeSync(BackgroundSyncServiceFromIso syncDb) async {
    DateTime start = DateTime.now();
    // await syncDb.getNewTransactionToSync();
    await syncDb.syncAllData();
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
