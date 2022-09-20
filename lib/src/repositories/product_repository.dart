import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

import '../entity/pos/entity.dart';
import '../util/helper/rest_api.dart';

class ProductRepository {
  final log = Logger('ProductRepository');

  final Isar db;
  final RestApiClient restClient;

  ProductRepository({required this.db, required this.restClient});

  Future<ProductEntity?> getProductById(String productId) {
    return db.productEntitys.getByProductId(productId);
  }

  Future<void> createNewProduct(ProductEntity product) {
    return db.writeTxn(() => db.productEntitys.putByProductId(product));
  }

  Future<List<ProductEntity>> searchProductByFilter(String filter, {int limit = 10}) {
     return db.productEntitys
        .where()
        .productIdEqualTo(filter)
        .or()
        .descriptionWordsElementStartsWith(filter)
        .limit(limit)
        .findAll();
  }
}