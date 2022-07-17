// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trn_header_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTransactionHeaderEntityCollection on Isar {
  IsarCollection<TransactionHeaderEntity> get transactionHeaderEntitys =>
      getCollection();
}

const TransactionHeaderEntitySchema = CollectionSchema(
  name: 'TransactionHeaderEntity',
  schema:
      '{"name":"TransactionHeaderEntity","idName":"transId","properties":[{"name":"beginDatetime","type":"Long"},{"name":"billingAddress","type":"String"},{"name":"businessDate","type":"Long"},{"name":"createTime","type":"Long"},{"name":"customerId","type":"String"},{"name":"customerName","type":"String"},{"name":"customerPhone","type":"String"},{"name":"endDateTime","type":"Long"},{"name":"lastChangedAt","type":"Long"},{"name":"roundTotal","type":"Double"},{"name":"shippingAddress","type":"String"},{"name":"status","type":"String"},{"name":"storeId","type":"Long"},{"name":"subtotal","type":"Double"},{"name":"syncState","type":"Long"},{"name":"taxTotal","type":"Double"},{"name":"total","type":"Double"},{"name":"transactionType","type":"String"},{"name":"updateTime","type":"Long"},{"name":"version","type":"Long"}],"indexes":[{"name":"customerId","unique":false,"properties":[{"name":"customerId","type":"Hash","caseSensitive":true}]},{"name":"customerPhone","unique":false,"properties":[{"name":"customerPhone","type":"Hash","caseSensitive":true}]}],"links":[{"name":"lineItems","target":"TransactionLineItemEntity"},{"name":"paymentLineItems","target":"TransactionPaymentLineItemEntity"}]}',
  idName: 'transId',
  propertyIds: {
    'beginDatetime': 0,
    'billingAddress': 1,
    'businessDate': 2,
    'createTime': 3,
    'customerId': 4,
    'customerName': 5,
    'customerPhone': 6,
    'endDateTime': 7,
    'lastChangedAt': 8,
    'roundTotal': 9,
    'shippingAddress': 10,
    'status': 11,
    'storeId': 12,
    'subtotal': 13,
    'syncState': 14,
    'taxTotal': 15,
    'total': 16,
    'transactionType': 17,
    'updateTime': 18,
    'version': 19
  },
  listProperties: {},
  indexIds: {'customerId': 0, 'customerPhone': 1},
  indexValueTypes: {
    'customerId': [
      IndexValueType.stringHash,
    ],
    'customerPhone': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {'lineItems': 0, 'paymentLineItems': 1},
  backlinkLinkNames: {},
  getId: _transactionHeaderEntityGetId,
  getLinks: _transactionHeaderEntityGetLinks,
  attachLinks: _transactionHeaderEntityAttachLinks,
  serializeNative: _transactionHeaderEntitySerializeNative,
  deserializeNative: _transactionHeaderEntityDeserializeNative,
  deserializePropNative: _transactionHeaderEntityDeserializePropNative,
  serializeWeb: _transactionHeaderEntitySerializeWeb,
  deserializeWeb: _transactionHeaderEntityDeserializeWeb,
  deserializePropWeb: _transactionHeaderEntityDeserializePropWeb,
  version: 3,
);

int? _transactionHeaderEntityGetId(TransactionHeaderEntity object) {
  if (object.transId == Isar.autoIncrement) {
    return null;
  } else {
    return object.transId;
  }
}

List<IsarLinkBase> _transactionHeaderEntityGetLinks(
    TransactionHeaderEntity object) {
  return [object.lineItems, object.paymentLineItems];
}

void _transactionHeaderEntitySerializeNative(
    IsarCollection<TransactionHeaderEntity> collection,
    IsarRawObject rawObj,
    TransactionHeaderEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.beginDatetime;
  final _beginDatetime = value0;
  final value1 = object.billingAddress;
  IsarUint8List? _billingAddress;
  if (value1 != null) {
    _billingAddress = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_billingAddress?.length ?? 0) as int;
  final value2 = object.businessDate;
  final _businessDate = value2;
  final value3 = object.createTime;
  final _createTime = value3;
  final value4 = object.customerId;
  IsarUint8List? _customerId;
  if (value4 != null) {
    _customerId = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_customerId?.length ?? 0) as int;
  final value5 = object.customerName;
  IsarUint8List? _customerName;
  if (value5 != null) {
    _customerName = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_customerName?.length ?? 0) as int;
  final value6 = object.customerPhone;
  IsarUint8List? _customerPhone;
  if (value6 != null) {
    _customerPhone = IsarBinaryWriter.utf8Encoder.convert(value6);
  }
  dynamicSize += (_customerPhone?.length ?? 0) as int;
  final value7 = object.endDateTime;
  final _endDateTime = value7;
  final value8 = object.lastChangedAt;
  final _lastChangedAt = value8;
  final value9 = object.roundTotal;
  final _roundTotal = value9;
  final value10 = object.shippingAddress;
  IsarUint8List? _shippingAddress;
  if (value10 != null) {
    _shippingAddress = IsarBinaryWriter.utf8Encoder.convert(value10);
  }
  dynamicSize += (_shippingAddress?.length ?? 0) as int;
  final value11 = object.status;
  final _status = IsarBinaryWriter.utf8Encoder.convert(value11);
  dynamicSize += (_status.length) as int;
  final value12 = object.storeId;
  final _storeId = value12;
  final value13 = object.subtotal;
  final _subtotal = value13;
  final value14 = object.syncState;
  final _syncState = value14;
  final value15 = object.taxTotal;
  final _taxTotal = value15;
  final value16 = object.total;
  final _total = value16;
  final value17 = object.transactionType;
  final _transactionType = IsarBinaryWriter.utf8Encoder.convert(value17);
  dynamicSize += (_transactionType.length) as int;
  final value18 = object.updateTime;
  final _updateTime = value18;
  final value19 = object.version;
  final _version = value19;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _beginDatetime);
  writer.writeBytes(offsets[1], _billingAddress);
  writer.writeDateTime(offsets[2], _businessDate);
  writer.writeDateTime(offsets[3], _createTime);
  writer.writeBytes(offsets[4], _customerId);
  writer.writeBytes(offsets[5], _customerName);
  writer.writeBytes(offsets[6], _customerPhone);
  writer.writeDateTime(offsets[7], _endDateTime);
  writer.writeDateTime(offsets[8], _lastChangedAt);
  writer.writeDouble(offsets[9], _roundTotal);
  writer.writeBytes(offsets[10], _shippingAddress);
  writer.writeBytes(offsets[11], _status);
  writer.writeLong(offsets[12], _storeId);
  writer.writeDouble(offsets[13], _subtotal);
  writer.writeLong(offsets[14], _syncState);
  writer.writeDouble(offsets[15], _taxTotal);
  writer.writeDouble(offsets[16], _total);
  writer.writeBytes(offsets[17], _transactionType);
  writer.writeDateTime(offsets[18], _updateTime);
  writer.writeLong(offsets[19], _version);
}

TransactionHeaderEntity _transactionHeaderEntityDeserializeNative(
    IsarCollection<TransactionHeaderEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = TransactionHeaderEntity(
    beginDatetime: reader.readDateTime(offsets[0]),
    billingAddress: reader.readStringOrNull(offsets[1]),
    businessDate: reader.readDateTime(offsets[2]),
    createTime: reader.readDateTime(offsets[3]),
    customerId: reader.readStringOrNull(offsets[4]),
    customerName: reader.readStringOrNull(offsets[5]),
    customerPhone: reader.readStringOrNull(offsets[6]),
    endDateTime: reader.readDateTimeOrNull(offsets[7]),
    lastChangedAt: reader.readDateTimeOrNull(offsets[8]),
    roundTotal: reader.readDouble(offsets[9]),
    shippingAddress: reader.readStringOrNull(offsets[10]),
    status: reader.readString(offsets[11]),
    storeId: reader.readLong(offsets[12]),
    subtotal: reader.readDouble(offsets[13]),
    syncState: reader.readLong(offsets[14]),
    taxTotal: reader.readDouble(offsets[15]),
    total: reader.readDouble(offsets[16]),
    transId: id,
    transactionType: reader.readString(offsets[17]),
    updateTime: reader.readDateTimeOrNull(offsets[18]),
    version: reader.readLong(offsets[19]),
  );
  _transactionHeaderEntityAttachLinks(collection, id, object);
  return object;
}

P _transactionHeaderEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readDouble(offset)) as P;
    case 16:
      return (reader.readDouble(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 19:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _transactionHeaderEntitySerializeWeb(
    IsarCollection<TransactionHeaderEntity> collection,
    TransactionHeaderEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'beginDatetime',
      object.beginDatetime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'billingAddress', object.billingAddress);
  IsarNative.jsObjectSet(jsObj, 'businessDate',
      object.businessDate.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(
      jsObj, 'createTime', object.createTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'customerId', object.customerId);
  IsarNative.jsObjectSet(jsObj, 'customerName', object.customerName);
  IsarNative.jsObjectSet(jsObj, 'customerPhone', object.customerPhone);
  IsarNative.jsObjectSet(
      jsObj, 'endDateTime', object.endDateTime?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'lastChangedAt',
      object.lastChangedAt?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'roundTotal', object.roundTotal);
  IsarNative.jsObjectSet(jsObj, 'shippingAddress', object.shippingAddress);
  IsarNative.jsObjectSet(jsObj, 'status', object.status);
  IsarNative.jsObjectSet(jsObj, 'storeId', object.storeId);
  IsarNative.jsObjectSet(jsObj, 'subtotal', object.subtotal);
  IsarNative.jsObjectSet(jsObj, 'syncState', object.syncState);
  IsarNative.jsObjectSet(jsObj, 'taxTotal', object.taxTotal);
  IsarNative.jsObjectSet(jsObj, 'total', object.total);
  IsarNative.jsObjectSet(jsObj, 'transId', object.transId);
  IsarNative.jsObjectSet(jsObj, 'transactionType', object.transactionType);
  IsarNative.jsObjectSet(
      jsObj, 'updateTime', object.updateTime?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'version', object.version);
  return jsObj;
}

TransactionHeaderEntity _transactionHeaderEntityDeserializeWeb(
    IsarCollection<TransactionHeaderEntity> collection, dynamic jsObj) {
  final object = TransactionHeaderEntity(
    beginDatetime: IsarNative.jsObjectGet(jsObj, 'beginDatetime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'beginDatetime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    billingAddress: IsarNative.jsObjectGet(jsObj, 'billingAddress'),
    businessDate: IsarNative.jsObjectGet(jsObj, 'businessDate') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'businessDate'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    createTime: IsarNative.jsObjectGet(jsObj, 'createTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'createTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    customerId: IsarNative.jsObjectGet(jsObj, 'customerId'),
    customerName: IsarNative.jsObjectGet(jsObj, 'customerName'),
    customerPhone: IsarNative.jsObjectGet(jsObj, 'customerPhone'),
    endDateTime: IsarNative.jsObjectGet(jsObj, 'endDateTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'endDateTime'),
                isUtc: true)
            .toLocal()
        : null,
    lastChangedAt: IsarNative.jsObjectGet(jsObj, 'lastChangedAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'lastChangedAt'),
                isUtc: true)
            .toLocal()
        : null,
    roundTotal:
        IsarNative.jsObjectGet(jsObj, 'roundTotal') ?? double.negativeInfinity,
    shippingAddress: IsarNative.jsObjectGet(jsObj, 'shippingAddress'),
    status: IsarNative.jsObjectGet(jsObj, 'status') ?? '',
    storeId:
        IsarNative.jsObjectGet(jsObj, 'storeId') ?? double.negativeInfinity,
    subtotal:
        IsarNative.jsObjectGet(jsObj, 'subtotal') ?? double.negativeInfinity,
    syncState:
        IsarNative.jsObjectGet(jsObj, 'syncState') ?? double.negativeInfinity,
    taxTotal:
        IsarNative.jsObjectGet(jsObj, 'taxTotal') ?? double.negativeInfinity,
    total: IsarNative.jsObjectGet(jsObj, 'total') ?? double.negativeInfinity,
    transId:
        IsarNative.jsObjectGet(jsObj, 'transId') ?? double.negativeInfinity,
    transactionType: IsarNative.jsObjectGet(jsObj, 'transactionType') ?? '',
    updateTime: IsarNative.jsObjectGet(jsObj, 'updateTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'updateTime'),
                isUtc: true)
            .toLocal()
        : null,
    version:
        IsarNative.jsObjectGet(jsObj, 'version') ?? double.negativeInfinity,
  );
  _transactionHeaderEntityAttachLinks(
      collection,
      IsarNative.jsObjectGet(jsObj, 'transId') ?? double.negativeInfinity,
      object);
  return object;
}

P _transactionHeaderEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'beginDatetime':
      return (IsarNative.jsObjectGet(jsObj, 'beginDatetime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'beginDatetime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'billingAddress':
      return (IsarNative.jsObjectGet(jsObj, 'billingAddress')) as P;
    case 'businessDate':
      return (IsarNative.jsObjectGet(jsObj, 'businessDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'businessDate'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'createTime':
      return (IsarNative.jsObjectGet(jsObj, 'createTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'customerId':
      return (IsarNative.jsObjectGet(jsObj, 'customerId')) as P;
    case 'customerName':
      return (IsarNative.jsObjectGet(jsObj, 'customerName')) as P;
    case 'customerPhone':
      return (IsarNative.jsObjectGet(jsObj, 'customerPhone')) as P;
    case 'endDateTime':
      return (IsarNative.jsObjectGet(jsObj, 'endDateTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'endDateTime'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'lastChangedAt':
      return (IsarNative.jsObjectGet(jsObj, 'lastChangedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'lastChangedAt'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'roundTotal':
      return (IsarNative.jsObjectGet(jsObj, 'roundTotal') ??
          double.negativeInfinity) as P;
    case 'shippingAddress':
      return (IsarNative.jsObjectGet(jsObj, 'shippingAddress')) as P;
    case 'status':
      return (IsarNative.jsObjectGet(jsObj, 'status') ?? '') as P;
    case 'storeId':
      return (IsarNative.jsObjectGet(jsObj, 'storeId') ??
          double.negativeInfinity) as P;
    case 'subtotal':
      return (IsarNative.jsObjectGet(jsObj, 'subtotal') ??
          double.negativeInfinity) as P;
    case 'syncState':
      return (IsarNative.jsObjectGet(jsObj, 'syncState') ??
          double.negativeInfinity) as P;
    case 'taxTotal':
      return (IsarNative.jsObjectGet(jsObj, 'taxTotal') ??
          double.negativeInfinity) as P;
    case 'total':
      return (IsarNative.jsObjectGet(jsObj, 'total') ?? double.negativeInfinity)
          as P;
    case 'transId':
      return (IsarNative.jsObjectGet(jsObj, 'transId') ??
          double.negativeInfinity) as P;
    case 'transactionType':
      return (IsarNative.jsObjectGet(jsObj, 'transactionType') ?? '') as P;
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

void _transactionHeaderEntityAttachLinks(
    IsarCollection col, int id, TransactionHeaderEntity object) {
  object.lineItems
      .attach(col, col.isar.transactionLineItemEntitys, 'lineItems', id);
  object.paymentLineItems.attach(
      col, col.isar.transactionPaymentLineItemEntitys, 'paymentLineItems', id);
}

extension TransactionHeaderEntityQueryWhereSort
    on QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QWhere> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterWhere>
      anyTransId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterWhere>
      anyCustomerId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'customerId'));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterWhere>
      anyCustomerPhone() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'customerPhone'));
  }
}

extension TransactionHeaderEntityQueryWhere on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QWhereClause> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> transIdEqualTo(int transId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: transId,
      includeLower: true,
      upper: transId,
      includeUpper: true,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> transIdNotEqualTo(int transId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: transId, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: transId, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: transId, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: transId, includeUpper: false),
      );
    }
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterWhereClause>
      transIdGreaterThan(int transId, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: transId, includeLower: include),
    );
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> transIdLessThan(int transId, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: transId, includeUpper: include),
    );
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> transIdBetween(
    int lowerTransId,
    int upperTransId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerTransId,
      includeLower: includeLower,
      upper: upperTransId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerIdEqualTo(String? customerId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'customerId',
      value: [customerId],
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerIdNotEqualTo(String? customerId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'customerId',
        upper: [customerId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'customerId',
        lower: [customerId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'customerId',
        lower: [customerId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'customerId',
        upper: [customerId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerIdIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'customerId',
      value: [null],
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerIdIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'customerId',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerPhoneEqualTo(String? customerPhone) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'customerPhone',
      value: [customerPhone],
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerPhoneNotEqualTo(String? customerPhone) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'customerPhone',
        upper: [customerPhone],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'customerPhone',
        lower: [customerPhone],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'customerPhone',
        lower: [customerPhone],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'customerPhone',
        upper: [customerPhone],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerPhoneIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'customerPhone',
      value: [null],
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerPhoneIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'customerPhone',
      lower: [null],
      includeLower: false,
    ));
  }
}

extension TransactionHeaderEntityQueryFilter on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QFilterCondition> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> beginDatetimeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'beginDatetime',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> beginDatetimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'beginDatetime',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> beginDatetimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'beginDatetime',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> beginDatetimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'beginDatetime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'billingAddress',
      value: null,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'billingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'billingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'billingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'billingAddress',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'billingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'billingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      billingAddressContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'billingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      billingAddressMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'billingAddress',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> businessDateEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'businessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> businessDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'businessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> businessDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'businessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> businessDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'businessDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> createTimeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> createTimeGreaterThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> createTimeLessThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> createTimeBetween(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'customerId',
      value: null,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'customerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'customerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'customerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'customerId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'customerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'customerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'customerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'customerId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'customerName',
      value: null,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'customerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'customerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'customerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'customerName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'customerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'customerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'customerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'customerName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'customerPhone',
      value: null,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'customerPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'customerPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'customerPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'customerPhone',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'customerPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'customerPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerPhoneContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'customerPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerPhoneMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'customerPhone',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'endDateTime',
      value: null,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'endDateTime',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'endDateTime',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'endDateTime',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'endDateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lastChangedAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastChangedAt',
      value: null,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lastChangedAtEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastChangedAt',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lastChangedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastChangedAt',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lastChangedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastChangedAt',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lastChangedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastChangedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> roundTotalGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'roundTotal',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> roundTotalLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'roundTotal',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> roundTotalBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'roundTotal',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'shippingAddress',
      value: null,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'shippingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'shippingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'shippingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'shippingAddress',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'shippingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'shippingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      shippingAddressContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'shippingAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      shippingAddressMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'shippingAddress',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'status',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'status',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> storeIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeId',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> storeIdGreaterThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> storeIdLessThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> storeIdBetween(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> subtotalGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'subtotal',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> subtotalLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'subtotal',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> subtotalBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'subtotal',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> syncStateEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncState',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> syncStateGreaterThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> syncStateLessThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> syncStateBetween(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> taxTotalGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxTotal',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> taxTotalLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxTotal',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> taxTotalBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxTotal',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> totalGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'total',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> totalLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'total',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> totalBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'total',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transId',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transIdLessThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transIdBetween(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transactionType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'transactionType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'transactionType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'transactionType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'transactionType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'transactionType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      transactionTypeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'transactionType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      transactionTypeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'transactionType',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> updateTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'updateTime',
      value: null,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> updateTimeEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> updateTimeGreaterThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> updateTimeLessThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> updateTimeBetween(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> versionEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> versionGreaterThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> versionLessThan(
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> versionBetween(
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

extension TransactionHeaderEntityQueryLinks on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QFilterCondition> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      lineItems(FilterQuery<TransactionLineItemEntity> q) {
    return linkInternal(
      isar.transactionLineItemEntitys,
      q,
      'lineItems',
    );
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      paymentLineItems(FilterQuery<TransactionPaymentLineItemEntity> q) {
    return linkInternal(
      isar.transactionPaymentLineItemEntitys,
      q,
      'paymentLineItems',
    );
  }
}

extension TransactionHeaderEntityQueryWhereSortBy
    on QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QSortBy> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBeginDatetime() {
    return addSortByInternal('beginDatetime', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBeginDatetimeDesc() {
    return addSortByInternal('beginDatetime', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBillingAddress() {
    return addSortByInternal('billingAddress', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBillingAddressDesc() {
    return addSortByInternal('billingAddress', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBusinessDate() {
    return addSortByInternal('businessDate', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBusinessDateDesc() {
    return addSortByInternal('businessDate', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCreateTime() {
    return addSortByInternal('createTime', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return addSortByInternal('createTime', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerId() {
    return addSortByInternal('customerId', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerIdDesc() {
    return addSortByInternal('customerId', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerName() {
    return addSortByInternal('customerName', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerNameDesc() {
    return addSortByInternal('customerName', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerPhone() {
    return addSortByInternal('customerPhone', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerPhoneDesc() {
    return addSortByInternal('customerPhone', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByEndDateTime() {
    return addSortByInternal('endDateTime', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByEndDateTimeDesc() {
    return addSortByInternal('endDateTime', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByLastChangedAt() {
    return addSortByInternal('lastChangedAt', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByLastChangedAtDesc() {
    return addSortByInternal('lastChangedAt', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByRoundTotal() {
    return addSortByInternal('roundTotal', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByRoundTotalDesc() {
    return addSortByInternal('roundTotal', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByShippingAddress() {
    return addSortByInternal('shippingAddress', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByShippingAddressDesc() {
    return addSortByInternal('shippingAddress', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByStatus() {
    return addSortByInternal('status', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByStatusDesc() {
    return addSortByInternal('status', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortBySubtotal() {
    return addSortByInternal('subtotal', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortBySubtotalDesc() {
    return addSortByInternal('subtotal', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortBySyncState() {
    return addSortByInternal('syncState', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortBySyncStateDesc() {
    return addSortByInternal('syncState', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTaxTotal() {
    return addSortByInternal('taxTotal', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTaxTotalDesc() {
    return addSortByInternal('taxTotal', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTotal() {
    return addSortByInternal('total', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTotalDesc() {
    return addSortByInternal('total', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTransId() {
    return addSortByInternal('transId', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTransIdDesc() {
    return addSortByInternal('transId', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTransactionType() {
    return addSortByInternal('transactionType', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTransactionTypeDesc() {
    return addSortByInternal('transactionType', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByVersion() {
    return addSortByInternal('version', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByVersionDesc() {
    return addSortByInternal('version', Sort.desc);
  }
}

extension TransactionHeaderEntityQueryWhereSortThenBy on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QSortThenBy> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBeginDatetime() {
    return addSortByInternal('beginDatetime', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBeginDatetimeDesc() {
    return addSortByInternal('beginDatetime', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBillingAddress() {
    return addSortByInternal('billingAddress', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBillingAddressDesc() {
    return addSortByInternal('billingAddress', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBusinessDate() {
    return addSortByInternal('businessDate', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBusinessDateDesc() {
    return addSortByInternal('businessDate', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCreateTime() {
    return addSortByInternal('createTime', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return addSortByInternal('createTime', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerId() {
    return addSortByInternal('customerId', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerIdDesc() {
    return addSortByInternal('customerId', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerName() {
    return addSortByInternal('customerName', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerNameDesc() {
    return addSortByInternal('customerName', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerPhone() {
    return addSortByInternal('customerPhone', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerPhoneDesc() {
    return addSortByInternal('customerPhone', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByEndDateTime() {
    return addSortByInternal('endDateTime', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByEndDateTimeDesc() {
    return addSortByInternal('endDateTime', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByLastChangedAt() {
    return addSortByInternal('lastChangedAt', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByLastChangedAtDesc() {
    return addSortByInternal('lastChangedAt', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByRoundTotal() {
    return addSortByInternal('roundTotal', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByRoundTotalDesc() {
    return addSortByInternal('roundTotal', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByShippingAddress() {
    return addSortByInternal('shippingAddress', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByShippingAddressDesc() {
    return addSortByInternal('shippingAddress', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByStatus() {
    return addSortByInternal('status', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByStatusDesc() {
    return addSortByInternal('status', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenBySubtotal() {
    return addSortByInternal('subtotal', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenBySubtotalDesc() {
    return addSortByInternal('subtotal', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenBySyncState() {
    return addSortByInternal('syncState', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenBySyncStateDesc() {
    return addSortByInternal('syncState', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTaxTotal() {
    return addSortByInternal('taxTotal', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTaxTotalDesc() {
    return addSortByInternal('taxTotal', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTotal() {
    return addSortByInternal('total', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTotalDesc() {
    return addSortByInternal('total', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTransId() {
    return addSortByInternal('transId', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTransIdDesc() {
    return addSortByInternal('transId', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTransactionType() {
    return addSortByInternal('transactionType', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTransactionTypeDesc() {
    return addSortByInternal('transactionType', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByVersion() {
    return addSortByInternal('version', Sort.asc);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByVersionDesc() {
    return addSortByInternal('version', Sort.desc);
  }
}

extension TransactionHeaderEntityQueryWhereDistinct on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QDistinct> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByBeginDatetime() {
    return addDistinctByInternal('beginDatetime');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByBillingAddress({bool caseSensitive = true}) {
    return addDistinctByInternal('billingAddress',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByBusinessDate() {
    return addDistinctByInternal('businessDate');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByCreateTime() {
    return addDistinctByInternal('createTime');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByCustomerId({bool caseSensitive = true}) {
    return addDistinctByInternal('customerId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByCustomerName({bool caseSensitive = true}) {
    return addDistinctByInternal('customerName', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByCustomerPhone({bool caseSensitive = true}) {
    return addDistinctByInternal('customerPhone', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByEndDateTime() {
    return addDistinctByInternal('endDateTime');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByLastChangedAt() {
    return addDistinctByInternal('lastChangedAt');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByRoundTotal() {
    return addDistinctByInternal('roundTotal');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByShippingAddress({bool caseSensitive = true}) {
    return addDistinctByInternal('shippingAddress',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return addDistinctByInternal('status', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByStoreId() {
    return addDistinctByInternal('storeId');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctBySubtotal() {
    return addDistinctByInternal('subtotal');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctBySyncState() {
    return addDistinctByInternal('syncState');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByTaxTotal() {
    return addDistinctByInternal('taxTotal');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByTotal() {
    return addDistinctByInternal('total');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByTransId() {
    return addDistinctByInternal('transId');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByTransactionType({bool caseSensitive = true}) {
    return addDistinctByInternal('transactionType',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByUpdateTime() {
    return addDistinctByInternal('updateTime');
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByVersion() {
    return addDistinctByInternal('version');
  }
}

extension TransactionHeaderEntityQueryProperty on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QQueryProperty> {
  QueryBuilder<TransactionHeaderEntity, DateTime, QQueryOperations>
      beginDatetimeProperty() {
    return addPropertyNameInternal('beginDatetime');
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      billingAddressProperty() {
    return addPropertyNameInternal('billingAddress');
  }

  QueryBuilder<TransactionHeaderEntity, DateTime, QQueryOperations>
      businessDateProperty() {
    return addPropertyNameInternal('businessDate');
  }

  QueryBuilder<TransactionHeaderEntity, DateTime, QQueryOperations>
      createTimeProperty() {
    return addPropertyNameInternal('createTime');
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      customerIdProperty() {
    return addPropertyNameInternal('customerId');
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      customerNameProperty() {
    return addPropertyNameInternal('customerName');
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      customerPhoneProperty() {
    return addPropertyNameInternal('customerPhone');
  }

  QueryBuilder<TransactionHeaderEntity, DateTime?, QQueryOperations>
      endDateTimeProperty() {
    return addPropertyNameInternal('endDateTime');
  }

  QueryBuilder<TransactionHeaderEntity, DateTime?, QQueryOperations>
      lastChangedAtProperty() {
    return addPropertyNameInternal('lastChangedAt');
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      roundTotalProperty() {
    return addPropertyNameInternal('roundTotal');
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      shippingAddressProperty() {
    return addPropertyNameInternal('shippingAddress');
  }

  QueryBuilder<TransactionHeaderEntity, String, QQueryOperations>
      statusProperty() {
    return addPropertyNameInternal('status');
  }

  QueryBuilder<TransactionHeaderEntity, int, QQueryOperations>
      storeIdProperty() {
    return addPropertyNameInternal('storeId');
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      subtotalProperty() {
    return addPropertyNameInternal('subtotal');
  }

  QueryBuilder<TransactionHeaderEntity, int, QQueryOperations>
      syncStateProperty() {
    return addPropertyNameInternal('syncState');
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      taxTotalProperty() {
    return addPropertyNameInternal('taxTotal');
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      totalProperty() {
    return addPropertyNameInternal('total');
  }

  QueryBuilder<TransactionHeaderEntity, int, QQueryOperations>
      transIdProperty() {
    return addPropertyNameInternal('transId');
  }

  QueryBuilder<TransactionHeaderEntity, String, QQueryOperations>
      transactionTypeProperty() {
    return addPropertyNameInternal('transactionType');
  }

  QueryBuilder<TransactionHeaderEntity, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return addPropertyNameInternal('updateTime');
  }

  QueryBuilder<TransactionHeaderEntity, int, QQueryOperations>
      versionProperty() {
    return addPropertyNameInternal('version');
  }
}
