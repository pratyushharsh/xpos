import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/entity.dart';

@dao
abstract class SkuDao {

  // @Query('SELECT * FROM sku where productId = :id')
  // Future<List<SkuEntity>> findAllSkusForProduct(int id);
  //
  // @insert
  // Future<void> insertSku(SkuEntity person);
}