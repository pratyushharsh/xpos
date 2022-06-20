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
      '{"name":"TransactionPaymentLineItemEntity","idName":"id","properties":[{"name":"amount","type":"Double"},{"name":"authCode","type":"String"},{"name":"beginDate","type":"Long"},{"name":"currencyId","type":"String"},{"name":"endDate","type":"Long"},{"name":"paymentSeq","type":"Long"},{"name":"tenderId","type":"String"},{"name":"tenderStatusCode","type":"String"},{"name":"transId","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'amount': 0,
    'authCode': 1,
    'beginDate': 2,
    'currencyId': 3,
    'endDate': 4,
    'paymentSeq': 5,
    'tenderId': 6,
    'tenderStatusCode': 7,
    'transId': 8
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'header': 0},
  backlinkLinkNames: {'header': 'paymentLineItems'},
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
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _transactionPaymentLineItemEntityGetLinks(
    TransactionPaymentLineItemEntity object) {
  return [object.header];
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
  final value1 = object.authCode;
  IsarUint8List? _authCode;
  if (value1 != null) {
    _authCode = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_authCode?.length ?? 0) as int;
  final value2 = object.beginDate;
  final _beginDate = value2;
  final value3 = object.currencyId;
  final _currencyId = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_currencyId.length) as int;
  final value4 = object.endDate;
  final _endDate = value4;
  final value5 = object.paymentSeq;
  final _paymentSeq = value5;
  final value6 = object.tenderId;
  final _tenderId = IsarBinaryWriter.utf8Encoder.convert(value6);
  dynamicSize += (_tenderId.length) as int;
  final value7 = object.tenderStatusCode;
  final _tenderStatusCode = IsarBinaryWriter.utf8Encoder.convert(value7);
  dynamicSize += (_tenderStatusCode.length) as int;
  final value8 = object.transId;
  final _transId = value8;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _amount);
  writer.writeBytes(offsets[1], _authCode);
  writer.writeDateTime(offsets[2], _beginDate);
  writer.writeBytes(offsets[3], _currencyId);
  writer.writeDateTime(offsets[4], _endDate);
  writer.writeLong(offsets[5], _paymentSeq);
  writer.writeBytes(offsets[6], _tenderId);
  writer.writeBytes(offsets[7], _tenderStatusCode);
  writer.writeLong(offsets[8], _transId);
}

TransactionPaymentLineItemEntity
    _transactionPaymentLineItemEntityDeserializeNative(
        IsarCollection<TransactionPaymentLineItemEntity> collection,
        int id,
        IsarBinaryReader reader,
        List<int> offsets) {
  final object = TransactionPaymentLineItemEntity(
    amount: reader.readDouble(offsets[0]),
    authCode: reader.readStringOrNull(offsets[1]),
    beginDate: reader.readDateTime(offsets[2]),
    currencyId: reader.readString(offsets[3]),
    endDate: reader.readDateTimeOrNull(offsets[4]),
    id: id,
    paymentSeq: reader.readLong(offsets[5]),
    tenderId: reader.readString(offsets[6]),
    tenderStatusCode: reader.readString(offsets[7]),
    transId: reader.readLong(offsets[8]),
  );
  _transactionPaymentLineItemEntityAttachLinks(collection, id, object);
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
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _transactionPaymentLineItemEntitySerializeWeb(
    IsarCollection<TransactionPaymentLineItemEntity> collection,
    TransactionPaymentLineItemEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'authCode', object.authCode);
  IsarNative.jsObjectSet(
      jsObj, 'beginDate', object.beginDate.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'currencyId', object.currencyId);
  IsarNative.jsObjectSet(
      jsObj, 'endDate', object.endDate?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'paymentSeq', object.paymentSeq);
  IsarNative.jsObjectSet(jsObj, 'tenderId', object.tenderId);
  IsarNative.jsObjectSet(jsObj, 'tenderStatusCode', object.tenderStatusCode);
  IsarNative.jsObjectSet(jsObj, 'transId', object.transId);
  return jsObj;
}

TransactionPaymentLineItemEntity
    _transactionPaymentLineItemEntityDeserializeWeb(
        IsarCollection<TransactionPaymentLineItemEntity> collection,
        dynamic jsObj) {
  final object = TransactionPaymentLineItemEntity(
    amount: IsarNative.jsObjectGet(jsObj, 'amount') ?? double.negativeInfinity,
    authCode: IsarNative.jsObjectGet(jsObj, 'authCode'),
    beginDate: IsarNative.jsObjectGet(jsObj, 'beginDate') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'beginDate'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    currencyId: IsarNative.jsObjectGet(jsObj, 'currencyId') ?? '',
    endDate: IsarNative.jsObjectGet(jsObj, 'endDate') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'endDate'),
                isUtc: true)
            .toLocal()
        : null,
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    paymentSeq:
        IsarNative.jsObjectGet(jsObj, 'paymentSeq') ?? double.negativeInfinity,
    tenderId: IsarNative.jsObjectGet(jsObj, 'tenderId') ?? '',
    tenderStatusCode: IsarNative.jsObjectGet(jsObj, 'tenderStatusCode') ?? '',
    transId:
        IsarNative.jsObjectGet(jsObj, 'transId') ?? double.negativeInfinity,
  );
  _transactionPaymentLineItemEntityAttachLinks(
      collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _transactionPaymentLineItemEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount') ??
          double.negativeInfinity) as P;
    case 'authCode':
      return (IsarNative.jsObjectGet(jsObj, 'authCode')) as P;
    case 'beginDate':
      return (IsarNative.jsObjectGet(jsObj, 'beginDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'beginDate'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'currencyId':
      return (IsarNative.jsObjectGet(jsObj, 'currencyId') ?? '') as P;
    case 'endDate':
      return (IsarNative.jsObjectGet(jsObj, 'endDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'endDate'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'paymentSeq':
      return (IsarNative.jsObjectGet(jsObj, 'paymentSeq') ??
          double.negativeInfinity) as P;
    case 'tenderId':
      return (IsarNative.jsObjectGet(jsObj, 'tenderId') ?? '') as P;
    case 'tenderStatusCode':
      return (IsarNative.jsObjectGet(jsObj, 'tenderStatusCode') ?? '') as P;
    case 'transId':
      return (IsarNative.jsObjectGet(jsObj, 'transId') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _transactionPaymentLineItemEntityAttachLinks(
    IsarCollection col, int id, TransactionPaymentLineItemEntity object) {
  object.header.attach(col, col.isar.transactionHeaderEntitys, 'header', id);
}

extension TransactionPaymentLineItemEntityQueryWhereSort on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QWhere> {
  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension TransactionPaymentLineItemEntityQueryWhere on QueryBuilder<
    TransactionPaymentLineItemEntity,
    TransactionPaymentLineItemEntity,
    QWhereClause> {
  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterWhereClause> idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterWhereClause> idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterWhereClause> idBetween(
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
      QAfterFilterCondition> authCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'authCode',
      value: null,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> authCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'authCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> authCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'authCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> authCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'authCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> authCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'authCode',
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
      QAfterFilterCondition> authCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'authCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> authCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'authCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      authCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'authCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      authCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'authCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> beginDateEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'beginDate',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> beginDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'beginDate',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> beginDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'beginDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> beginDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'beginDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> currencyIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> currencyIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> currencyIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> currencyIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currencyId',
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
      QAfterFilterCondition> currencyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> currencyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      currencyIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      currencyIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'currencyId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> endDateIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'endDate',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> endDateEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'endDate',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> endDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'endDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> endDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'endDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> endDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'endDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> tenderIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'tenderId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> tenderIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'tenderId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> tenderIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'tenderId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> tenderIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tenderId',
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
      QAfterFilterCondition> tenderIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'tenderId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterFilterCondition> tenderIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'tenderId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      tenderIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'tenderId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      tenderIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'tenderId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> tenderStatusCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'tenderStatusCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> tenderStatusCodeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'tenderStatusCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> tenderStatusCodeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'tenderStatusCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> tenderStatusCodeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tenderStatusCode',
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
      QAfterFilterCondition> tenderStatusCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'tenderStatusCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> tenderStatusCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'tenderStatusCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      tenderStatusCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'tenderStatusCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
          TransactionPaymentLineItemEntity, QAfterFilterCondition>
      tenderStatusCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'tenderStatusCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> transIdEqualTo(int value) {
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
    int value, {
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
    int value, {
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
    int lower,
    int upper, {
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
    QFilterCondition> {
  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterFilterCondition> header(FilterQuery<TransactionHeaderEntity> q) {
    return linkInternal(
      isar.transactionHeaderEntitys,
      q,
      'header',
    );
  }
}

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
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByAuthCode() {
    return addSortByInternal('authCode', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByAuthCodeDesc() {
    return addSortByInternal('authCode', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByBeginDate() {
    return addSortByInternal('beginDate', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByBeginDateDesc() {
    return addSortByInternal('beginDate', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByCurrencyId() {
    return addSortByInternal('currencyId', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByCurrencyIdDesc() {
    return addSortByInternal('currencyId', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByEndDate() {
    return addSortByInternal('endDate', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByEndDateDesc() {
    return addSortByInternal('endDate', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
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
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByTenderId() {
    return addSortByInternal('tenderId', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByTenderIdDesc() {
    return addSortByInternal('tenderId', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> sortByTenderStatusCode() {
    return addSortByInternal('tenderStatusCode', Sort.asc);
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterSortBy> sortByTenderStatusCodeDesc() {
    return addSortByInternal('tenderStatusCode', Sort.desc);
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
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByAuthCode() {
    return addSortByInternal('authCode', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByAuthCodeDesc() {
    return addSortByInternal('authCode', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByBeginDate() {
    return addSortByInternal('beginDate', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByBeginDateDesc() {
    return addSortByInternal('beginDate', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByCurrencyId() {
    return addSortByInternal('currencyId', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByCurrencyIdDesc() {
    return addSortByInternal('currencyId', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByEndDate() {
    return addSortByInternal('endDate', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByEndDateDesc() {
    return addSortByInternal('endDate', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
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
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByTenderId() {
    return addSortByInternal('tenderId', Sort.asc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByTenderIdDesc() {
    return addSortByInternal('tenderId', Sort.desc);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QAfterSortBy> thenByTenderStatusCode() {
    return addSortByInternal('tenderStatusCode', Sort.asc);
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QAfterSortBy> thenByTenderStatusCodeDesc() {
    return addSortByInternal('tenderStatusCode', Sort.desc);
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

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QDistinct> distinctByAuthCode({bool caseSensitive = true}) {
    return addDistinctByInternal('authCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByBeginDate() {
    return addDistinctByInternal('beginDate');
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QDistinct> distinctByCurrencyId({bool caseSensitive = true}) {
    return addDistinctByInternal('currencyId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByEndDate() {
    return addDistinctByInternal('endDate');
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity, QDistinct> distinctByPaymentSeq() {
    return addDistinctByInternal('paymentSeq');
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QDistinct> distinctByTenderId({bool caseSensitive = true}) {
    return addDistinctByInternal('tenderId', caseSensitive: caseSensitive);
  }

  QueryBuilder<
      TransactionPaymentLineItemEntity,
      TransactionPaymentLineItemEntity,
      QDistinct> distinctByTenderStatusCode({bool caseSensitive = true}) {
    return addDistinctByInternal('tenderStatusCode',
        caseSensitive: caseSensitive);
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

  QueryBuilder<TransactionPaymentLineItemEntity, String?, QQueryOperations>
      authCodeProperty() {
    return addPropertyNameInternal('authCode');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, DateTime, QQueryOperations>
      beginDateProperty() {
    return addPropertyNameInternal('beginDate');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, String, QQueryOperations>
      currencyIdProperty() {
    return addPropertyNameInternal('currencyId');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, DateTime?, QQueryOperations>
      endDateProperty() {
    return addPropertyNameInternal('endDate');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, int?, QQueryOperations>
      idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, int, QQueryOperations>
      paymentSeqProperty() {
    return addPropertyNameInternal('paymentSeq');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, String, QQueryOperations>
      tenderIdProperty() {
    return addPropertyNameInternal('tenderId');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, String, QQueryOperations>
      tenderStatusCodeProperty() {
    return addPropertyNameInternal('tenderStatusCode');
  }

  QueryBuilder<TransactionPaymentLineItemEntity, int, QQueryOperations>
      transIdProperty() {
    return addPropertyNameInternal('transId');
  }
}
