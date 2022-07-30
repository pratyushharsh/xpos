// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetProductEntityCollection on Isar {
  IsarCollection<ProductEntity> get productEntitys => getCollection();
}

const ProductEntitySchema = CollectionSchema(
  name: 'ProductEntity',
  schema:
      '{"name":"ProductEntity","idName":"id","properties":[{"name":"brand","type":"String"},{"name":"createTime","type":"Long"},{"name":"description","type":"String"},{"name":"descriptionWords","type":"StringList"},{"name":"displayName","type":"String"},{"name":"enable","type":"Bool"},{"name":"hsn","type":"String"},{"name":"imageUrl","type":"StringList"},{"name":"lastSyncAt","type":"Long"},{"name":"listPrice","type":"Double"},{"name":"productId","type":"String"},{"name":"purchasePrice","type":"Double"},{"name":"salePrice","type":"Double"},{"name":"skuCode","type":"String"},{"name":"storeId","type":"Long"},{"name":"syncState","type":"Long"},{"name":"tax","type":"Double"},{"name":"taxGroupId","type":"String"},{"name":"uom","type":"String"},{"name":"updateTime","type":"Long"},{"name":"version","type":"Long"}],"indexes":[{"name":"descriptionWords","unique":false,"properties":[{"name":"descriptionWords","type":"Value","caseSensitive":false}]},{"name":"productId","unique":true,"properties":[{"name":"productId","type":"Value","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'brand': 0,
    'createTime': 1,
    'description': 2,
    'descriptionWords': 3,
    'displayName': 4,
    'enable': 5,
    'hsn': 6,
    'imageUrl': 7,
    'lastSyncAt': 8,
    'listPrice': 9,
    'productId': 10,
    'purchasePrice': 11,
    'salePrice': 12,
    'skuCode': 13,
    'storeId': 14,
    'syncState': 15,
    'tax': 16,
    'taxGroupId': 17,
    'uom': 18,
    'updateTime': 19,
    'version': 20
  },
  listProperties: {'descriptionWords', 'imageUrl'},
  indexIds: {'descriptionWords': 0, 'productId': 1},
  indexValueTypes: {
    'descriptionWords': [
      IndexValueType.stringCIS,
    ],
    'productId': [
      IndexValueType.string,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _productEntityGetId,
  setId: _productEntitySetId,
  getLinks: _productEntityGetLinks,
  attachLinks: _productEntityAttachLinks,
  serializeNative: _productEntitySerializeNative,
  deserializeNative: _productEntityDeserializeNative,
  deserializePropNative: _productEntityDeserializePropNative,
  serializeWeb: _productEntitySerializeWeb,
  deserializeWeb: _productEntityDeserializeWeb,
  deserializePropWeb: _productEntityDeserializePropWeb,
  version: 3,
);

int? _productEntityGetId(ProductEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _productEntitySetId(ProductEntity object, int id) {
  object.id = id;
}

List<IsarLinkBase> _productEntityGetLinks(ProductEntity object) {
  return [];
}

void _productEntitySerializeNative(
    IsarCollection<ProductEntity> collection,
    IsarRawObject rawObj,
    ProductEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.brand;
  IsarUint8List? _brand;
  if (value0 != null) {
    _brand = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_brand?.length ?? 0) as int;
  final value1 = object.createTime;
  final _createTime = value1;
  final value2 = object.description;
  IsarUint8List? _description;
  if (value2 != null) {
    _description = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_description?.length ?? 0) as int;
  final value3 = object.descriptionWords;
  dynamicSize += (value3.length) * 8;
  final bytesList3 = <IsarUint8List>[];
  for (var str in value3) {
    final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
    bytesList3.add(bytes);
    dynamicSize += bytes.length as int;
  }
  final _descriptionWords = bytesList3;
  final value4 = object.displayName;
  final _displayName = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_displayName.length) as int;
  final value5 = object.enable;
  final _enable = value5;
  final value6 = object.hsn;
  IsarUint8List? _hsn;
  if (value6 != null) {
    _hsn = IsarBinaryWriter.utf8Encoder.convert(value6);
  }
  dynamicSize += (_hsn?.length ?? 0) as int;
  final value7 = object.imageUrl;
  dynamicSize += (value7.length) * 8;
  final bytesList7 = <IsarUint8List>[];
  for (var str in value7) {
    final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
    bytesList7.add(bytes);
    dynamicSize += bytes.length as int;
  }
  final _imageUrl = bytesList7;
  final value8 = object.lastSyncAt;
  final _lastSyncAt = value8;
  final value9 = object.listPrice;
  final _listPrice = value9;
  final value10 = object.productId;
  IsarUint8List? _productId;
  if (value10 != null) {
    _productId = IsarBinaryWriter.utf8Encoder.convert(value10);
  }
  dynamicSize += (_productId?.length ?? 0) as int;
  final value11 = object.purchasePrice;
  final _purchasePrice = value11;
  final value12 = object.salePrice;
  final _salePrice = value12;
  final value13 = object.skuCode;
  IsarUint8List? _skuCode;
  if (value13 != null) {
    _skuCode = IsarBinaryWriter.utf8Encoder.convert(value13);
  }
  dynamicSize += (_skuCode?.length ?? 0) as int;
  final value14 = object.storeId;
  final _storeId = value14;
  final value15 = object.syncState;
  final _syncState = value15;
  final value16 = object.tax;
  final _tax = value16;
  final value17 = object.taxGroupId;
  IsarUint8List? _taxGroupId;
  if (value17 != null) {
    _taxGroupId = IsarBinaryWriter.utf8Encoder.convert(value17);
  }
  dynamicSize += (_taxGroupId?.length ?? 0) as int;
  final value18 = object.uom;
  final _uom = IsarBinaryWriter.utf8Encoder.convert(value18);
  dynamicSize += (_uom.length) as int;
  final value19 = object.updateTime;
  final _updateTime = value19;
  final value20 = object.version;
  final _version = value20;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _brand);
  writer.writeDateTime(offsets[1], _createTime);
  writer.writeBytes(offsets[2], _description);
  writer.writeStringList(offsets[3], _descriptionWords);
  writer.writeBytes(offsets[4], _displayName);
  writer.writeBool(offsets[5], _enable);
  writer.writeBytes(offsets[6], _hsn);
  writer.writeStringList(offsets[7], _imageUrl);
  writer.writeDateTime(offsets[8], _lastSyncAt);
  writer.writeDouble(offsets[9], _listPrice);
  writer.writeBytes(offsets[10], _productId);
  writer.writeDouble(offsets[11], _purchasePrice);
  writer.writeDouble(offsets[12], _salePrice);
  writer.writeBytes(offsets[13], _skuCode);
  writer.writeLong(offsets[14], _storeId);
  writer.writeLong(offsets[15], _syncState);
  writer.writeDouble(offsets[16], _tax);
  writer.writeBytes(offsets[17], _taxGroupId);
  writer.writeBytes(offsets[18], _uom);
  writer.writeDateTime(offsets[19], _updateTime);
  writer.writeLong(offsets[20], _version);
}

ProductEntity _productEntityDeserializeNative(
    IsarCollection<ProductEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = ProductEntity(
    brand: reader.readStringOrNull(offsets[0]),
    createTime: reader.readDateTime(offsets[1]),
    description: reader.readStringOrNull(offsets[2]),
    displayName: reader.readString(offsets[4]),
    enable: reader.readBool(offsets[5]),
    hsn: reader.readStringOrNull(offsets[6]),
    id: id,
    imageUrl: reader.readStringList(offsets[7]) ?? [],
    lastSyncAt: reader.readDateTimeOrNull(offsets[8]),
    listPrice: reader.readDoubleOrNull(offsets[9]),
    productId: reader.readStringOrNull(offsets[10]),
    purchasePrice: reader.readDoubleOrNull(offsets[11]),
    salePrice: reader.readDoubleOrNull(offsets[12]),
    skuCode: reader.readStringOrNull(offsets[13]),
    storeId: reader.readLong(offsets[14]),
    syncState: reader.readLong(offsets[15]),
    tax: reader.readDoubleOrNull(offsets[16]),
    taxGroupId: reader.readStringOrNull(offsets[17]),
    uom: reader.readString(offsets[18]),
    updateTime: reader.readDateTimeOrNull(offsets[19]),
    version: reader.readLong(offsets[20]),
  );
  return object;
}

P _productEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
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
      return (reader.readStringList(offset) ?? []) as P;
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
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 20:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _productEntitySerializeWeb(
    IsarCollection<ProductEntity> collection, ProductEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'brand', object.brand);
  IsarNative.jsObjectSet(
      jsObj, 'createTime', object.createTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'descriptionWords', object.descriptionWords);
  IsarNative.jsObjectSet(jsObj, 'displayName', object.displayName);
  IsarNative.jsObjectSet(jsObj, 'enable', object.enable);
  IsarNative.jsObjectSet(jsObj, 'hsn', object.hsn);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'imageUrl', object.imageUrl);
  IsarNative.jsObjectSet(
      jsObj, 'lastSyncAt', object.lastSyncAt?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'listPrice', object.listPrice);
  IsarNative.jsObjectSet(jsObj, 'productId', object.productId);
  IsarNative.jsObjectSet(jsObj, 'purchasePrice', object.purchasePrice);
  IsarNative.jsObjectSet(jsObj, 'salePrice', object.salePrice);
  IsarNative.jsObjectSet(jsObj, 'skuCode', object.skuCode);
  IsarNative.jsObjectSet(jsObj, 'storeId', object.storeId);
  IsarNative.jsObjectSet(jsObj, 'syncState', object.syncState);
  IsarNative.jsObjectSet(jsObj, 'tax', object.tax);
  IsarNative.jsObjectSet(jsObj, 'taxGroupId', object.taxGroupId);
  IsarNative.jsObjectSet(jsObj, 'uom', object.uom);
  IsarNative.jsObjectSet(
      jsObj, 'updateTime', object.updateTime?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'version', object.version);
  return jsObj;
}

ProductEntity _productEntityDeserializeWeb(
    IsarCollection<ProductEntity> collection, dynamic jsObj) {
  final object = ProductEntity(
    brand: IsarNative.jsObjectGet(jsObj, 'brand'),
    createTime: IsarNative.jsObjectGet(jsObj, 'createTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'createTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    description: IsarNative.jsObjectGet(jsObj, 'description'),
    displayName: IsarNative.jsObjectGet(jsObj, 'displayName') ?? '',
    enable: IsarNative.jsObjectGet(jsObj, 'enable') ?? false,
    hsn: IsarNative.jsObjectGet(jsObj, 'hsn'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    imageUrl: (IsarNative.jsObjectGet(jsObj, 'imageUrl') as List?)
            ?.map((e) => e ?? '')
            .toList()
            .cast<String>() ??
        [],
    lastSyncAt: IsarNative.jsObjectGet(jsObj, 'lastSyncAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'lastSyncAt'),
                isUtc: true)
            .toLocal()
        : null,
    listPrice: IsarNative.jsObjectGet(jsObj, 'listPrice'),
    productId: IsarNative.jsObjectGet(jsObj, 'productId'),
    purchasePrice: IsarNative.jsObjectGet(jsObj, 'purchasePrice'),
    salePrice: IsarNative.jsObjectGet(jsObj, 'salePrice'),
    skuCode: IsarNative.jsObjectGet(jsObj, 'skuCode'),
    storeId:
        IsarNative.jsObjectGet(jsObj, 'storeId') ?? double.negativeInfinity,
    syncState:
        IsarNative.jsObjectGet(jsObj, 'syncState') ?? double.negativeInfinity,
    tax: IsarNative.jsObjectGet(jsObj, 'tax'),
    taxGroupId: IsarNative.jsObjectGet(jsObj, 'taxGroupId'),
    uom: IsarNative.jsObjectGet(jsObj, 'uom') ?? '',
    updateTime: IsarNative.jsObjectGet(jsObj, 'updateTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'updateTime'),
                isUtc: true)
            .toLocal()
        : null,
    version:
        IsarNative.jsObjectGet(jsObj, 'version') ?? double.negativeInfinity,
  );
  return object;
}

P _productEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'brand':
      return (IsarNative.jsObjectGet(jsObj, 'brand')) as P;
    case 'createTime':
      return (IsarNative.jsObjectGet(jsObj, 'createTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
    case 'descriptionWords':
      return ((IsarNative.jsObjectGet(jsObj, 'descriptionWords') as List?)
              ?.map((e) => e ?? '')
              .toList()
              .cast<String>() ??
          []) as P;
    case 'displayName':
      return (IsarNative.jsObjectGet(jsObj, 'displayName') ?? '') as P;
    case 'enable':
      return (IsarNative.jsObjectGet(jsObj, 'enable') ?? false) as P;
    case 'hsn':
      return (IsarNative.jsObjectGet(jsObj, 'hsn')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'imageUrl':
      return ((IsarNative.jsObjectGet(jsObj, 'imageUrl') as List?)
              ?.map((e) => e ?? '')
              .toList()
              .cast<String>() ??
          []) as P;
    case 'lastSyncAt':
      return (IsarNative.jsObjectGet(jsObj, 'lastSyncAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'lastSyncAt'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'listPrice':
      return (IsarNative.jsObjectGet(jsObj, 'listPrice')) as P;
    case 'productId':
      return (IsarNative.jsObjectGet(jsObj, 'productId')) as P;
    case 'purchasePrice':
      return (IsarNative.jsObjectGet(jsObj, 'purchasePrice')) as P;
    case 'salePrice':
      return (IsarNative.jsObjectGet(jsObj, 'salePrice')) as P;
    case 'skuCode':
      return (IsarNative.jsObjectGet(jsObj, 'skuCode')) as P;
    case 'storeId':
      return (IsarNative.jsObjectGet(jsObj, 'storeId') ??
          double.negativeInfinity) as P;
    case 'syncState':
      return (IsarNative.jsObjectGet(jsObj, 'syncState') ??
          double.negativeInfinity) as P;
    case 'tax':
      return (IsarNative.jsObjectGet(jsObj, 'tax')) as P;
    case 'taxGroupId':
      return (IsarNative.jsObjectGet(jsObj, 'taxGroupId')) as P;
    case 'uom':
      return (IsarNative.jsObjectGet(jsObj, 'uom') ?? '') as P;
    case 'updateTime':
      return (IsarNative.jsObjectGet(jsObj, 'updateTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updateTime'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'version':
      return (IsarNative.jsObjectGet(jsObj, 'version') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _productEntityAttachLinks(
    IsarCollection col, int id, ProductEntity object) {}

extension ProductEntityByIndex on IsarCollection<ProductEntity> {
  Future<ProductEntity?> getByProductId(String? productId) {
    return getByIndex('productId', [productId]);
  }

  ProductEntity? getByProductIdSync(String? productId) {
    return getByIndexSync('productId', [productId]);
  }

  Future<bool> deleteByProductId(String? productId) {
    return deleteByIndex('productId', [productId]);
  }

  bool deleteByProductIdSync(String? productId) {
    return deleteByIndexSync('productId', [productId]);
  }

  Future<List<ProductEntity?>> getAllByProductId(
      List<String?> productIdValues) {
    final values = productIdValues.map((e) => [e]).toList();
    return getAllByIndex('productId', values);
  }

  List<ProductEntity?> getAllByProductIdSync(List<String?> productIdValues) {
    final values = productIdValues.map((e) => [e]).toList();
    return getAllByIndexSync('productId', values);
  }

  Future<int> deleteAllByProductId(List<String?> productIdValues) {
    final values = productIdValues.map((e) => [e]).toList();
    return deleteAllByIndex('productId', values);
  }

  int deleteAllByProductIdSync(List<String?> productIdValues) {
    final values = productIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('productId', values);
  }
}

extension ProductEntityQueryWhereSort
    on QueryBuilder<ProductEntity, ProductEntity, QWhere> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhere>
      anyDescriptionWordsAny() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'descriptionWords'));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhere> anyProductId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'productId'));
  }
}

extension ProductEntityQueryWhere
    on QueryBuilder<ProductEntity, ProductEntity, QWhereClause> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idNotEqualTo(
      int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsAnyEqualTo(String descriptionWordsElement) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'descriptionWords',
      value: [descriptionWordsElement],
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsAnyNotEqualTo(String descriptionWordsElement) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'descriptionWords',
        upper: [descriptionWordsElement],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'descriptionWords',
        lower: [descriptionWordsElement],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'descriptionWords',
        lower: [descriptionWordsElement],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'descriptionWords',
        upper: [descriptionWordsElement],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsAnyGreaterThan(
    String descriptionWordsElement, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'descriptionWords',
      lower: [descriptionWordsElement],
      includeLower: include,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsAnyLessThan(
    String descriptionWordsElement, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'descriptionWords',
      upper: [descriptionWordsElement],
      includeUpper: include,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsAnyBetween(
    String lowerDescriptionWordsElement,
    String upperDescriptionWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'descriptionWords',
      lower: [lowerDescriptionWordsElement],
      includeLower: includeLower,
      upper: [upperDescriptionWordsElement],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      descriptionWordsAnyStartsWith(String DescriptionWordsElementPrefix) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'descriptionWords',
      lower: [DescriptionWordsElementPrefix],
      includeLower: true,
      upper: ['$DescriptionWordsElementPrefix\u{FFFFF}'],
      includeUpper: true,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdEqualTo(String? productId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'productId',
      value: [productId],
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdNotEqualTo(String? productId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'productId',
        upper: [productId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'productId',
        lower: [productId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'productId',
        lower: [productId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'productId',
        upper: [productId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'productId',
      value: [null],
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'productId',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdGreaterThan(
    String? productId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'productId',
      lower: [productId],
      includeLower: include,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdLessThan(
    String? productId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'productId',
      upper: [productId],
      includeUpper: include,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdBetween(
    String? lowerProductId,
    String? upperProductId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'productId',
      lower: [lowerProductId],
      includeLower: includeLower,
      upper: [upperProductId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterWhereClause>
      productIdStartsWith(String? ProductIdPrefix) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'productId',
      lower: [ProductIdPrefix],
      includeLower: true,
      upper: ['$ProductIdPrefix\u{FFFFF}'],
      includeUpper: true,
    ));
  }
}

extension ProductEntityQueryFilter
    on QueryBuilder<ProductEntity, ProductEntity, QFilterCondition> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'brand',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'brand',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'brand',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'brand',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'brand',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'brand',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'brand',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'brand',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      brandMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'brand',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      createTimeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      createTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      createTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      createTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsAnyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'descriptionWords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsAnyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'descriptionWords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsAnyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'descriptionWords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsAnyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'descriptionWords',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'descriptionWords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'descriptionWords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsAnyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'descriptionWords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      descriptionWordsAnyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'descriptionWords',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'displayName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      displayNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'displayName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      enableEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'enable',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'hsn',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hsn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hsn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hsn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hsn',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      hsnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'hsn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'hsn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'hsn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> hsnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'hsn',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlAnyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlAnyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlAnyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlAnyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'imageUrl',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlAnyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      imageUrlAnyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'imageUrl',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastSyncAt',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      lastSyncAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastSyncAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'listPrice',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'listPrice',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'listPrice',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      listPriceBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'listPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'productId',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      productIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'purchasePrice',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'purchasePrice',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'purchasePrice',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      purchasePriceBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'purchasePrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'salePrice',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'salePrice',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'salePrice',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      salePriceBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'salePrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'skuCode',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'skuCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'skuCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'skuCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'skuCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'skuCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'skuCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'skuCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      skuCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'skuCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      storeIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeId',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      storeIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeId',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      storeIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeId',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      storeIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      syncStateEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncState',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      syncStateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'syncState',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      syncStateLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'syncState',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      syncStateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'syncState',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'tax',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'tax',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> taxLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'tax',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> taxBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tax',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'taxGroupId',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxGroupId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      taxGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'taxGroupId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      uomGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'uom',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      uomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition> uomMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'uom',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'updateTime',
      value: null,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      updateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      versionEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      versionLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterFilterCondition>
      versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'version',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ProductEntityQueryLinks
    on QueryBuilder<ProductEntity, ProductEntity, QFilterCondition> {}

extension ProductEntityQueryWhereSortBy
    on QueryBuilder<ProductEntity, ProductEntity, QSortBy> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByBrand() {
    return addSortByInternal('brand', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByBrandDesc() {
    return addSortByInternal('brand', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByCreateTime() {
    return addSortByInternal('createTime', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return addSortByInternal('createTime', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByDisplayName() {
    return addSortByInternal('displayName', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByDisplayNameDesc() {
    return addSortByInternal('displayName', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByEnable() {
    return addSortByInternal('enable', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByEnableDesc() {
    return addSortByInternal('enable', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByHsn() {
    return addSortByInternal('hsn', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByHsnDesc() {
    return addSortByInternal('hsn', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByLastSyncAt() {
    return addSortByInternal('lastSyncAt', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByLastSyncAtDesc() {
    return addSortByInternal('lastSyncAt', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByListPrice() {
    return addSortByInternal('listPrice', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByListPriceDesc() {
    return addSortByInternal('listPrice', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByPurchasePrice() {
    return addSortByInternal('purchasePrice', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByPurchasePriceDesc() {
    return addSortByInternal('purchasePrice', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortBySalePrice() {
    return addSortByInternal('salePrice', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortBySalePriceDesc() {
    return addSortByInternal('salePrice', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortBySkuCode() {
    return addSortByInternal('skuCode', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortBySkuCodeDesc() {
    return addSortByInternal('skuCode', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortBySyncState() {
    return addSortByInternal('syncState', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortBySyncStateDesc() {
    return addSortByInternal('syncState', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByTax() {
    return addSortByInternal('tax', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByTaxDesc() {
    return addSortByInternal('tax', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByTaxGroupId() {
    return addSortByInternal('taxGroupId', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByTaxGroupIdDesc() {
    return addSortByInternal('taxGroupId', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByUom() {
    return addSortByInternal('uom', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByUomDesc() {
    return addSortByInternal('uom', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByVersion() {
    return addSortByInternal('version', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> sortByVersionDesc() {
    return addSortByInternal('version', Sort.desc);
  }
}

extension ProductEntityQueryWhereSortThenBy
    on QueryBuilder<ProductEntity, ProductEntity, QSortThenBy> {
  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByBrand() {
    return addSortByInternal('brand', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByBrandDesc() {
    return addSortByInternal('brand', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByCreateTime() {
    return addSortByInternal('createTime', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return addSortByInternal('createTime', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByDisplayName() {
    return addSortByInternal('displayName', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByDisplayNameDesc() {
    return addSortByInternal('displayName', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByEnable() {
    return addSortByInternal('enable', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByEnableDesc() {
    return addSortByInternal('enable', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByHsn() {
    return addSortByInternal('hsn', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByHsnDesc() {
    return addSortByInternal('hsn', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByLastSyncAt() {
    return addSortByInternal('lastSyncAt', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByLastSyncAtDesc() {
    return addSortByInternal('lastSyncAt', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByListPrice() {
    return addSortByInternal('listPrice', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByListPriceDesc() {
    return addSortByInternal('listPrice', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByPurchasePrice() {
    return addSortByInternal('purchasePrice', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByPurchasePriceDesc() {
    return addSortByInternal('purchasePrice', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenBySalePrice() {
    return addSortByInternal('salePrice', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenBySalePriceDesc() {
    return addSortByInternal('salePrice', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenBySkuCode() {
    return addSortByInternal('skuCode', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenBySkuCodeDesc() {
    return addSortByInternal('skuCode', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenBySyncState() {
    return addSortByInternal('syncState', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenBySyncStateDesc() {
    return addSortByInternal('syncState', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByTax() {
    return addSortByInternal('tax', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByTaxDesc() {
    return addSortByInternal('tax', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByTaxGroupId() {
    return addSortByInternal('taxGroupId', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByTaxGroupIdDesc() {
    return addSortByInternal('taxGroupId', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByUom() {
    return addSortByInternal('uom', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByUomDesc() {
    return addSortByInternal('uom', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByVersion() {
    return addSortByInternal('version', Sort.asc);
  }

  QueryBuilder<ProductEntity, ProductEntity, QAfterSortBy> thenByVersionDesc() {
    return addSortByInternal('version', Sort.desc);
  }
}

extension ProductEntityQueryWhereDistinct
    on QueryBuilder<ProductEntity, ProductEntity, QDistinct> {
  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByBrand(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('brand', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByCreateTime() {
    return addDistinctByInternal('createTime');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByDisplayName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('displayName', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByEnable() {
    return addDistinctByInternal('enable');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByHsn(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('hsn', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByLastSyncAt() {
    return addDistinctByInternal('lastSyncAt');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByListPrice() {
    return addDistinctByInternal('listPrice');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByProductId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('productId', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct>
      distinctByPurchasePrice() {
    return addDistinctByInternal('purchasePrice');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctBySalePrice() {
    return addDistinctByInternal('salePrice');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctBySkuCode(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('skuCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByStoreId() {
    return addDistinctByInternal('storeId');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctBySyncState() {
    return addDistinctByInternal('syncState');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByTax() {
    return addDistinctByInternal('tax');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByTaxGroupId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('taxGroupId', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByUom(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('uom', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByUpdateTime() {
    return addDistinctByInternal('updateTime');
  }

  QueryBuilder<ProductEntity, ProductEntity, QDistinct> distinctByVersion() {
    return addDistinctByInternal('version');
  }
}

extension ProductEntityQueryProperty
    on QueryBuilder<ProductEntity, ProductEntity, QQueryProperty> {
  QueryBuilder<ProductEntity, String?, QQueryOperations> brandProperty() {
    return addPropertyNameInternal('brand');
  }

  QueryBuilder<ProductEntity, DateTime, QQueryOperations> createTimeProperty() {
    return addPropertyNameInternal('createTime');
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<ProductEntity, List<String>, QQueryOperations>
      descriptionWordsProperty() {
    return addPropertyNameInternal('descriptionWords');
  }

  QueryBuilder<ProductEntity, String, QQueryOperations> displayNameProperty() {
    return addPropertyNameInternal('displayName');
  }

  QueryBuilder<ProductEntity, bool, QQueryOperations> enableProperty() {
    return addPropertyNameInternal('enable');
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> hsnProperty() {
    return addPropertyNameInternal('hsn');
  }

  QueryBuilder<ProductEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ProductEntity, List<String>, QQueryOperations>
      imageUrlProperty() {
    return addPropertyNameInternal('imageUrl');
  }

  QueryBuilder<ProductEntity, DateTime?, QQueryOperations>
      lastSyncAtProperty() {
    return addPropertyNameInternal('lastSyncAt');
  }

  QueryBuilder<ProductEntity, double?, QQueryOperations> listPriceProperty() {
    return addPropertyNameInternal('listPrice');
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> productIdProperty() {
    return addPropertyNameInternal('productId');
  }

  QueryBuilder<ProductEntity, double?, QQueryOperations>
      purchasePriceProperty() {
    return addPropertyNameInternal('purchasePrice');
  }

  QueryBuilder<ProductEntity, double?, QQueryOperations> salePriceProperty() {
    return addPropertyNameInternal('salePrice');
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> skuCodeProperty() {
    return addPropertyNameInternal('skuCode');
  }

  QueryBuilder<ProductEntity, int, QQueryOperations> storeIdProperty() {
    return addPropertyNameInternal('storeId');
  }

  QueryBuilder<ProductEntity, int, QQueryOperations> syncStateProperty() {
    return addPropertyNameInternal('syncState');
  }

  QueryBuilder<ProductEntity, double?, QQueryOperations> taxProperty() {
    return addPropertyNameInternal('tax');
  }

  QueryBuilder<ProductEntity, String?, QQueryOperations> taxGroupIdProperty() {
    return addPropertyNameInternal('taxGroupId');
  }

  QueryBuilder<ProductEntity, String, QQueryOperations> uomProperty() {
    return addPropertyNameInternal('uom');
  }

  QueryBuilder<ProductEntity, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return addPropertyNameInternal('updateTime');
  }

  QueryBuilder<ProductEntity, int, QQueryOperations> versionProperty() {
    return addPropertyNameInternal('version');
  }
}
