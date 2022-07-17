// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trn_line_item_modifier.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTransactionLineItemModifierEntityCollection on Isar {
  IsarCollection<TransactionLineItemModifierEntity>
      get transactionLineItemModifierEntitys => getCollection();
}

const TransactionLineItemModifierEntitySchema = CollectionSchema(
  name: 'TransactionLineItemModifierEntity',
  schema:
      '{"name":"TransactionLineItemModifierEntity","idName":"id","properties":[{"name":"amount","type":"Double"},{"name":"businessDate","type":"Long"},{"name":"dealId","type":"String"},{"name":"description","type":"String"},{"name":"discountCode","type":"String"},{"name":"discountReasonCode","type":"String"},{"name":"extendedAmount","type":"Double"},{"name":"groupDiscountId","type":"String"},{"name":"lineItemModSeq","type":"Long"},{"name":"lineItemSeq","type":"Long"},{"name":"notes","type":"String"},{"name":"percent","type":"Double"},{"name":"posId","type":"Long"},{"name":"priceModifierReasonCode","type":"String"},{"name":"promotionId","type":"String"},{"name":"storeId","type":"Long"},{"name":"transSeq","type":"Long"}],"indexes":[{"name":"storeId_transSeq_lineItemSeq","unique":false,"properties":[{"name":"storeId","type":"Value","caseSensitive":false},{"name":"transSeq","type":"Value","caseSensitive":false},{"name":"lineItemSeq","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'amount': 0,
    'businessDate': 1,
    'dealId': 2,
    'description': 3,
    'discountCode': 4,
    'discountReasonCode': 5,
    'extendedAmount': 6,
    'groupDiscountId': 7,
    'lineItemModSeq': 8,
    'lineItemSeq': 9,
    'notes': 10,
    'percent': 11,
    'posId': 12,
    'priceModifierReasonCode': 13,
    'promotionId': 14,
    'storeId': 15,
    'transSeq': 16
  },
  listProperties: {},
  indexIds: {'storeId_transSeq_lineItemSeq': 0},
  indexValueTypes: {
    'storeId_transSeq_lineItemSeq': [
      IndexValueType.long,
      IndexValueType.long,
      IndexValueType.long,
    ]
  },
  linkIds: {'lineItem': 0},
  backlinkLinkNames: {'lineItem': 'lineModifiers'},
  getId: _transactionLineItemModifierEntityGetId,
  getLinks: _transactionLineItemModifierEntityGetLinks,
  attachLinks: _transactionLineItemModifierEntityAttachLinks,
  serializeNative: _transactionLineItemModifierEntitySerializeNative,
  deserializeNative: _transactionLineItemModifierEntityDeserializeNative,
  deserializePropNative:
      _transactionLineItemModifierEntityDeserializePropNative,
  serializeWeb: _transactionLineItemModifierEntitySerializeWeb,
  deserializeWeb: _transactionLineItemModifierEntityDeserializeWeb,
  deserializePropWeb: _transactionLineItemModifierEntityDeserializePropWeb,
  version: 3,
);

int? _transactionLineItemModifierEntityGetId(
    TransactionLineItemModifierEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _transactionLineItemModifierEntityGetLinks(
    TransactionLineItemModifierEntity object) {
  return [object.lineItem];
}

void _transactionLineItemModifierEntitySerializeNative(
    IsarCollection<TransactionLineItemModifierEntity> collection,
    IsarRawObject rawObj,
    TransactionLineItemModifierEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.amount;
  final _amount = value0;
  final value1 = object.businessDate;
  final _businessDate = value1;
  final value2 = object.dealId;
  IsarUint8List? _dealId;
  if (value2 != null) {
    _dealId = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_dealId?.length ?? 0) as int;
  final value3 = object.description;
  IsarUint8List? _description;
  if (value3 != null) {
    _description = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_description?.length ?? 0) as int;
  final value4 = object.discountCode;
  IsarUint8List? _discountCode;
  if (value4 != null) {
    _discountCode = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_discountCode?.length ?? 0) as int;
  final value5 = object.discountReasonCode;
  IsarUint8List? _discountReasonCode;
  if (value5 != null) {
    _discountReasonCode = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_discountReasonCode?.length ?? 0) as int;
  final value6 = object.extendedAmount;
  final _extendedAmount = value6;
  final value7 = object.groupDiscountId;
  IsarUint8List? _groupDiscountId;
  if (value7 != null) {
    _groupDiscountId = IsarBinaryWriter.utf8Encoder.convert(value7);
  }
  dynamicSize += (_groupDiscountId?.length ?? 0) as int;
  final value8 = object.lineItemModSeq;
  final _lineItemModSeq = value8;
  final value9 = object.lineItemSeq;
  final _lineItemSeq = value9;
  final value10 = object.notes;
  IsarUint8List? _notes;
  if (value10 != null) {
    _notes = IsarBinaryWriter.utf8Encoder.convert(value10);
  }
  dynamicSize += (_notes?.length ?? 0) as int;
  final value11 = object.percent;
  final _percent = value11;
  final value12 = object.posId;
  final _posId = value12;
  final value13 = object.priceModifierReasonCode;
  final _priceModifierReasonCode =
      IsarBinaryWriter.utf8Encoder.convert(value13);
  dynamicSize += (_priceModifierReasonCode.length) as int;
  final value14 = object.promotionId;
  IsarUint8List? _promotionId;
  if (value14 != null) {
    _promotionId = IsarBinaryWriter.utf8Encoder.convert(value14);
  }
  dynamicSize += (_promotionId?.length ?? 0) as int;
  final value15 = object.storeId;
  final _storeId = value15;
  final value16 = object.transSeq;
  final _transSeq = value16;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _amount);
  writer.writeDateTime(offsets[1], _businessDate);
  writer.writeBytes(offsets[2], _dealId);
  writer.writeBytes(offsets[3], _description);
  writer.writeBytes(offsets[4], _discountCode);
  writer.writeBytes(offsets[5], _discountReasonCode);
  writer.writeDouble(offsets[6], _extendedAmount);
  writer.writeBytes(offsets[7], _groupDiscountId);
  writer.writeLong(offsets[8], _lineItemModSeq);
  writer.writeLong(offsets[9], _lineItemSeq);
  writer.writeBytes(offsets[10], _notes);
  writer.writeDouble(offsets[11], _percent);
  writer.writeLong(offsets[12], _posId);
  writer.writeBytes(offsets[13], _priceModifierReasonCode);
  writer.writeBytes(offsets[14], _promotionId);
  writer.writeLong(offsets[15], _storeId);
  writer.writeLong(offsets[16], _transSeq);
}

TransactionLineItemModifierEntity
    _transactionLineItemModifierEntityDeserializeNative(
        IsarCollection<TransactionLineItemModifierEntity> collection,
        int id,
        IsarBinaryReader reader,
        List<int> offsets) {
  final object = TransactionLineItemModifierEntity(
    amount: reader.readDouble(offsets[0]),
    businessDate: reader.readDateTime(offsets[1]),
    dealId: reader.readStringOrNull(offsets[2]),
    description: reader.readStringOrNull(offsets[3]),
    discountCode: reader.readStringOrNull(offsets[4]),
    discountReasonCode: reader.readStringOrNull(offsets[5]),
    extendedAmount: reader.readDouble(offsets[6]),
    groupDiscountId: reader.readStringOrNull(offsets[7]),
    id: id,
    lineItemModSeq: reader.readLong(offsets[8]),
    lineItemSeq: reader.readLong(offsets[9]),
    notes: reader.readStringOrNull(offsets[10]),
    percent: reader.readDoubleOrNull(offsets[11]),
    posId: reader.readLong(offsets[12]),
    priceModifierReasonCode: reader.readString(offsets[13]),
    promotionId: reader.readStringOrNull(offsets[14]),
    storeId: reader.readLong(offsets[15]),
    transSeq: reader.readLong(offsets[16]),
  );
  _transactionLineItemModifierEntityAttachLinks(collection, id, object);
  return object;
}

P _transactionLineItemModifierEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _transactionLineItemModifierEntitySerializeWeb(
    IsarCollection<TransactionLineItemModifierEntity> collection,
    TransactionLineItemModifierEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'businessDate',
      object.businessDate.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'dealId', object.dealId);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'discountCode', object.discountCode);
  IsarNative.jsObjectSet(
      jsObj, 'discountReasonCode', object.discountReasonCode);
  IsarNative.jsObjectSet(jsObj, 'extendedAmount', object.extendedAmount);
  IsarNative.jsObjectSet(jsObj, 'groupDiscountId', object.groupDiscountId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'lineItemModSeq', object.lineItemModSeq);
  IsarNative.jsObjectSet(jsObj, 'lineItemSeq', object.lineItemSeq);
  IsarNative.jsObjectSet(jsObj, 'notes', object.notes);
  IsarNative.jsObjectSet(jsObj, 'percent', object.percent);
  IsarNative.jsObjectSet(jsObj, 'posId', object.posId);
  IsarNative.jsObjectSet(
      jsObj, 'priceModifierReasonCode', object.priceModifierReasonCode);
  IsarNative.jsObjectSet(jsObj, 'promotionId', object.promotionId);
  IsarNative.jsObjectSet(jsObj, 'storeId', object.storeId);
  IsarNative.jsObjectSet(jsObj, 'transSeq', object.transSeq);
  return jsObj;
}

TransactionLineItemModifierEntity
    _transactionLineItemModifierEntityDeserializeWeb(
        IsarCollection<TransactionLineItemModifierEntity> collection,
        dynamic jsObj) {
  final object = TransactionLineItemModifierEntity(
    amount: IsarNative.jsObjectGet(jsObj, 'amount') ?? double.negativeInfinity,
    businessDate: IsarNative.jsObjectGet(jsObj, 'businessDate') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'businessDate'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    dealId: IsarNative.jsObjectGet(jsObj, 'dealId'),
    description: IsarNative.jsObjectGet(jsObj, 'description'),
    discountCode: IsarNative.jsObjectGet(jsObj, 'discountCode'),
    discountReasonCode: IsarNative.jsObjectGet(jsObj, 'discountReasonCode'),
    extendedAmount: IsarNative.jsObjectGet(jsObj, 'extendedAmount') ??
        double.negativeInfinity,
    groupDiscountId: IsarNative.jsObjectGet(jsObj, 'groupDiscountId'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    lineItemModSeq: IsarNative.jsObjectGet(jsObj, 'lineItemModSeq') ??
        double.negativeInfinity,
    lineItemSeq:
        IsarNative.jsObjectGet(jsObj, 'lineItemSeq') ?? double.negativeInfinity,
    notes: IsarNative.jsObjectGet(jsObj, 'notes'),
    percent: IsarNative.jsObjectGet(jsObj, 'percent'),
    posId: IsarNative.jsObjectGet(jsObj, 'posId') ?? double.negativeInfinity,
    priceModifierReasonCode:
        IsarNative.jsObjectGet(jsObj, 'priceModifierReasonCode') ?? '',
    promotionId: IsarNative.jsObjectGet(jsObj, 'promotionId'),
    storeId:
        IsarNative.jsObjectGet(jsObj, 'storeId') ?? double.negativeInfinity,
    transSeq:
        IsarNative.jsObjectGet(jsObj, 'transSeq') ?? double.negativeInfinity,
  );
  _transactionLineItemModifierEntityAttachLinks(
      collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _transactionLineItemModifierEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount') ??
          double.negativeInfinity) as P;
    case 'businessDate':
      return (IsarNative.jsObjectGet(jsObj, 'businessDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'businessDate'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'dealId':
      return (IsarNative.jsObjectGet(jsObj, 'dealId')) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
    case 'discountCode':
      return (IsarNative.jsObjectGet(jsObj, 'discountCode')) as P;
    case 'discountReasonCode':
      return (IsarNative.jsObjectGet(jsObj, 'discountReasonCode')) as P;
    case 'extendedAmount':
      return (IsarNative.jsObjectGet(jsObj, 'extendedAmount') ??
          double.negativeInfinity) as P;
    case 'groupDiscountId':
      return (IsarNative.jsObjectGet(jsObj, 'groupDiscountId')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'lineItemModSeq':
      return (IsarNative.jsObjectGet(jsObj, 'lineItemModSeq') ??
          double.negativeInfinity) as P;
    case 'lineItemSeq':
      return (IsarNative.jsObjectGet(jsObj, 'lineItemSeq') ??
          double.negativeInfinity) as P;
    case 'notes':
      return (IsarNative.jsObjectGet(jsObj, 'notes')) as P;
    case 'percent':
      return (IsarNative.jsObjectGet(jsObj, 'percent')) as P;
    case 'posId':
      return (IsarNative.jsObjectGet(jsObj, 'posId') ?? double.negativeInfinity)
          as P;
    case 'priceModifierReasonCode':
      return (IsarNative.jsObjectGet(jsObj, 'priceModifierReasonCode') ?? '')
          as P;
    case 'promotionId':
      return (IsarNative.jsObjectGet(jsObj, 'promotionId')) as P;
    case 'storeId':
      return (IsarNative.jsObjectGet(jsObj, 'storeId') ??
          double.negativeInfinity) as P;
    case 'transSeq':
      return (IsarNative.jsObjectGet(jsObj, 'transSeq') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _transactionLineItemModifierEntityAttachLinks(
    IsarCollection col, int id, TransactionLineItemModifierEntity object) {
  object.lineItem
      .attach(col, col.isar.transactionLineItemEntitys, 'lineItem', id);
}

extension TransactionLineItemModifierEntityQueryWhereSort on QueryBuilder<
    TransactionLineItemModifierEntity,
    TransactionLineItemModifierEntity,
    QWhere> {
  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhere> anyStoreIdTransSeqLineItemSeq() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'storeId_transSeq_lineItemSeq'));
  }
}

extension TransactionLineItemModifierEntityQueryWhere on QueryBuilder<
    TransactionLineItemModifierEntity,
    TransactionLineItemModifierEntity,
    QWhereClause> {
  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
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
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdEqualTo(int storeId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'storeId_transSeq_lineItemSeq',
      value: [storeId],
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdNotEqualTo(int storeId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        upper: [storeId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        lower: [storeId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        lower: [storeId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        upper: [storeId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterWhereClause> storeIdGreaterThan(
    int storeId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'storeId_transSeq_lineItemSeq',
      lower: [storeId],
      includeLower: include,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterWhereClause> storeIdLessThan(
    int storeId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'storeId_transSeq_lineItemSeq',
      upper: [storeId],
      includeUpper: include,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterWhereClause> storeIdBetween(
    int lowerStoreId,
    int upperStoreId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'storeId_transSeq_lineItemSeq',
      lower: [lowerStoreId],
      includeLower: includeLower,
      upper: [upperStoreId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdTransSeqEqualTo(int storeId, int transSeq) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'storeId_transSeq_lineItemSeq',
      value: [storeId, transSeq],
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdTransSeqNotEqualTo(int storeId, int transSeq) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        upper: [storeId, transSeq],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        lower: [storeId, transSeq],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        lower: [storeId, transSeq],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        upper: [storeId, transSeq],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdEqualToTransSeqGreaterThan(
    int storeId,
    int transSeq, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'storeId_transSeq_lineItemSeq',
      lower: [storeId, transSeq],
      includeLower: include,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdEqualToTransSeqLessThan(
    int storeId,
    int transSeq, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'storeId_transSeq_lineItemSeq',
      upper: [storeId, transSeq],
      includeUpper: include,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdEqualToTransSeqBetween(
    int storeId,
    int lowerTransSeq,
    int upperTransSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'storeId_transSeq_lineItemSeq',
      lower: [storeId, lowerTransSeq],
      includeLower: includeLower,
      upper: [storeId, upperTransSeq],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterWhereClause>
      storeIdTransSeqLineItemSeqEqualTo(
          int storeId, int transSeq, int lineItemSeq) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'storeId_transSeq_lineItemSeq',
      value: [storeId, transSeq, lineItemSeq],
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterWhereClause>
      storeIdTransSeqLineItemSeqNotEqualTo(
          int storeId, int transSeq, int lineItemSeq) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        upper: [storeId, transSeq, lineItemSeq],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        lower: [storeId, transSeq, lineItemSeq],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        lower: [storeId, transSeq, lineItemSeq],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'storeId_transSeq_lineItemSeq',
        upper: [storeId, transSeq, lineItemSeq],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdTransSeqEqualToLineItemSeqGreaterThan(
    int storeId,
    int transSeq,
    int lineItemSeq, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'storeId_transSeq_lineItemSeq',
      lower: [storeId, transSeq, lineItemSeq],
      includeLower: include,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdTransSeqEqualToLineItemSeqLessThan(
    int storeId,
    int transSeq,
    int lineItemSeq, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'storeId_transSeq_lineItemSeq',
      upper: [storeId, transSeq, lineItemSeq],
      includeUpper: include,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterWhereClause> storeIdTransSeqEqualToLineItemSeqBetween(
    int storeId,
    int transSeq,
    int lowerLineItemSeq,
    int upperLineItemSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'storeId_transSeq_lineItemSeq',
      lower: [storeId, transSeq, lowerLineItemSeq],
      includeLower: includeLower,
      upper: [storeId, transSeq, upperLineItemSeq],
      includeUpper: includeUpper,
    ));
  }
}

extension TransactionLineItemModifierEntityQueryFilter on QueryBuilder<
    TransactionLineItemModifierEntity,
    TransactionLineItemModifierEntity,
    QFilterCondition> {
  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> amountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> amountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
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
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> businessDateEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'businessDate',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
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

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> dealIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'dealId',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> dealIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dealId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> dealIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'dealId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> dealIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'dealId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> dealIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dealId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> dealIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'dealId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> dealIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'dealId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      dealIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'dealId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      dealIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'dealId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> descriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> descriptionEqualTo(
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> descriptionGreaterThan(
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> descriptionLessThan(
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> descriptionBetween(
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> descriptionStartsWith(
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'discountCode',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discountCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      discountCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      discountCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'discountCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountReasonCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'discountReasonCode',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountReasonCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'discountReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountReasonCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'discountReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountReasonCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'discountReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountReasonCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discountReasonCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountReasonCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'discountReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> discountReasonCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'discountReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      discountReasonCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'discountReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      discountReasonCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'discountReasonCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> extendedAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'extendedAmount',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> extendedAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'extendedAmount',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> extendedAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'extendedAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> groupDiscountIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'groupDiscountId',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> groupDiscountIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'groupDiscountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> groupDiscountIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'groupDiscountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> groupDiscountIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'groupDiscountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> groupDiscountIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'groupDiscountId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> groupDiscountIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'groupDiscountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> groupDiscountIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'groupDiscountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      groupDiscountIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'groupDiscountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      groupDiscountIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'groupDiscountId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> idBetween(
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
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> lineItemModSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lineItemModSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> lineItemModSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lineItemModSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> lineItemModSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lineItemModSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> lineItemModSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lineItemModSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> lineItemSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> lineItemSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> lineItemSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> lineItemSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lineItemSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> notesIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'notes',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> notesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> notesGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> notesLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> notesBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'notes',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      notesContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      notesMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'notes',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> percentIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'percent',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> percentGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'percent',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> percentLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'percent',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> percentBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'percent',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> posIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'posId',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> posIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'posId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> posIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'posId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> posIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'posId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> priceModifierReasonCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'priceModifierReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> priceModifierReasonCodeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'priceModifierReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> priceModifierReasonCodeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'priceModifierReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> priceModifierReasonCodeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priceModifierReasonCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> priceModifierReasonCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'priceModifierReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> priceModifierReasonCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'priceModifierReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      priceModifierReasonCodeContains(String value,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'priceModifierReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      priceModifierReasonCodeMatches(String pattern,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'priceModifierReasonCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> promotionIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'promotionId',
      value: null,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> promotionIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'promotionId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> promotionIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'promotionId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> promotionIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'promotionId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> promotionIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'promotionId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> promotionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'promotionId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> promotionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'promotionId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      promotionIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'promotionId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      promotionIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'promotionId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> storeIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeId',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
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

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> storeIdLessThan(
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

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> storeIdBetween(
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> transSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transSeq',
      value: value,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
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

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
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

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> transSeqBetween(
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
}

extension TransactionLineItemModifierEntityQueryLinks on QueryBuilder<
    TransactionLineItemModifierEntity,
    TransactionLineItemModifierEntity,
    QFilterCondition> {
  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      lineItem(FilterQuery<TransactionLineItemEntity> q) {
    return linkInternal(
      isar.transactionLineItemEntitys,
      q,
      'lineItem',
    );
  }
}

extension TransactionLineItemModifierEntityQueryWhereSortBy on QueryBuilder<
    TransactionLineItemModifierEntity,
    TransactionLineItemModifierEntity,
    QSortBy> {
  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByBusinessDate() {
    return addSortByInternal('businessDate', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByBusinessDateDesc() {
    return addSortByInternal('businessDate', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByDealId() {
    return addSortByInternal('dealId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByDealIdDesc() {
    return addSortByInternal('dealId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByDiscountCode() {
    return addSortByInternal('discountCode', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByDiscountCodeDesc() {
    return addSortByInternal('discountCode', Sort.desc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByDiscountReasonCode() {
    return addSortByInternal('discountReasonCode', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByDiscountReasonCodeDesc() {
    return addSortByInternal('discountReasonCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByExtendedAmount() {
    return addSortByInternal('extendedAmount', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByExtendedAmountDesc() {
    return addSortByInternal('extendedAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByGroupDiscountId() {
    return addSortByInternal('groupDiscountId', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByGroupDiscountIdDesc() {
    return addSortByInternal('groupDiscountId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByLineItemModSeq() {
    return addSortByInternal('lineItemModSeq', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByLineItemModSeqDesc() {
    return addSortByInternal('lineItemModSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByLineItemSeq() {
    return addSortByInternal('lineItemSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByLineItemSeqDesc() {
    return addSortByInternal('lineItemSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByNotes() {
    return addSortByInternal('notes', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByNotesDesc() {
    return addSortByInternal('notes', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByPercent() {
    return addSortByInternal('percent', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByPercentDesc() {
    return addSortByInternal('percent', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByPosId() {
    return addSortByInternal('posId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByPosIdDesc() {
    return addSortByInternal('posId', Sort.desc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByPriceModifierReasonCode() {
    return addSortByInternal('priceModifierReasonCode', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> sortByPriceModifierReasonCodeDesc() {
    return addSortByInternal('priceModifierReasonCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByPromotionId() {
    return addSortByInternal('promotionId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByPromotionIdDesc() {
    return addSortByInternal('promotionId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByTransSeq() {
    return addSortByInternal('transSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByTransSeqDesc() {
    return addSortByInternal('transSeq', Sort.desc);
  }
}

extension TransactionLineItemModifierEntityQueryWhereSortThenBy on QueryBuilder<
    TransactionLineItemModifierEntity,
    TransactionLineItemModifierEntity,
    QSortThenBy> {
  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByBusinessDate() {
    return addSortByInternal('businessDate', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByBusinessDateDesc() {
    return addSortByInternal('businessDate', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByDealId() {
    return addSortByInternal('dealId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByDealIdDesc() {
    return addSortByInternal('dealId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByDiscountCode() {
    return addSortByInternal('discountCode', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByDiscountCodeDesc() {
    return addSortByInternal('discountCode', Sort.desc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByDiscountReasonCode() {
    return addSortByInternal('discountReasonCode', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByDiscountReasonCodeDesc() {
    return addSortByInternal('discountReasonCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByExtendedAmount() {
    return addSortByInternal('extendedAmount', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByExtendedAmountDesc() {
    return addSortByInternal('extendedAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByGroupDiscountId() {
    return addSortByInternal('groupDiscountId', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByGroupDiscountIdDesc() {
    return addSortByInternal('groupDiscountId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByLineItemModSeq() {
    return addSortByInternal('lineItemModSeq', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByLineItemModSeqDesc() {
    return addSortByInternal('lineItemModSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByLineItemSeq() {
    return addSortByInternal('lineItemSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByLineItemSeqDesc() {
    return addSortByInternal('lineItemSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByNotes() {
    return addSortByInternal('notes', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByNotesDesc() {
    return addSortByInternal('notes', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByPercent() {
    return addSortByInternal('percent', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByPercentDesc() {
    return addSortByInternal('percent', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByPosId() {
    return addSortByInternal('posId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByPosIdDesc() {
    return addSortByInternal('posId', Sort.desc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByPriceModifierReasonCode() {
    return addSortByInternal('priceModifierReasonCode', Sort.asc);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterSortBy> thenByPriceModifierReasonCodeDesc() {
    return addSortByInternal('priceModifierReasonCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByPromotionId() {
    return addSortByInternal('promotionId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByPromotionIdDesc() {
    return addSortByInternal('promotionId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByTransSeq() {
    return addSortByInternal('transSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByTransSeqDesc() {
    return addSortByInternal('transSeq', Sort.desc);
  }
}

extension TransactionLineItemModifierEntityQueryWhereDistinct on QueryBuilder<
    TransactionLineItemModifierEntity,
    TransactionLineItemModifierEntity,
    QDistinct> {
  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByAmount() {
    return addDistinctByInternal('amount');
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByBusinessDate() {
    return addDistinctByInternal('businessDate');
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QDistinct> distinctByDealId({bool caseSensitive = true}) {
    return addDistinctByInternal('dealId', caseSensitive: caseSensitive);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QDistinct> distinctByDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QDistinct> distinctByDiscountCode({bool caseSensitive = true}) {
    return addDistinctByInternal('discountCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QDistinct> distinctByDiscountReasonCode({bool caseSensitive = true}) {
    return addDistinctByInternal('discountReasonCode',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByExtendedAmount() {
    return addDistinctByInternal('extendedAmount');
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QDistinct> distinctByGroupDiscountId({bool caseSensitive = true}) {
    return addDistinctByInternal('groupDiscountId',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByLineItemModSeq() {
    return addDistinctByInternal('lineItemModSeq');
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByLineItemSeq() {
    return addDistinctByInternal('lineItemSeq');
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QDistinct> distinctByNotes({bool caseSensitive = true}) {
    return addDistinctByInternal('notes', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByPercent() {
    return addDistinctByInternal('percent');
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByPosId() {
    return addDistinctByInternal('posId');
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QDistinct>
      distinctByPriceModifierReasonCode({bool caseSensitive = true}) {
    return addDistinctByInternal('priceModifierReasonCode',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QDistinct> distinctByPromotionId({bool caseSensitive = true}) {
    return addDistinctByInternal('promotionId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByStoreId() {
    return addDistinctByInternal('storeId');
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByTransSeq() {
    return addDistinctByInternal('transSeq');
  }
}

extension TransactionLineItemModifierEntityQueryProperty on QueryBuilder<
    TransactionLineItemModifierEntity,
    TransactionLineItemModifierEntity,
    QQueryProperty> {
  QueryBuilder<TransactionLineItemModifierEntity, double, QQueryOperations>
      amountProperty() {
    return addPropertyNameInternal('amount');
  }

  QueryBuilder<TransactionLineItemModifierEntity, DateTime, QQueryOperations>
      businessDateProperty() {
    return addPropertyNameInternal('businessDate');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String?, QQueryOperations>
      dealIdProperty() {
    return addPropertyNameInternal('dealId');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String?, QQueryOperations>
      descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String?, QQueryOperations>
      discountCodeProperty() {
    return addPropertyNameInternal('discountCode');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String?, QQueryOperations>
      discountReasonCodeProperty() {
    return addPropertyNameInternal('discountReasonCode');
  }

  QueryBuilder<TransactionLineItemModifierEntity, double, QQueryOperations>
      extendedAmountProperty() {
    return addPropertyNameInternal('extendedAmount');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String?, QQueryOperations>
      groupDiscountIdProperty() {
    return addPropertyNameInternal('groupDiscountId');
  }

  QueryBuilder<TransactionLineItemModifierEntity, int?, QQueryOperations>
      idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TransactionLineItemModifierEntity, int, QQueryOperations>
      lineItemModSeqProperty() {
    return addPropertyNameInternal('lineItemModSeq');
  }

  QueryBuilder<TransactionLineItemModifierEntity, int, QQueryOperations>
      lineItemSeqProperty() {
    return addPropertyNameInternal('lineItemSeq');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String?, QQueryOperations>
      notesProperty() {
    return addPropertyNameInternal('notes');
  }

  QueryBuilder<TransactionLineItemModifierEntity, double?, QQueryOperations>
      percentProperty() {
    return addPropertyNameInternal('percent');
  }

  QueryBuilder<TransactionLineItemModifierEntity, int, QQueryOperations>
      posIdProperty() {
    return addPropertyNameInternal('posId');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String, QQueryOperations>
      priceModifierReasonCodeProperty() {
    return addPropertyNameInternal('priceModifierReasonCode');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String?, QQueryOperations>
      promotionIdProperty() {
    return addPropertyNameInternal('promotionId');
  }

  QueryBuilder<TransactionLineItemModifierEntity, int, QQueryOperations>
      storeIdProperty() {
    return addPropertyNameInternal('storeId');
  }

  QueryBuilder<TransactionLineItemModifierEntity, int, QQueryOperations>
      transSeqProperty() {
    return addPropertyNameInternal('transSeq');
  }
}
