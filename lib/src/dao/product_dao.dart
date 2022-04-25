import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/entity.dart';

import 'base_dao.dart';

@dao
abstract class ProductDao extends AbstractDao<ProductEntity> {
  @Query('SELECT * FROM product')
  Future<List<ProductEntity>> findAllProducts();

  @Query('SELECT * FROM product where productId = :productId')
  Future<ProductEntity?> findProductById(String productId);

  @Query('SELECT * FROM product where description like :filter or productId like :filter  limit 10')
  Future<List<ProductEntity>> findAllProductsByText(String filter);

  @Query('SELECT * FROM product where syncState = :status')
  Future<List<ProductEntity>> getProductByStatus(int status);
}