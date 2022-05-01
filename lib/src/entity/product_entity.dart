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
      'sku_code': skuCode,
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
      description: (map['description'] ?? map['product_id']) as String,
      listPrice: double.tryParse(map['list_price'].toString()),
      salePrice: double.tryParse(map['sale_price'].toString()),
      purchasePrice: double.tryParse(map['purchase_price'].toString()),
      uom: map['uom'] as String?,
      enable: map['enable'] != null ? map['enable'] as bool : false,
      brand: map['brand'] as String?,
      skuCode: map['skuCode'] as String?,
      hsn: map['hsn'] as String?,
      tax: double.tryParse(map['tax'].toString()),
      imageUrl: map['image_url'] as String?,
      createTime: DateTime.tryParse(map['create_date']) ?? DateTime.now(),
      updateTime: DateTime.tryParse(map['update_date']??""),
      lastSyncAt: DateTime.tryParse(map['last_sync_at']??""),
      version: map['version'] != null ? map['version'] as int : 1,
      syncState: 300
    );
  }

  @override
  String toString() {
    return 'ProductEntity{productId: $productId, storeId: $storeId, description: $description, listPrice: $listPrice, salePrice: $salePrice, purchasePrice: $purchasePrice, uom: $uom, enable: $enable, brand: $brand, skuCode: $skuCode, hsn: $hsn, tax: $tax, imageUrl: $imageUrl, syncState: $syncState, createTime: $createTime, updateTime: $updateTime, lastSyncAt: $lastSyncAt, version: $version}';
  }
}
