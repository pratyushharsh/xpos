// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetProductEntityCollection on Isar {
  IsarCollection<ProductEntity> get productEntitys => this.collection();
}

const ProductEntitySchema = CollectionSchema(
  name: r'ProductEntity',
  id: 4867088266565710661,
  properties: {
    r'brand': PropertySchema(
      id: 0,
      name: r'brand',
      type: IsarType.string,
    ),
    r'createTime': PropertySchema(
      id: 1,
      name: r'createTime',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'descriptionWords': PropertySchema(
      id: 3,
      name: r'descriptionWords',
      type: IsarType.stringList,
    ),
    r'displayName': PropertySchema(
      id: 4,
      name: r'displayName',
      type: IsarType.string,
    ),
    r'enable': PropertySchema(
      id: 5,
      name: r'enable',
      type: IsarType.bool,
    ),
    r'hsn': PropertySchema(
      id: 6,
      name: r'hsn',
      type: IsarType.string,
    ),
    r'imageUrl': PropertySchema(
      id: 7,
      name: r'imageUrl',
      type: IsarType.stringList,
    ),
    r'lastSyncAt': PropertySchema(
      id: 8,
      name: r'lastSyncAt',
      type: IsarType.dateTime,
    ),
    r'listPrice': PropertySchema(
      id: 9,
      name: r'listPrice',
      type: IsarType.double,
    ),
    r'productId': PropertySchema(
      id: 10,
      name: r'productId',
      type: IsarType.string,
    ),
    r'purchasePrice': PropertySchema(
      id: 11,
      name: r'purchasePrice',
      type: IsarType.double,
    ),
    r'salePrice': PropertySchema(
      id: 12,
      name: r'salePrice',
      type: IsarType.double,
    ),
    r'skuCode': PropertySchema(
      id: 13,
      name: r'skuCode',
      type: IsarType.string,
    ),
    r'storeId': PropertySchema(
      id: 14,
      name: r'storeId',
      type: IsarType.long,
    ),
    r'syncState': PropertySchema(
      id: 15,
      name: r'syncState',
      type: IsarType.long,
    ),
    r'tax': PropertySchema(
      id: 16,
      name: r'tax',
      type: IsarType.double,
    ),
    r'taxGroupId': PropertySchema(
      id: 17,
      name: r'taxGroupId',
      type: IsarType.string,
    ),
    r'uom': PropertySchema(
      id: 18,
      name: r'uom',
      type: IsarType.string,
    ),
    r'updateTime': PropertySchema(
      id: 19,
      name: r'updateTime',
      type: IsarType.dateTime,
    ),
    r'version': PropertySchema(
      id: 20,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _productEntityEstimateSize,
  serializeNative: _productEntitySerializeNative,
  deserializeNative: _productEntityDeserializeNative,
  deserializePropNative: _productEntityDeserializePropNative,
  serializeWeb: _productEntitySerializeWeb,
  deserializeWeb: _productEntityDeserializeWeb,
  deserializePropWeb: _productEntityDeserializePropWeb,
  idName: r'id',
  indexes: {
    r'productId': IndexSchema(
      id: 5580769080710688203,
      name: r'productId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'productId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'descriptionWords': IndexSchema(
      id: 4013375675557855679,
      name: r'descriptionWords',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'descriptionWords',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _productEntityGetId,
  getLinks: _productEntityGetLinks,
  attach: _productEntityAttach,
  version: '3.0.0-dev.14',
);

int _productEntityEstimateSize(
  ProductEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.brand;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.descriptionWords.length * 3;
  {
    for (var i = 0; i < object.descriptionWords.length; i++) {
      final value = object.descriptionWords[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.displayName.length * 3;
  {
    final value = object.hsn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.imageUrl.length * 3;
  {
    for (var i = 0; i < object.imageUrl.length; i++) {
      final value = object.imageUrl[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.productId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.skuCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.taxGroupId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uom.length * 3;
  return bytesCount;
}

int _productEntitySerializeNative(
  ProductEntity object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.brand);
  writer.writeDateTime(offsets[1], object.createTime);
  writer.writeString(offsets[2], object.description);
  writer.writeStringList(offsets[3], object.descriptionWords);
  writer.writeString(offsets[4], object.displayName);
  writer.writeBool(offsets[5], object.enable);
  writer.writeString(offsets[6], object.hsn);
  writer.writeStringList(offsets[7], object.imageUrl);
  writer.writeDateTime(offsets[8], object.lastSyncAt);
  writer.writeDouble(offsets[9], object.listPrice);
  writer.writeString(offsets[10], object.productId);
  writer.writeDouble(offsets[11], object.purchasePrice);
  writer.writeDouble(offsets[12], object.salePrice);
  writer.writeString(offsets[13], object.skuCode);
  writer.writeLong(offsets[14], object.storeId);
  writer.writeLong(offsets[15], object.syncState);
  writer.writeDouble(offsets[16], object.tax);
  writer.writeString(offsets[17], object.taxGroupId);
  writer.writeString(offsets[18], object.uom);
  writer.writeDateTime(offsets[19], object.updateTime);
  writer.writeLong(offsets[20], object.version);
  return writer.usedBytes;
}

ProductEntity _productEntityDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductEntity(
    brand: reader.readStringOrNull(offsets[0]),
    createTime: reader.readDateTime(offsets[1]),
    description: reader.readStringOrNull(offsets[2]),
    displayName: reader.readString(offsets[4]),
    enable: reader.readBool(offsets[5]),
    hsn: reader.readStringOrNull(offsets[6]),
    id: id,
    imageUrl: reader.readStringList(offsets[7]) ?? const [],
    lastSyncAt: reader.readDateTimeOrNull(offsets[8]),
    listPrice: reader.readDoubleOrNull(offsets[9]),
    productId: reader.readStringOrNull(offsets[10]),
    purchasePrice: reader.readDoubleOrNull(offsets[11]),
    salePrice: reader.readDoubleOrNull(offsets[12]),
    skuCode: reader.readStringOrNull(offsets[13]),
    storeId: reader.readLong(offsets[14]),
    syncState: reader.readLongOrNull(offsets[15]) ?? 100,
    tax: reader.readDoubleOrNull(offsets[16]),
    taxGroupId: reader.readStringOrNull(offsets[17]),
    uom: reader.readString(offsets[18]),
    updateTime: reader.readDateTimeOrNull(offsets[19]),
    version: reader.readLongOrNull(offsets[20]) ?? 1,
  );
  return object;
}

P _productEntityDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringList(offset) ?? []) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringList(offset) ?? const []) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset) ?? 100) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 20:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _productEntitySerializeWeb(
    IsarCollection<ProductEntity> collection, ProductEntity object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

ProductEntity _productEntityDeserializeWeb(
    IsarCollection<ProductEntity> collection, Object jsObj) {
  /*final object = ProductEntity(brand: IsarNative.jsObjectGet(jsObj, r'brand') ,createTime: IsarNative.jsObjectGet(jsObj, r'createTime') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'createTime') as int, isUtc: true).toLocal() : DateTime.fromMillisecondsSinceEpoch(0),description: IsarNative.jsObjectGet(jsObj, r'description') ,displayName: IsarNative.jsObjectGet(jsObj, r'displayName') ?? '',enable: IsarNative.jsObjectGet(jsObj, r'enable') ?? false,hsn: IsarNative.jsObjectGet(jsObj, r'hsn') ,id: IsarNative.jsObjectGet(jsObj, r'id') ,imageUrl: (IsarNative.jsObjectGet(jsObj, r'imageUrl') as List?)?.map((e) => e ?? '').toList().cast<String>() ?? [],lastSyncAt: IsarNative.jsObjectGet(jsObj, r'lastSyncAt') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'lastSyncAt') as int, isUtc: true).toLocal() : null,listPrice: IsarNative.jsObjectGet(jsObj, r'listPrice') ,productId: IsarNative.jsObjectGet(jsObj, r'productId') ,purchasePrice: IsarNative.jsObjectGet(jsObj, r'purchasePrice') ,salePrice: IsarNative.jsObjectGet(jsObj, r'salePrice') ,skuCode: IsarNative.jsObjectGet(jsObj, r'skuCode') ,storeId: IsarNative.jsObjectGet(jsObj, r'storeId') ?? (double.negativeInfinity as int),syncState: IsarNative.jsObjectGet(jsObj, r'syncState') ?? (double.negativeInfinity as int),tax: IsarNative.jsObjectGet(jsObj, r'tax') ,taxGroupId: IsarNative.jsObjectGet(jsObj, r'taxGroupId') ,uom: IsarNative.jsObjectGet(jsObj, r'uom') ?? '',updateTime: IsarNative.jsObjectGet(jsObj, r'updateTime') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'updateTime') as int, isUtc: true).toLocal() : null,version: IsarNative.jsObjectGet(jsObj, r'version') ?? (double.negativeInfinity as int),);*/
  //return object;
  throw UnimplementedError();
}

P _productEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _productEntityGetId(ProductEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _productEntityGetLinks(ProductEntity object) {
  return [];
}

void _productEntityAttach(
    IsarCollection<dynamic> col, Id id, ProductEntity object) {
  object.id = id;
}

extension ProductEntityByIndex on IsarCollection<ProductEntity> {
  Future<ProductEntity?> getByProductId(String? productId) {
    return getByIndex(r'productId', [productId]);
  }

  ProductEntity? getByProductIdSync(String? productId) {
    return getByIndexSync(r'productId', [productId]);
  }

  Future<bool> deleteByProductId(String? productId) {
    return deleteByIndex(r'productId', [productId]);
  }

  bool deleteByProductIdSync(String? productId) {
    return deleteByIndexSync(r'productId', [productId]);
  }

  Future<List<ProductEntity?>> getAllByProductId(
      List<String?> productIdValues) {
    final values = productIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'productId', values);
  }

  List<ProductEntity?> getAllByProductIdSync(List<String?> productIdValues) {
    final values = productIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'productId', values);
  }

  Future<int> deleteAllByProductId(List<String?> productIdValues) {
    final values = productIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'productId', values);
  }

  int deleteAllByProductIdSync(List<String?> productIdValues) {
    final values = productIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'productId', values);
  }

  Future<int> putByProductId(ProductEntity object) {
    return putByIndex(r'productId', object);
  }

  int putByProductIdSync(ProductEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'productId', object, saveLinks: saveLinks);
  }

  Future<List<int>> putAllByProductId(List<ProductEntity> objects) {
    return putAllByIndex(r'productId', objects);
  }

  List<int> putAllByProductIdSync(List<ProductEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'productId', objects, saveLinks: saveLinks);
  }
}

extension ProductEntityQueryWhereSort
    on QueryBuilder<ProductEntity, ProductEntity, QWhere> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhere> anyProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'productId'),
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhere>
      anyDescriptionWordsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'descriptionWords'),
      );
    });
  }
}

extension ProductEntityQueryWhere
    on QueryBuilder<ProductEntity, ProductEntity, QWhereClause> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idNotEqualTo(
      int id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'productId',
        value: [null],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'productId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdEqualTo(String? productId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'productId',
        value: [productId],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdNotEqualTo(String? productId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'productId',
              lower: [],
              upper: [productId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'productId',
              lower: [productId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'productId',
              lower: [productId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'productId',
              lower: [],
              upper: [productId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdGreaterThan(
    String? productId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'productId',
        lower: [productId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdLessThan(
    String? productId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'productId',
        lower: [],
        upper: [productId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdBetween(
    String? lowerProductId,
    String? upperProductId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'productId',
        lower: [lowerProductId],
        includeLower: includeLower,
        upper: [upperProductId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdStartsWith(String ProductIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'productId',
        lower: [ProductIdPrefix],
        upper: ['$ProductIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'productId',
        value: [''],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'productId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'productId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'productId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'productId',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsElementEqualTo(String descriptionWordsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'descriptionWords',
        value: [descriptionWordsElement],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsElementNotEqualTo(String descriptionWordsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'descriptionWords',
              lower: [],
              upper: [descriptionWordsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'descriptionWords',
              lower: [descriptionWordsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'descriptionWords',
              lower: [descriptionWordsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'descriptionWords',
              lower: [],
              upper: [descriptionWordsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsElementGreaterThan(
    String descriptionWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'descriptionWords',
        lower: [descriptionWordsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsElementLessThan(
    String descriptionWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'descriptionWords',
        lower: [],
        upper: [descriptionWordsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsElementBetween(
    String lowerDescriptionWordsElement,
    String upperDescriptionWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'descriptionWords',
        lower: [lowerDescriptionWordsElement],
        includeLower: includeLower,
        upper: [upperDescriptionWordsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsElementStartsWith(String DescriptionWordsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'descriptionWords',
        lower: [DescriptionWordsElementPrefix],
        upper: ['$DescriptionWordsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'descriptionWords',
        value: [''],
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'descriptionWords',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'descriptionWords',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'descriptionWords',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'descriptionWords',
              upper: [''],
            ));
      }
    });
  }
}

extension ProductEntityQueryFilter
    on QueryBuilder<ProductEntity, ProductEntity, QFilterCondition> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'brand',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'brand',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      createTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      createTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      createTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      createTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descriptionWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descriptionWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descriptionWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descriptionWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descriptionWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descriptionWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descriptionWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionWords',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descriptionWords',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'descriptionWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'descriptionWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'descriptionWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'descriptionWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'descriptionWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'descriptionWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'displayName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'displayName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'displayName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      enableEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enable',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hsn',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hsn',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hsn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hsn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hsn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hsn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hsn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hsn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hsn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsn',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hsn',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageUrl',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageUrl',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageUrl',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageUrl',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageUrl',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageUrl',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastSyncAt',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastSyncAt',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastSyncAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastSyncAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastSyncAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastSyncAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'listPrice',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'listPrice',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'purchasePrice',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'purchasePrice',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchasePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchasePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchasePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchasePrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'salePrice',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'salePrice',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salePrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'skuCode',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'skuCode',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'skuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'skuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'skuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'skuCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'skuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'skuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'skuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'skuCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'skuCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'skuCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      storeIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      storeIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      storeIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      storeIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      syncStateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      syncStateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      syncStateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      syncStateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncState',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tax',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tax',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> taxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> taxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> taxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxGroupId',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxGroupId',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taxGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taxGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxGroupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      uomGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      uomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      uomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uom',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      uomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uom',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      versionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProductEntityQueryObject
    on QueryBuilder<ProductEntity, ProductEntity, QFilterCondition> {}

extension ProductEntityQueryLinks
    on QueryBuilder<ProductEntity, ProductEntity, QFilterCondition> {}

extension ProductEntityQuerySortBy
    on QueryBuilder<ProductEntity, ProductEntity, QSortBy> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByDisplayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByDisplayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByEnable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enable', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByEnableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enable', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByHsn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hsn', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByHsnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hsn', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByLastSyncAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncAt', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByLastSyncAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncAt', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByListPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listPrice', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByListPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listPrice', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByPurchasePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasePrice', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByPurchasePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasePrice', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortBySalePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salePrice', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortBySalePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salePrice', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortBySkuCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skuCode', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortBySkuCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skuCode', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByStoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeId', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByStoreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeId', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortBySyncStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tax', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tax', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByTaxGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxGroupId', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByTaxGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxGroupId', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByUom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uom', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByUomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uom', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension ProductEntityQuerySortThenBy
    on QueryBuilder<ProductEntity, ProductEntity, QSortThenBy> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByDisplayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByDisplayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByEnable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enable', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByEnableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enable', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByHsn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hsn', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByHsnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hsn', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByLastSyncAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncAt', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByLastSyncAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncAt', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByListPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listPrice', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByListPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'listPrice', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByPurchasePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasePrice', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByPurchasePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasePrice', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenBySalePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salePrice', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenBySalePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salePrice', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenBySkuCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skuCode', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenBySkuCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skuCode', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByStoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeId', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByStoreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeId', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenBySyncStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tax', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tax', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByTaxGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxGroupId', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByTaxGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxGroupId', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByUom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uom', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByUomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uom', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension ProductEntityQueryWhereDistinct
    on QueryBuilder<ProductEntity, ProductEntity, QDistinct> {
  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createTime');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct>
      distinctByDescriptionWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descriptionWords');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByDisplayName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'displayName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByEnable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enable');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByHsn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hsn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByLastSyncAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastSyncAt');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByListPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listPrice');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByProductId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct>
      distinctByPurchasePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchasePrice');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctBySalePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salePrice');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctBySkuCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'skuCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByStoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeId');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncState');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tax');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByTaxGroupId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxGroupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByUom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateTime');
    });
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension ProductEntityQueryProperty
    on QueryBuilder<ProductEntity, ProductEntity, QQueryProperty> {
  QueryBuilder<ProductEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<ProductEntity, DateTime, QQueryOperations> createTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createTime');
    });
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ProductEntity, List<String>, QQueryOperations>
      descriptionWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descriptionWords');
    });
  }

  QueryBuilder<ProductEntity, String, QQueryOperations> displayNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'displayName');
    });
  }

  QueryBuilder<ProductEntity, bool, QQueryOperations> enableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enable');
    });
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> hsnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hsn');
    });
  }

  QueryBuilder<ProductEntity, List<String>, QQueryOperations>
      imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<ProductEntity, DateTime?, QQueryOperations>
      lastSyncAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastSyncAt');
    });
  }

  QueryBuilder<ProductEntity, double?, QQueryOperations> listPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listPrice');
    });
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<ProductEntity, double?, QQueryOperations>
      purchasePriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchasePrice');
    });
  }

  QueryBuilder<ProductEntity, double?, QQueryOperations> salePriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salePrice');
    });
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> skuCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'skuCode');
    });
  }

  QueryBuilder<ProductEntity, int, QQueryOperations> storeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeId');
    });
  }

  QueryBuilder<ProductEntity, int, QQueryOperations> syncStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncState');
    });
  }

  QueryBuilder<ProductEntity, double?, QQueryOperations> taxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tax');
    });
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> taxGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxGroupId');
    });
  }

  QueryBuilder<ProductEntity, String, QQueryOperations> uomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uom');
    });
  }

  QueryBuilder<ProductEntity, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateTime');
    });
  }

  QueryBuilder<ProductEntity, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
