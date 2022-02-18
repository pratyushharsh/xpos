import 'package:flutter/material.dart';
import 'package:receipt_generator/src/entity/entity.dart';

@immutable
class Product {
  final String? productId;
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

  const Product(
      {this.productId,
      required this.description,
      required this.listPrice,
      required this.salePrice,
      this.purchasePrice,
      this.uom,
      this.enable = true,
      this.brand,
      this.skuCode,
      this.hsn,
      this.tax,
      this.imageUrl});

  Product copyWith(
      {String? productId,
      String? description,
      double? listPrice,
      double? salePrice,
      double? purchasePrice,
      String? uom,
      bool? enable,
      String? brand,
      String? skuCode,
      String? hsn,
      double? tax,
      String? imageUrl}) {
    return Product(
        productId: productId ?? this.productId,
        description: description ?? this.description,
        listPrice: listPrice ?? this.listPrice,
        salePrice: salePrice ?? this.salePrice,
        purchasePrice: purchasePrice ?? this.purchasePrice,
        uom: uom ?? this.uom,
        brand: brand ?? this.brand,
        enable: enable ?? this.enable,
        skuCode: skuCode ?? this.skuCode,
        hsn: hsn ?? this.hsn,
        imageUrl: imageUrl ?? this.imageUrl);
  }

  ProductEntity toEntity() {
    return ProductEntity(
        productId: skuCode ?? productId,
        description: description,
        listPrice: listPrice,
        salePrice: salePrice,
        enable: enable,
        brand: brand,
        skuCode: skuCode,
        imageUrl: imageUrl,
        hsn: hsn,
        purchasePrice: purchasePrice,
        tax: tax,
        uom: uom);
  }

  static Product fromEntity(ProductEntity entity) {
    return Product(
        productId: entity.productId,
        description: entity.description,
        listPrice: entity.listPrice,
        salePrice: entity.salePrice,
        enable: entity.enable,
        brand: entity.brand,
        uom: entity.uom,
        tax: entity.tax,
        purchasePrice: entity.purchasePrice,
        hsn: entity.hsn,
        imageUrl: entity.imageUrl,
        skuCode: entity.skuCode);
  }
}
