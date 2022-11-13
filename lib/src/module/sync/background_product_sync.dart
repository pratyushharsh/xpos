import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

import 'background_sync.dart';

class BackgroundProductSync extends BackgroundEntitySync {
  @override
  Future<List<Map<String, dynamic>>> exportData() async {
    return await db.productEntitys
        .where()
        .syncStateIsNull()
        .or()
        .syncStateLessThan(500)
        .exportJson();
  }

  @override
  Future<void> importData(List data, int lastSyncAt) async {
    List<Map<String, dynamic>> products = [];
    for (var product in data) {
      var tmp = Map<String, dynamic>.from(product);
      tmp['syncState'] = 1000;
      products.add(tmp);
    }

    await db.writeTxn(() async {
      if (products.isNotEmpty) {
        await db.productEntitys.importJson(products);
      }
      await updateSyncEntityTimestamp(lastSyncAt);
    });
  }

  @override
  String get type => productSync;
}