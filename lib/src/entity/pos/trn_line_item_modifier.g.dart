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
      '{"name":"TransactionLineItemModifierEntity","idName":"id","properties":[{"name":"amount","type":"Double"},{"name":"businessDate","type":"Long"},{"name":"category","type":"String"},{"name":"description","type":"String"},{"name":"lineItemModSeq","type":"Long"},{"name":"lineItemSeq","type":"Long"},{"name":"posId","type":"Long"},{"name":"storeId","type":"Long"},{"name":"transSeq","type":"Long"}],"indexes":[{"name":"storeId_transSeq_lineItemSeq","unique":false,"properties":[{"name":"storeId","type":"Value","caseSensitive":false},{"name":"transSeq","type":"Value","caseSensitive":false},{"name":"lineItemSeq","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'amount': 0,
    'businessDate': 1,
    'category': 2,
    'description': 3,
    'lineItemModSeq': 4,
    'lineItemSeq': 5,
    'posId': 6,
    'storeId': 7,
    'transSeq': 8
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
  final value2 = object.category;
  final _category = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_category.length) as int;
  final value3 = object.description;
  final _description = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_description.length) as int;
  final value4 = object.lineItemModSeq;
  final _lineItemModSeq = value4;
  final value5 = object.lineItemSeq;
  final _lineItemSeq = value5;
  final value6 = object.posId;
  final _posId = value6;
  final value7 = object.storeId;
  final _storeId = value7;
  final value8 = object.transSeq;
  final _transSeq = value8;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _amount);
  writer.writeDateTime(offsets[1], _businessDate);
  writer.writeBytes(offsets[2], _category);
  writer.writeBytes(offsets[3], _description);
  writer.writeLong(offsets[4], _lineItemModSeq);
  writer.writeLong(offsets[5], _lineItemSeq);
  writer.writeLong(offsets[6], _posId);
  writer.writeLong(offsets[7], _storeId);
  writer.writeLong(offsets[8], _transSeq);
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
    category: reader.readString(offsets[2]),
    description: reader.readString(offsets[3]),
    id: id,
    lineItemModSeq: reader.readLong(offsets[4]),
    lineItemSeq: reader.readLong(offsets[5]),
    posId: reader.readLong(offsets[6]),
    storeId: reader.readLong(offsets[7]),
    transSeq: reader.readLong(offsets[8]),
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
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
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
  IsarNative.jsObjectSet(jsObj, 'category', object.category);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'lineItemModSeq', object.lineItemModSeq);
  IsarNative.jsObjectSet(jsObj, 'lineItemSeq', object.lineItemSeq);
  IsarNative.jsObjectSet(jsObj, 'posId', object.posId);
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
    category: IsarNative.jsObjectGet(jsObj, 'category') ?? '',
    description: IsarNative.jsObjectGet(jsObj, 'description') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    lineItemModSeq: IsarNative.jsObjectGet(jsObj, 'lineItemModSeq') ??
        double.negativeInfinity,
    lineItemSeq:
        IsarNative.jsObjectGet(jsObj, 'lineItemSeq') ?? double.negativeInfinity,
    posId: IsarNative.jsObjectGet(jsObj, 'posId') ?? double.negativeInfinity,
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
    case 'category':
      return (IsarNative.jsObjectGet(jsObj, 'category') ?? '') as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'lineItemModSeq':
      return (IsarNative.jsObjectGet(jsObj, 'lineItemModSeq') ??
          double.negativeInfinity) as P;
    case 'lineItemSeq':
      return (IsarNative.jsObjectGet(jsObj, 'lineItemSeq') ??
          double.negativeInfinity) as P;
    case 'posId':
      return (IsarNative.jsObjectGet(jsObj, 'posId') ?? double.negativeInfinity)
          as P;
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
      TransactionLineItemModifierEntity, QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> categoryGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> categoryLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'category',
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
      QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemModifierEntity,
          TransactionLineItemModifierEntity, QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'category',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QAfterFilterCondition> descriptionEqualTo(
    String value, {
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
    String value, {
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
    String value, {
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
    String lower,
    String upper, {
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
      TransactionLineItemModifierEntity, QAfterSortBy> sortByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
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
      TransactionLineItemModifierEntity, QAfterSortBy> sortByPosId() {
    return addSortByInternal('posId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> sortByPosIdDesc() {
    return addSortByInternal('posId', Sort.desc);
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
      TransactionLineItemModifierEntity, QAfterSortBy> thenByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
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
      TransactionLineItemModifierEntity, QAfterSortBy> thenByPosId() {
    return addSortByInternal('posId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QAfterSortBy> thenByPosIdDesc() {
    return addSortByInternal('posId', Sort.desc);
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
      QDistinct> distinctByCategory({bool caseSensitive = true}) {
    return addDistinctByInternal('category', caseSensitive: caseSensitive);
  }

  QueryBuilder<
      TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity,
      QDistinct> distinctByDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
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

  QueryBuilder<TransactionLineItemModifierEntity,
      TransactionLineItemModifierEntity, QDistinct> distinctByPosId() {
    return addDistinctByInternal('posId');
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

  QueryBuilder<TransactionLineItemModifierEntity, String, QQueryOperations>
      categoryProperty() {
    return addPropertyNameInternal('category');
  }

  QueryBuilder<TransactionLineItemModifierEntity, String, QQueryOperations>
      descriptionProperty() {
    return addPropertyNameInternal('description');
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

  QueryBuilder<TransactionLineItemModifierEntity, int, QQueryOperations>
      posIdProperty() {
    return addPropertyNameInternal('posId');
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
