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
  final int syncState;
  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastSyncAt;
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
      this.syncState = 100,
      this.lastSyncAt,
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
      'product_id': productId,
      'store_id': storeId,
      'description': description,
      'list_price': listPrice,
      'sale_price': salePrice,
      'purchase_price': purchasePrice,
      'uom': uom,
      'enable': enable,
      'brand': brand,
      'skuCode': skuCode,
      'hsn': hsn,
      'tax': tax,
      'image_url': imageUrl,
      'create_date': createTime.toUtc().toIso8601String(),
      'update_date': updateTime?.toUtc().toIso8601String(),
      'last_sync_at': lastSyncAt?.toUtc().toIso8601String(),
      'version': version,
    };
  }

  factory ProductEntity.fromMap(Map<String, dynamic> map) {
    return ProductEntity(
      productId: map['product_id'] as String,
      storeId: map['store_id'] as String,
      description: map['description'] as String,
      listPrice: map['list_price'] as double,
      salePrice: map['sale_price'] as double,
      purchasePrice: map['purchase_price'] as double,
      uom: map['uom'] as String,
      enable: map['enable'] as bool,
      brand: map['brand'] as String,
      skuCode: map['skuCode'] as String,
      hsn: map['hsn'] as String,
      tax: map['tax'] as double,
      imageUrl: map['image_url'] as String,
      createTime: map['create_date'] as DateTime,
      updateTime: map['update_date'] as DateTime,
      lastSyncAt: map['last_sync_at'] as DateTime,
      version: map['version'] as int,
    );
  }
}
