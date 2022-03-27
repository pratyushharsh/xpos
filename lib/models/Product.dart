/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Product type in your schema. */
@immutable
class Product extends Model {
  static const classType = const _ProductModelType();
  final String id;
  final String? _sk;
  final String? _productId;
  final String? _description;
  final double? _listPrice;
  final double? _salePrice;
  final double? _purchasePrice;
  final String? _uom;
  final bool? _enable;
  final String? _brand;
  final String? _skuCode;
  final String? _hsn;
  final double? _tax;
  final String? _imageUrl;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get sk {
    try {
      return _sk!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get productId {
    return _productId;
  }
  
  String? get description {
    return _description;
  }
  
  double? get listPrice {
    return _listPrice;
  }
  
  double? get salePrice {
    return _salePrice;
  }
  
  double? get purchasePrice {
    return _purchasePrice;
  }
  
  String? get uom {
    return _uom;
  }
  
  bool? get enable {
    return _enable;
  }
  
  String? get brand {
    return _brand;
  }
  
  String? get skuCode {
    return _skuCode;
  }
  
  String? get hsn {
    return _hsn;
  }
  
  double? get tax {
    return _tax;
  }
  
  String? get imageUrl {
    return _imageUrl;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Product._internal({required this.id, required sk, productId, description, listPrice, salePrice, purchasePrice, uom, enable, brand, skuCode, hsn, tax, imageUrl, createdAt, updatedAt}): _sk = sk, _productId = productId, _description = description, _listPrice = listPrice, _salePrice = salePrice, _purchasePrice = purchasePrice, _uom = uom, _enable = enable, _brand = brand, _skuCode = skuCode, _hsn = hsn, _tax = tax, _imageUrl = imageUrl, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Product({String? id, required String sk, String? productId, String? description, double? listPrice, double? salePrice, double? purchasePrice, String? uom, bool? enable, String? brand, String? skuCode, String? hsn, double? tax, String? imageUrl}) {
    return Product._internal(
      id: id == null ? UUID.getUUID() : id,
      sk: sk,
      productId: productId,
      description: description,
      listPrice: listPrice,
      salePrice: salePrice,
      purchasePrice: purchasePrice,
      uom: uom,
      enable: enable,
      brand: brand,
      skuCode: skuCode,
      hsn: hsn,
      tax: tax,
      imageUrl: imageUrl);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
      id == other.id &&
      _sk == other._sk &&
      _productId == other._productId &&
      _description == other._description &&
      _listPrice == other._listPrice &&
      _salePrice == other._salePrice &&
      _purchasePrice == other._purchasePrice &&
      _uom == other._uom &&
      _enable == other._enable &&
      _brand == other._brand &&
      _skuCode == other._skuCode &&
      _hsn == other._hsn &&
      _tax == other._tax &&
      _imageUrl == other._imageUrl;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Product {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("sk=" + "$_sk" + ", ");
    buffer.write("productId=" + "$_productId" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("listPrice=" + (_listPrice != null ? _listPrice!.toString() : "null") + ", ");
    buffer.write("salePrice=" + (_salePrice != null ? _salePrice!.toString() : "null") + ", ");
    buffer.write("purchasePrice=" + (_purchasePrice != null ? _purchasePrice!.toString() : "null") + ", ");
    buffer.write("uom=" + "$_uom" + ", ");
    buffer.write("enable=" + (_enable != null ? _enable!.toString() : "null") + ", ");
    buffer.write("brand=" + "$_brand" + ", ");
    buffer.write("skuCode=" + "$_skuCode" + ", ");
    buffer.write("hsn=" + "$_hsn" + ", ");
    buffer.write("tax=" + (_tax != null ? _tax!.toString() : "null") + ", ");
    buffer.write("imageUrl=" + "$_imageUrl" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Product copyWith({String? id, String? sk, String? productId, String? description, double? listPrice, double? salePrice, double? purchasePrice, String? uom, bool? enable, String? brand, String? skuCode, String? hsn, double? tax, String? imageUrl}) {
    return Product._internal(
      id: id ?? this.id,
      sk: sk ?? this.sk,
      productId: productId ?? this.productId,
      description: description ?? this.description,
      listPrice: listPrice ?? this.listPrice,
      salePrice: salePrice ?? this.salePrice,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      uom: uom ?? this.uom,
      enable: enable ?? this.enable,
      brand: brand ?? this.brand,
      skuCode: skuCode ?? this.skuCode,
      hsn: hsn ?? this.hsn,
      tax: tax ?? this.tax,
      imageUrl: imageUrl ?? this.imageUrl);
  }
  
  Product.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _sk = json['sk'],
      _productId = json['productId'],
      _description = json['description'],
      _listPrice = (json['listPrice'] as num?)?.toDouble(),
      _salePrice = (json['salePrice'] as num?)?.toDouble(),
      _purchasePrice = (json['purchasePrice'] as num?)?.toDouble(),
      _uom = json['uom'],
      _enable = json['enable'],
      _brand = json['brand'],
      _skuCode = json['skuCode'],
      _hsn = json['hsn'],
      _tax = (json['tax'] as num?)?.toDouble(),
      _imageUrl = json['imageUrl'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'sk': _sk, 'productId': _productId, 'description': _description, 'listPrice': _listPrice, 'salePrice': _salePrice, 'purchasePrice': _purchasePrice, 'uom': _uom, 'enable': _enable, 'brand': _brand, 'skuCode': _skuCode, 'hsn': _hsn, 'tax': _tax, 'imageUrl': _imageUrl, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "product.id");
  static final QueryField SK = QueryField(fieldName: "sk");
  static final QueryField PRODUCTID = QueryField(fieldName: "productId");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField LISTPRICE = QueryField(fieldName: "listPrice");
  static final QueryField SALEPRICE = QueryField(fieldName: "salePrice");
  static final QueryField PURCHASEPRICE = QueryField(fieldName: "purchasePrice");
  static final QueryField UOM = QueryField(fieldName: "uom");
  static final QueryField ENABLE = QueryField(fieldName: "enable");
  static final QueryField BRAND = QueryField(fieldName: "brand");
  static final QueryField SKUCODE = QueryField(fieldName: "skuCode");
  static final QueryField HSN = QueryField(fieldName: "hsn");
  static final QueryField TAX = QueryField(fieldName: "tax");
  static final QueryField IMAGEURL = QueryField(fieldName: "imageUrl");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Product";
    modelSchemaDefinition.pluralName = "Products";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.SK,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.PRODUCTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.LISTPRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.SALEPRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.PURCHASEPRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.UOM,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.ENABLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.BRAND,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.SKUCODE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.HSN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.TAX,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.IMAGEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ProductModelType extends ModelType<Product> {
  const _ProductModelType();
  
  @override
  Product fromJson(Map<String, dynamic> jsonData) {
    return Product.fromJson(jsonData);
  }
}