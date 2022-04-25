import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/types.dart';
import 'package:receipt_generator/src/model/api/api.dart';

import '../entity/entity.dart';
import '../util/helper/rest_api.dart';
import 'app_database.dart';

/*
SyncState
100 - Initial
200 - Batched To Be Processed
300 - Sync Successful
500 - Failed to sync
 */

class SyncRepository {
  final log = Logger('SyncRepository');

  final AppDatabase db;
  final RestApiClient restClient;

  static const int staging = 200;
  static const int syncSuccessful = 300;
  static const int syncFailure = 500;

  SyncRepository({required this.db, required this.restClient});
  
  Future<SyncDataResponse> uploadDataToServer(SyncDataRequest request) async {
    try {
      var option =
      RestOptions(path: '/sync', body: json.encode(request.toMap()));
      var rawResp = await restClient.post(restOptions: option);
      if (rawResp.statusCode == 200) {
        log.info('Successfully Synced the data');
        return Future.value(SyncDataResponse());
      } else {
        throw 'Unable to sync the data. Contact Admin';
      }
    } catch (e) {
      log.severe(e);
      throw 'Error while syncing the data';
    }
}

  Future<void> _getAllTheProductFromLastSync() async {
    // Get If there is already sync going on
    DateTime now = DateTime.now();
    SyncEntity? lastSyncStatus =
        await db.syncDao.findSyncById(EntityType.product.type);
    if (lastSyncStatus != null && lastSyncStatus.status == 200) {
      if (now.difference(lastSyncStatus.syncStartTime!).inSeconds > 120) {
        log.warning("Unable to find the last sync status. Retrying...");
      } else {
        log.info("Sync already in progress waiting it for finish");
        return;
      }
    }
    // Create Batch For Sync
    DateTime curTime = DateTime.now();
    var st = db.database.batch();
    st.execute(
        'UPDATE product SET syncState = ?1 where syncState < 200', [staging]);
    st.execute(
        'INSERT INTO sync(type, status, syncStartTime) VALUES (?1, ?2, ?3) ON CONFLICT (type) DO UPDATE SET status=excluded.status, syncStartTime=excluded.syncStartTime',
        [EntityType.product.type, 200, curTime.millisecondsSinceEpoch]);
    await st.commit();

    try {
      // Start Send to server
      var products = await db.productDao.getProductByStatus(staging);
      var data = products.map((e) => e.toMap()).toList();
      if (data.isNotEmpty) {
        var req = SyncDataRequest(products: data);
        await uploadDataToServer(req);
        log.info(data);
      }
      // End Send to server

      // Update Status After Success failure for sync
      DateTime syncEndTime = DateTime.now();
      var en = db.database.batch();
      en.execute(
          'UPDATE product SET syncState = ?1 where syncState = 200', [syncSuccessful]);
      en.execute(
          'INSERT INTO sync(type, status, syncEndTime, lastSyncAt) VALUES (?1, ?2, ?3, ?4) ON CONFLICT (type) DO UPDATE SET status=excluded.status, syncEndTime=excluded.syncEndTime, lastSyncAt=excluded.lastSyncAt',
          [EntityType.product.type, syncSuccessful, syncEndTime.millisecondsSinceEpoch, syncEndTime.millisecondsSinceEpoch]);
      await en.commit();
    } catch (e) {
      log.severe(e);
      DateTime syncEndTime = DateTime.now();
      var en = db.database.batch();
      en.execute(
          'UPDATE product SET syncState = ?1 where syncState = 200', [syncFailure]);
      en.execute(
          'INSERT INTO sync(type, status, syncEndTime, lastSyncAt) VALUES (?1, ?2, ?3, ?4) ON CONFLICT (type) DO UPDATE SET status=excluded.status, syncEndTime=excluded.syncEndTime, lastSyncAt=excluded.lastSyncAt',
          [EntityType.product.type, syncFailure, syncEndTime.millisecondsSinceEpoch, syncEndTime.millisecondsSinceEpoch]);
      await en.commit();
    }
  }

  Future<void> startSync() async {
    await _getAllTheProductFromLastSync();
  }
}
