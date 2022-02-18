import 'package:floor/floor.dart';

import 'base_entity.dart';

@Entity(tableName: 'product', indices: [
  Index(value: ['description']),
  Index(value: ['skuCode'], unique: true)
])
class ProductEntity {
  @primaryKey
  String? productId;

  final String description;
  final double? listPrice;
  final double? salePrice;
  final double? purchasePrice;
  final String? uom;
  final bool enable;
  final String? brand;
  final String? skuCode;
  final String? hsn;
  final double? tax;
  final String? imageUrl;

  ProductEntity(
      {this.productId,
      required this.description,
      required this.listPrice,
      required this.salePrice,
      this.purchasePrice,
      this.uom,
      required this.enable,
      this.brand,
      this.skuCode,
      this.hsn,
      this.tax,
      this.imageUrl});
}

// "primaryImageUrl": "",
// "productId": "DFEWFWE234543",
// "longDescription": "",
// "description": "",
// "listPrice": 100.00,
// "salePrice": 45.53,
// "enabled": "",
// "brand": "",
// "creationDate": "",
// "updationDate": ""
