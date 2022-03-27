import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/types.dart';

import 'base_entity.dart';

@Entity(tableName: 'product', indices: [
  Index(value: ['description']),
  Index(value: ['skuCode'], unique: true)
])
class ProductEntity extends BaseEntity {
  @primaryKey
  String? productId;
  String storeId;

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
  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastChangedAt;
  late int version;

  ProductEntity(
      {this.productId,
        required this.storeId,
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
      this.imageUrl,
      required this.createTime,
      this.version = 1,
      this.lastChangedAt,
      this.updateTime});


  @override
  String getPK() {
    return "STORE#$storeId";
  }

  @override
  String getSK() {
    return "ITEM#$productId";
  }

  @override
  String getStoreId() {
    return storeId;
  }

  @override
  String lastUpdatedAtISOString() {
    DateTime lastUpdate = updateTime ?? DateTime.now();
    return lastUpdate.toIso8601String();
  }

  @override
  EntityType type() {
    return EntityType.product;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'storeId': storeId,
      'description': description,
      'listPrice': listPrice,
      'salePrice': salePrice,
      'purchasePrice': purchasePrice,
      'uom': uom,
      'enable': enable,
      'brand': brand,
      'skuCode': skuCode,
      'hsn': hsn,
      'tax': tax,
      'imageUrl': imageUrl,
      'createTime': createTime,
      'updateTime': updateTime,
      'lastChangedAt': lastChangedAt,
      'version': version,
    };
  }

  factory ProductEntity.fromMap(Map<String, dynamic> map) {
    return ProductEntity(
      productId: map['productId'] as String,
      storeId: map['storeId'] as String,
      description: map['description'] as String,
      listPrice: map['listPrice'] as double,
      salePrice: map['salePrice'] as double,
      purchasePrice: map['purchasePrice'] as double,
      uom: map['uom'] as String,
      enable: map['enable'] as bool,
      brand: map['brand'] as String,
      skuCode: map['skuCode'] as String,
      hsn: map['hsn'] as String,
      tax: map['tax'] as double,
      imageUrl: map['imageUrl'] as String,
      createTime: map['createTime'] as DateTime,
      updateTime: map['updateTime'] as DateTime,
      lastChangedAt: map['lastChangedAt'] as DateTime,
      version: map['version'] as int,
    );
  }
}
