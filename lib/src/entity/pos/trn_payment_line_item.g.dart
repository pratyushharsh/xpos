// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trn_payment_line_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTransactionPaymentLineItemEntityCollection on Isar {
  IsarCollection<TransactionPaymentLineItemEntity>
      get transactionPaymentLineItemEntitys => getCollection();
}

const TransactionPaymentLineItemEntitySchema = CollectionSchema(
  name: 'TransactionPaymentLineItemEntity',
  schema:
      '{"name":"TransactionPaymentLineItemEntity","idName":"paymentSeq","properties":[{"name":"amount","type":"Double"},{"name":"discount","type":"Double"},{"name":"price","type":"Double"},{"name":"productDescription","type":"String"},{"name":"productId","type":"String"},{"name":"qty","type":"Double"},{"name":"transId","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'paymentSeq',
  propertyIds: {
    'amount': 0,
    'discount': 1,
    'price': 2,
    'productDescription': 3,
    'productId': 4,
    'qty': 5,
    'transId': 6
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _transactionPaymentLineItemEntityGetId,
  getLinks: _transactionPaymentLineItemEntityGetLinks,
  attachLinks: _transactionPaymentLineItemEntityAttachLinks,
  serializeNative: _transactionPaymentLineItemEntitySerializeNative,
  deserializeNative: _transactionPaymentLineItemEntityDeserializeNative,
  deserializePropNative: _transactionPaymentLineItemEntityDeserializePropNative,
  serializeWeb: _transactionPaymentLineItemEntitySerializeWeb,
  deserializeWeb: _transactionPaymentLineItemEntityDeserializeWeb,
  deserializePropWeb: _transactionPaymentLineItemEntityDeserializePropWeb,
  version: 3,
);

int? _transactionPaymentLineItemEntityGetId(
    TransactionPaymentLineItemEntity object) {
  if (object.paymentSeq == Isar.autoIncrement) {
    return null;
  } else {
    return object.paymentSeq;
  }
}

List<IsarLinkBase> _transactionPaymentLineItemEntityGetLinks(
    TransactionPaymentLineItemEntity object) {
  return [];
}

void _transactionPaymentLineItemEntitySerializeNative(
    IsarCollection<TransactionPaymentLineItemEntity> collection,
    IsarRawObject rawObj,
    TransactionPaymentLineItemEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.amount;
  final _amount = value0;
  final value1 = object.discount;
  final _discount = value1;
  final value2 = object.price;
  final _price = value2;
  final value3 = object.productDescription;
  final _productDescription = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_productDescription.length) as int;
  final value4 = object.productId;
  final _productId = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_productId.length) as int;
  final value5 = object.qty;
  final _qty = value5;
  final value6 = object.transId;
  final _transId = value6;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _amount);
  writer.writeDouble(offsets[1], _discount);
  writer.writeDouble(offsets[2], _price);
  writer.writeBytes(offsets[3], _productDescription);
  writer.writeBytes(offsets[4], _productId);
  writer.writeDouble(offsets[5], _qty);
  writer.writeLong(offsets[6], _transId);
}

TransactionPaymentLineItemEntity
    _transactionPaymentLineItemEntityDeserializeNative(
        IsarCollection<TransactionPaymentLineItemEntity> collection,
        int id,
        IsarBinaryReader reader,
        List<int> offsets) {
  final object = TransactionPaymentLineItemEntity(
    amount: reader.readDouble(offsets[0]),
    discount: reader.readDouble(offsets[1]),
    paymentSeq: id,
    price: reader.readDouble(offsets[2]),
    productDescription: reader.readString(offsets[3]),
    productId: reader.readString(offsets[4]),
    qty: reader.readDouble(offsets[5]),
    transId: reader.readLongOrNull(offsets[6]),
  );
  return object;
}

P _transactionPaymentLineItemEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _transactionPaymentLineItemEntitySerializeWeb(
    IsarCollection<TransactionPaymentLineItemEntity> collection,
    TransactionPaymentLineItemEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'discount', object.discount);
  IsarNative.jsObjectSet(jsObj, 'paymentSeq', object.paymentSeq);
  IsarNative.jsObjectSet(jsObj, 'price', object.price);
  IsarNative.jsObjectSet(
      jsObj, 'productDescription', object.productDescription);
  IsarNative.jsObjectSet(jsObj, 'productId', object.productId);
  IsarNative.jsObjectSet(jsObj, 'qty', object.qty);
  IsarNative.jsObjectSet(jsObj, 'transId', object.transId);
  return jsObj;
}

TransactionPaymentLineItemEntity
    _transactionPaymentLineItemEntityDeserializeWeb(
        IsarCollection<TransactionPaymentLineItemEntity> collection,
        dynamic jsObj) {
  final object = TransactionPaymentLineItemEntity(
    amount: IsarNative.jsObjectGet(jsObj, 'amount') ?? double.negativeInfinity,
    discount:
        IsarNative.jsObjectGet(jsObj, 'discount') ?? double.negativeInfinity,
    paymentSeq:
        IsarNative.jsObjectGet(jsObj, 'paymentSeq') ?? double.negativeInfinity,
    price: IsarNative.jsObjectGet(jsObj, 'price') ?? double.negativeInfinity,
    productDescription:
        IsarNative.jsObjectGet(jsObj, 'productDescription') ?? '',
    productId: IsarNative.jsObjectGet(jsObj, 'productId') ?? '',
    qty: IsarNative.jsObjectGet(jsObj, 'qty') ?? double.negativeInfinity,
    transId: IsarNative.jsObjectGet(jsObj, 'transId'),
  );
  return object;
}

P _transactionPaymentLineItemEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount') ??
          double.negativeInfinity) as P;
    case 'discount':
      return (IsarNative.jsObjectGet(jsObj, 'discount') ??
          double.negativeInfinity) as P;
    case 'paymentSeq':
      return (IsarNative.jsObjectGet(jsObj, 'paymentSeq') ??
          double.negativeInfinity) as P;
    case 'price':
      return (IsarNative.jsObjectGet(jsObj, 'price') ?? double.negativeInfinity)
          as P;
    case 'productDescription':
      return (IsarNative.jsObjectGet(jsObj, 'productDescription') ?? '') as P;
    case 'productId':
      return (IsarNative.jsObjectGet(jsObj, 'productId') ?? '') as P;
    case 'qty':
      return (IsarNative.jsObjectGet(jsObj, 'qty') ?? double.negativeInfinity)
          as P;
    case 'transId':
      return (IsarNative.jsObjectGet(jsObj, 'transId')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _transactionPaymentLineItemEntityAttachLinks(
    IsarCollection col, int id, TransactionPaymentLineItemEntity object) {}

extension TransactionPaymentLineItemEntityQueryWhereSort on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QWhere> {
  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterWhere> anyPaymentSeq() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension TransactionPaymentLineItemEntityQueryWhere on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QWhereClause> {
  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterWhereClause> paymentSeqEqualTo(int paymentSeq) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: paymentSeq,
      includeLower: true,
      upper: paymentSeq,
      includeUpper: true,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterWhereClause> paymentSeqNotEqualTo(int paymentSeq) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: paymentSeq, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: paymentSeq, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: paymentSeq, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: paymentSeq, includeUpper: false),
      );
    }
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterWhereClause>
      paymentSeqGreaterThan(int paymentSeq, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: paymentSeq, includeLower: include),
    );
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterWhereClause>
      paymentSeqLessThan(int paymentSeq, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: paymentSeq, includeUpper: include),
    );
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterWhereClause> paymentSeqBetween(
    int lowerPaymentSeq,
    int upperPaymentSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerPaymentSeq,
      includeLower: includeLower,
      upper: upperPaymentSeq,
      includeUpper: includeUpper,
    ));
  }
}

extension TransactionPaymentLineItemEntityQueryFilter on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QFilterCondition> {
  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> amountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> amountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> amountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'amount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> discountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'discount',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> discountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'discount',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> discountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> paymentSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'paymentSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> paymentSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'paymentSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> paymentSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'paymentSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> paymentSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'paymentSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> priceGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> priceLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> priceBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'price',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      productDescriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      productDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> productIdEqualTo(
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> productIdBetween(
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      productIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      productIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> qtyGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> qtyLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> qtyBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'qty',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> transIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'transId',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> transIdEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transId',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> transIdLessThan(
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

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> transIdBetween(
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
}

extension TransactionPaymentLineItemEntityQueryLinks on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QFilterCondition> {}

extension TransactionPaymentLineItemEntityQueryWhereSortBy on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QSortBy> {
  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByDiscount() {
    return addSortByInternal('discount', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByDiscountDesc() {
    return addSortByInternal('discount', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByPaymentSeq() {
    return addSortByInternal('paymentSeq', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByPaymentSeqDesc() {
    return addSortByInternal('paymentSeq', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterSortBy> sortByProductDescription() {
    return addSortByInternal('productDescription', Sort.asc);
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterSortBy> sortByProductDescriptionDesc() {
    return addSortByInternal('productDescription', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByTransId() {
    return addSortByInternal('transId', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByTransIdDesc() {
    return addSortByInternal('transId', Sort.desc);
  }
}

extension TransactionPaymentLineItemEntityQueryWhereSortThenBy on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QSortThenBy> {
  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByDiscount() {
    return addSortByInternal('discount', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByDiscountDesc() {
    return addSortByInternal('discount', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByPaymentSeq() {
    return addSortByInternal('paymentSeq', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByPaymentSeqDesc() {
    return addSortByInternal('paymentSeq', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterSortBy> thenByProductDescription() {
    return addSortByInternal('productDescription', Sort.asc);
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterSortBy> thenByProductDescriptionDesc() {
    return addSortByInternal('productDescription', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByTransId() {
    return addSortByInternal('transId', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByTransIdDesc() {
    return addSortByInternal('transId', Sort.desc);
  }
}

extension TransactionPaymentLineItemEntityQueryWhereDistinct on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QDistinct> {
  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByAmount() {
    return addDistinctByInternal('amount');
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByDiscount() {
    return addDistinctByInternal('discount');
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByPaymentSeq() {
    return addDistinctByInternal('paymentSeq');
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByPrice() {
    return addDistinctByInternal('price');
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QDistinct> distinctByProductDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('productDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QDistinct> distinctByProductId({bool caseSensitive = true}) {
    return addDistinctByInternal('productId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByQty() {
    return addDistinctByInternal('qty');
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByTransId() {
    return addDistinctByInternal('transId');
  }
}

extension TransactionPaymentLineItemEntityQueryProperty on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QQueryProperty> {
  QueryBuilder<TransactionPaymentLineItemEntity, double, QQueryOperations>
      amountProperty() {
    return addPropertyNameInternal('amount');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, double, QQueryOperations>
      discountProperty() {
    return addPropertyNameInternal('discount');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, int, QQueryOperations>
      paymentSeqProperty() {
    return addPropertyNameInternal('paymentSeq');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, double, QQueryOperations>
      priceProperty() {
    return addPropertyNameInternal('price');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, String, QQueryOperations>
      productDescriptionProperty() {
    return addPropertyNameInternal('productDescription');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, String, QQueryOperations>
      productIdProperty() {
    return addPropertyNameInternal('productId');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, double, QQueryOperations>
      qtyProperty() {
    return addPropertyNameInternal('qty');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, int?, QQueryOperations>
      transIdProperty() {
    return addPropertyNameInternal('transId');
  }
}
