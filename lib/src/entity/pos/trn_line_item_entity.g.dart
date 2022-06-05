// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trn_line_item_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTransactionLineItemEntityCollection on Isar {
  IsarCollection<TransactionLineItemEntity> get transactionLineItemEntitys =>
      getCollection();
}

const TransactionLineItemEntitySchema = CollectionSchema(
  name: 'TransactionLineItemEntity',
  schema:
      '{"name":"TransactionLineItemEntity","idName":"id","properties":[{"name":"amount","type":"Double"},{"name":"brand","type":"String"},{"name":"hsn","type":"String"},{"name":"itemDiscount","type":"Double"},{"name":"itemId","type":"String"},{"name":"listPrice","type":"Double"},{"name":"orderDiscount","type":"Double"},{"name":"productDescription","type":"String"},{"name":"productId","type":"String"},{"name":"qty","type":"Double"},{"name":"salePrice","type":"Double"},{"name":"shipmentId","type":"String"},{"name":"taxAmount","type":"Double"},{"name":"taxClass","type":"String"},{"name":"taxRate","type":"Double"},{"name":"transId","type":"Long"},{"name":"transSeq","type":"Long"},{"name":"uom","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'amount': 0,
    'brand': 1,
    'hsn': 2,
    'itemDiscount': 3,
    'itemId': 4,
    'listPrice': 5,
    'orderDiscount': 6,
    'productDescription': 7,
    'productId': 8,
    'qty': 9,
    'salePrice': 10,
    'shipmentId': 11,
    'taxAmount': 12,
    'taxClass': 13,
    'taxRate': 14,
    'transId': 15,
    'transSeq': 16,
    'uom': 17
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'header': 0},
  backlinkLinkNames: {'header': 'lineItems'},
  getId: _transactionLineItemEntityGetId,
  getLinks: _transactionLineItemEntityGetLinks,
  attachLinks: _transactionLineItemEntityAttachLinks,
  serializeNative: _transactionLineItemEntitySerializeNative,
  deserializeNative: _transactionLineItemEntityDeserializeNative,
  deserializePropNative: _transactionLineItemEntityDeserializePropNative,
  serializeWeb: _transactionLineItemEntitySerializeWeb,
  deserializeWeb: _transactionLineItemEntityDeserializeWeb,
  deserializePropWeb: _transactionLineItemEntityDeserializePropWeb,
  version: 3,
);

int? _transactionLineItemEntityGetId(TransactionLineItemEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _transactionLineItemEntityGetLinks(
    TransactionLineItemEntity object) {
  return [object.header];
}

void _transactionLineItemEntitySerializeNative(
    IsarCollection<TransactionLineItemEntity> collection,
    IsarRawObject rawObj,
    TransactionLineItemEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.amount;
  final _amount = value0;
  final value1 = object.brand;
  IsarUint8List? _brand;
  if (value1 != null) {
    _brand = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_brand?.length ?? 0) as int;
  final value2 = object.hsn;
  IsarUint8List? _hsn;
  if (value2 != null) {
    _hsn = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_hsn?.length ?? 0) as int;
  final value3 = object.itemDiscount;
  final _itemDiscount = value3;
  final value4 = object.itemId;
  IsarUint8List? _itemId;
  if (value4 != null) {
    _itemId = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_itemId?.length ?? 0) as int;
  final value5 = object.listPrice;
  final _listPrice = value5;
  final value6 = object.orderDiscount;
  final _orderDiscount = value6;
  final value7 = object.productDescription;
  final _productDescription = IsarBinaryWriter.utf8Encoder.convert(value7);
  dynamicSize += (_productDescription.length) as int;
  final value8 = object.productId;
  final _productId = IsarBinaryWriter.utf8Encoder.convert(value8);
  dynamicSize += (_productId.length) as int;
  final value9 = object.qty;
  final _qty = value9;
  final value10 = object.salePrice;
  final _salePrice = value10;
  final value11 = object.shipmentId;
  IsarUint8List? _shipmentId;
  if (value11 != null) {
    _shipmentId = IsarBinaryWriter.utf8Encoder.convert(value11);
  }
  dynamicSize += (_shipmentId?.length ?? 0) as int;
  final value12 = object.taxAmount;
  final _taxAmount = value12;
  final value13 = object.taxClass;
  final _taxClass = IsarBinaryWriter.utf8Encoder.convert(value13);
  dynamicSize += (_taxClass.length) as int;
  final value14 = object.taxRate;
  final _taxRate = value14;
  final value15 = object.transId;
  final _transId = value15;
  final value16 = object.transSeq;
  final _transSeq = value16;
  final value17 = object.uom;
  final _uom = IsarBinaryWriter.utf8Encoder.convert(value17);
  dynamicSize += (_uom.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _amount);
  writer.writeBytes(offsets[1], _brand);
  writer.writeBytes(offsets[2], _hsn);
  writer.writeDouble(offsets[3], _itemDiscount);
  writer.writeBytes(offsets[4], _itemId);
  writer.writeDouble(offsets[5], _listPrice);
  writer.writeDouble(offsets[6], _orderDiscount);
  writer.writeBytes(offsets[7], _productDescription);
  writer.writeBytes(offsets[8], _productId);
  writer.writeDouble(offsets[9], _qty);
  writer.writeDouble(offsets[10], _salePrice);
  writer.writeBytes(offsets[11], _shipmentId);
  writer.writeDouble(offsets[12], _taxAmount);
  writer.writeBytes(offsets[13], _taxClass);
  writer.writeDouble(offsets[14], _taxRate);
  writer.writeLong(offsets[15], _transId);
  writer.writeLong(offsets[16], _transSeq);
  writer.writeBytes(offsets[17], _uom);
}

TransactionLineItemEntity _transactionLineItemEntityDeserializeNative(
    IsarCollection<TransactionLineItemEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = TransactionLineItemEntity(
    amount: reader.readDouble(offsets[0]),
    brand: reader.readStringOrNull(offsets[1]),
    hsn: reader.readStringOrNull(offsets[2]),
    id: id,
    itemDiscount: reader.readDouble(offsets[3]),
    itemId: reader.readStringOrNull(offsets[4]),
    listPrice: reader.readDouble(offsets[5]),
    orderDiscount: reader.readDouble(offsets[6]),
    productDescription: reader.readString(offsets[7]),
    productId: reader.readString(offsets[8]),
    qty: reader.readDouble(offsets[9]),
    salePrice: reader.readDouble(offsets[10]),
    shipmentId: reader.readStringOrNull(offsets[11]),
    taxAmount: reader.readDouble(offsets[12]),
    taxClass: reader.readString(offsets[13]),
    taxRate: reader.readDouble(offsets[14]),
    transId: reader.readLongOrNull(offsets[15]),
    transSeq: reader.readLong(offsets[16]),
    uom: reader.readString(offsets[17]),
  );
  _transactionLineItemEntityAttachLinks(collection, id, object);
  return object;
}

P _transactionLineItemEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readDouble(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _transactionLineItemEntitySerializeWeb(
    IsarCollection<TransactionLineItemEntity> collection,
    TransactionLineItemEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'brand', object.brand);
  IsarNative.jsObjectSet(jsObj, 'hsn', object.hsn);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'itemDiscount', object.itemDiscount);
  IsarNative.jsObjectSet(jsObj, 'itemId', object.itemId);
  IsarNative.jsObjectSet(jsObj, 'listPrice', object.listPrice);
  IsarNative.jsObjectSet(jsObj, 'orderDiscount', object.orderDiscount);
  IsarNative.jsObjectSet(
      jsObj, 'productDescription', object.productDescription);
  IsarNative.jsObjectSet(jsObj, 'productId', object.productId);
  IsarNative.jsObjectSet(jsObj, 'qty', object.qty);
  IsarNative.jsObjectSet(jsObj, 'salePrice', object.salePrice);
  IsarNative.jsObjectSet(jsObj, 'shipmentId', object.shipmentId);
  IsarNative.jsObjectSet(jsObj, 'taxAmount', object.taxAmount);
  IsarNative.jsObjectSet(jsObj, 'taxClass', object.taxClass);
  IsarNative.jsObjectSet(jsObj, 'taxRate', object.taxRate);
  IsarNative.jsObjectSet(jsObj, 'transId', object.transId);
  IsarNative.jsObjectSet(jsObj, 'transSeq', object.transSeq);
  IsarNative.jsObjectSet(jsObj, 'uom', object.uom);
  return jsObj;
}

TransactionLineItemEntity _transactionLineItemEntityDeserializeWeb(
    IsarCollection<TransactionLineItemEntity> collection, dynamic jsObj) {
  final object = TransactionLineItemEntity(
    amount: IsarNative.jsObjectGet(jsObj, 'amount') ?? double.negativeInfinity,
    brand: IsarNative.jsObjectGet(jsObj, 'brand'),
    hsn: IsarNative.jsObjectGet(jsObj, 'hsn'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    itemDiscount: IsarNative.jsObjectGet(jsObj, 'itemDiscount') ??
        double.negativeInfinity,
    itemId: IsarNative.jsObjectGet(jsObj, 'itemId'),
    listPrice:
        IsarNative.jsObjectGet(jsObj, 'listPrice') ?? double.negativeInfinity,
    orderDiscount: IsarNative.jsObjectGet(jsObj, 'orderDiscount') ??
        double.negativeInfinity,
    productDescription:
        IsarNative.jsObjectGet(jsObj, 'productDescription') ?? '',
    productId: IsarNative.jsObjectGet(jsObj, 'productId') ?? '',
    qty: IsarNative.jsObjectGet(jsObj, 'qty') ?? double.negativeInfinity,
    salePrice:
        IsarNative.jsObjectGet(jsObj, 'salePrice') ?? double.negativeInfinity,
    shipmentId: IsarNative.jsObjectGet(jsObj, 'shipmentId'),
    taxAmount:
        IsarNative.jsObjectGet(jsObj, 'taxAmount') ?? double.negativeInfinity,
    taxClass: IsarNative.jsObjectGet(jsObj, 'taxClass') ?? '',
    taxRate:
        IsarNative.jsObjectGet(jsObj, 'taxRate') ?? double.negativeInfinity,
    transId: IsarNative.jsObjectGet(jsObj, 'transId'),
    transSeq:
        IsarNative.jsObjectGet(jsObj, 'transSeq') ?? double.negativeInfinity,
    uom: IsarNative.jsObjectGet(jsObj, 'uom') ?? '',
  );
  _transactionLineItemEntityAttachLinks(
      collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _transactionLineItemEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount') ??
          double.negativeInfinity) as P;
    case 'brand':
      return (IsarNative.jsObjectGet(jsObj, 'brand')) as P;
    case 'hsn':
      return (IsarNative.jsObjectGet(jsObj, 'hsn')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'itemDiscount':
      return (IsarNative.jsObjectGet(jsObj, 'itemDiscount') ??
          double.negativeInfinity) as P;
    case 'itemId':
      return (IsarNative.jsObjectGet(jsObj, 'itemId')) as P;
    case 'listPrice':
      return (IsarNative.jsObjectGet(jsObj, 'listPrice') ??
          double.negativeInfinity) as P;
    case 'orderDiscount':
      return (IsarNative.jsObjectGet(jsObj, 'orderDiscount') ??
          double.negativeInfinity) as P;
    case 'productDescription':
      return (IsarNative.jsObjectGet(jsObj, 'productDescription') ?? '') as P;
    case 'productId':
      return (IsarNative.jsObjectGet(jsObj, 'productId') ?? '') as P;
    case 'qty':
      return (IsarNative.jsObjectGet(jsObj, 'qty') ?? double.negativeInfinity)
          as P;
    case 'salePrice':
      return (IsarNative.jsObjectGet(jsObj, 'salePrice') ??
          double.negativeInfinity) as P;
    case 'shipmentId':
      return (IsarNative.jsObjectGet(jsObj, 'shipmentId')) as P;
    case 'taxAmount':
      return (IsarNative.jsObjectGet(jsObj, 'taxAmount') ??
          double.negativeInfinity) as P;
    case 'taxClass':
      return (IsarNative.jsObjectGet(jsObj, 'taxClass') ?? '') as P;
    case 'taxRate':
      return (IsarNative.jsObjectGet(jsObj, 'taxRate') ??
          double.negativeInfinity) as P;
    case 'transId':
      return (IsarNative.jsObjectGet(jsObj, 'transId')) as P;
    case 'transSeq':
      return (IsarNative.jsObjectGet(jsObj, 'transSeq') ??
          double.negativeInfinity) as P;
    case 'uom':
      return (IsarNative.jsObjectGet(jsObj, 'uom') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _transactionLineItemEntityAttachLinks(
    IsarCollection col, int id, TransactionLineItemEntity object) {
  object.header.attach(col, col.isar.transactionHeaderEntitys, 'header', id);
}

extension TransactionLineItemEntityQueryWhereSort on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QWhere> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension TransactionLineItemEntityQueryWhere on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QWhereClause> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> idBetween(
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
}

extension TransactionLineItemEntityQueryFilter on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QFilterCondition> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> amountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> amountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> amountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'amount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> brandIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'brand',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> brandEqualTo(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> brandGreaterThan(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> brandLessThan(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> brandBetween(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> brandStartsWith(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> brandEndsWith(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      brandContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'brand',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      brandMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'brand',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> hsnIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'hsn',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> hsnEqualTo(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> hsnGreaterThan(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> hsnLessThan(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> hsnBetween(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> hsnStartsWith(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> hsnEndsWith(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      hsnContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'hsn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      hsnMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'hsn',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDiscountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'itemDiscount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDiscountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'itemDiscount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDiscountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemDiscount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'itemId',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'itemId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> listPriceGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'listPrice',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> listPriceLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'listPrice',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> listPriceBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'listPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> orderDiscountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'orderDiscount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> orderDiscountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'orderDiscount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> orderDiscountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'orderDiscount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productDescriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productDescriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productDescriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      productDescriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      productDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productIdGreaterThan(
    String value, {
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productIdLessThan(
    String value, {
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productIdBetween(
    String lower,
    String upper, {
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productIdStartsWith(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> productIdEndsWith(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      productIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      productIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> qtyGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> qtyLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> qtyBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'qty',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> salePriceGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'salePrice',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> salePriceLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'salePrice',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> salePriceBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'salePrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shipmentIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'shipmentId',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shipmentIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'shipmentId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shipmentIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'shipmentId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shipmentIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'shipmentId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shipmentIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'shipmentId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shipmentIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'shipmentId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shipmentIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'shipmentId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      shipmentIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'shipmentId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      shipmentIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'shipmentId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxClassEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'taxClass',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxClassGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'taxClass',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxClassLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'taxClass',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxClassBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxClass',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxClassStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'taxClass',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxClassEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'taxClass',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      taxClassContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'taxClass',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      taxClassMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'taxClass',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxRateGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxRate',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxRateLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxRate',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxRateBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxRate',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'transId',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transIdEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'transId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'transId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'transId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'transSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'transSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'transSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomEqualTo(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomGreaterThan(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomLessThan(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomBetween(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomStartsWith(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomEndsWith(
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      uomContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      uomMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'uom',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension TransactionLineItemEntityQueryLinks on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QFilterCondition> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> header(FilterQuery<TransactionHeaderEntity> q) {
    return linkInternal(
      isar.transactionHeaderEntitys,
      q,
      'header',
    );
  }
}

extension TransactionLineItemEntityQueryWhereSortBy on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QSortBy> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByBrand() {
    return addSortByInternal('brand', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByBrandDesc() {
    return addSortByInternal('brand', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByHsn() {
    return addSortByInternal('hsn', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByHsnDesc() {
    return addSortByInternal('hsn', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemDiscount() {
    return addSortByInternal('itemDiscount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemDiscountDesc() {
    return addSortByInternal('itemDiscount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemId() {
    return addSortByInternal('itemId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemIdDesc() {
    return addSortByInternal('itemId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByListPrice() {
    return addSortByInternal('listPrice', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByListPriceDesc() {
    return addSortByInternal('listPrice', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOrderDiscount() {
    return addSortByInternal('orderDiscount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOrderDiscountDesc() {
    return addSortByInternal('orderDiscount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByProductDescription() {
    return addSortByInternal('productDescription', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByProductDescriptionDesc() {
    return addSortByInternal('productDescription', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortBySalePrice() {
    return addSortByInternal('salePrice', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortBySalePriceDesc() {
    return addSortByInternal('salePrice', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByShipmentId() {
    return addSortByInternal('shipmentId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByShipmentIdDesc() {
    return addSortByInternal('shipmentId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTaxAmount() {
    return addSortByInternal('taxAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTaxAmountDesc() {
    return addSortByInternal('taxAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTaxClass() {
    return addSortByInternal('taxClass', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTaxClassDesc() {
    return addSortByInternal('taxClass', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTaxRate() {
    return addSortByInternal('taxRate', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTaxRateDesc() {
    return addSortByInternal('taxRate', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTransId() {
    return addSortByInternal('transId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTransIdDesc() {
    return addSortByInternal('transId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTransSeq() {
    return addSortByInternal('transSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTransSeqDesc() {
    return addSortByInternal('transSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByUom() {
    return addSortByInternal('uom', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByUomDesc() {
    return addSortByInternal('uom', Sort.desc);
  }
}

extension TransactionLineItemEntityQueryWhereSortThenBy on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QSortThenBy> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByBrand() {
    return addSortByInternal('brand', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByBrandDesc() {
    return addSortByInternal('brand', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByHsn() {
    return addSortByInternal('hsn', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByHsnDesc() {
    return addSortByInternal('hsn', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemDiscount() {
    return addSortByInternal('itemDiscount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemDiscountDesc() {
    return addSortByInternal('itemDiscount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemId() {
    return addSortByInternal('itemId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemIdDesc() {
    return addSortByInternal('itemId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByListPrice() {
    return addSortByInternal('listPrice', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByListPriceDesc() {
    return addSortByInternal('listPrice', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOrderDiscount() {
    return addSortByInternal('orderDiscount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOrderDiscountDesc() {
    return addSortByInternal('orderDiscount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByProductDescription() {
    return addSortByInternal('productDescription', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByProductDescriptionDesc() {
    return addSortByInternal('productDescription', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenBySalePrice() {
    return addSortByInternal('salePrice', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenBySalePriceDesc() {
    return addSortByInternal('salePrice', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByShipmentId() {
    return addSortByInternal('shipmentId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByShipmentIdDesc() {
    return addSortByInternal('shipmentId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTaxAmount() {
    return addSortByInternal('taxAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTaxAmountDesc() {
    return addSortByInternal('taxAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTaxClass() {
    return addSortByInternal('taxClass', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTaxClassDesc() {
    return addSortByInternal('taxClass', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTaxRate() {
    return addSortByInternal('taxRate', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTaxRateDesc() {
    return addSortByInternal('taxRate', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTransId() {
    return addSortByInternal('transId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTransIdDesc() {
    return addSortByInternal('transId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTransSeq() {
    return addSortByInternal('transSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTransSeqDesc() {
    return addSortByInternal('transSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByUom() {
    return addSortByInternal('uom', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByUomDesc() {
    return addSortByInternal('uom', Sort.desc);
  }
}

extension TransactionLineItemEntityQueryWhereDistinct on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QDistinct> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByAmount() {
    return addDistinctByInternal('amount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByBrand({bool caseSensitive = true}) {
    return addDistinctByInternal('brand', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByHsn({bool caseSensitive = true}) {
    return addDistinctByInternal('hsn', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByItemDiscount() {
    return addDistinctByInternal('itemDiscount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByItemId({bool caseSensitive = true}) {
    return addDistinctByInternal('itemId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByListPrice() {
    return addDistinctByInternal('listPrice');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByOrderDiscount() {
    return addDistinctByInternal('orderDiscount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByProductDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('productDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByProductId({bool caseSensitive = true}) {
    return addDistinctByInternal('productId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByQty() {
    return addDistinctByInternal('qty');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctBySalePrice() {
    return addDistinctByInternal('salePrice');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByShipmentId({bool caseSensitive = true}) {
    return addDistinctByInternal('shipmentId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByTaxAmount() {
    return addDistinctByInternal('taxAmount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByTaxClass({bool caseSensitive = true}) {
    return addDistinctByInternal('taxClass', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByTaxRate() {
    return addDistinctByInternal('taxRate');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByTransId() {
    return addDistinctByInternal('transId');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByTransSeq() {
    return addDistinctByInternal('transSeq');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByUom({bool caseSensitive = true}) {
    return addDistinctByInternal('uom', caseSensitive: caseSensitive);
  }
}

extension TransactionLineItemEntityQueryProperty on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QQueryProperty> {
  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      amountProperty() {
    return addPropertyNameInternal('amount');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      brandProperty() {
    return addPropertyNameInternal('brand');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      hsnProperty() {
    return addPropertyNameInternal('hsn');
  }

  QueryBuilder<TransactionLineItemEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      itemDiscountProperty() {
    return addPropertyNameInternal('itemDiscount');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      itemIdProperty() {
    return addPropertyNameInternal('itemId');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      listPriceProperty() {
    return addPropertyNameInternal('listPrice');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      orderDiscountProperty() {
    return addPropertyNameInternal('orderDiscount');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      productDescriptionProperty() {
    return addPropertyNameInternal('productDescription');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      productIdProperty() {
    return addPropertyNameInternal('productId');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      qtyProperty() {
    return addPropertyNameInternal('qty');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      salePriceProperty() {
    return addPropertyNameInternal('salePrice');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      shipmentIdProperty() {
    return addPropertyNameInternal('shipmentId');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      taxAmountProperty() {
    return addPropertyNameInternal('taxAmount');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      taxClassProperty() {
    return addPropertyNameInternal('taxClass');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      taxRateProperty() {
    return addPropertyNameInternal('taxRate');
  }

  QueryBuilder<TransactionLineItemEntity, int?, QQueryOperations>
      transIdProperty() {
    return addPropertyNameInternal('transId');
  }

  QueryBuilder<TransactionLineItemEntity, int, QQueryOperations>
      transSeqProperty() {
    return addPropertyNameInternal('transSeq');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      uomProperty() {
    return addPropertyNameInternal('uom');
  }
}
