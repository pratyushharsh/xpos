// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_rule_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTaxRuleEntityCollection on Isar {
  IsarCollection<TaxRuleEntity> get taxRuleEntitys => getCollection();
}

const TaxRuleEntitySchema = CollectionSchema(
  name: 'TaxRuleEntity',
  schema:
      '{"name":"TaxRuleEntity","idName":"id","properties":[{"name":"amount","type":"Double"},{"name":"effectiveDateTimeStamp","type":"Long"},{"name":"expirationDateTimeStamp","type":"Long"},{"name":"groupId","type":"String"},{"name":"locationId","type":"String"},{"name":"maximumTaxableAmount","type":"Double"},{"name":"minimumTaxableAmount","type":"Double"},{"name":"percent","type":"Double"},{"name":"ruleName","type":"String"},{"name":"ruleSequence","type":"Long"}],"indexes":[{"name":"groupId_ruleName","unique":true,"properties":[{"name":"groupId","type":"Hash","caseSensitive":true},{"name":"ruleName","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'amount': 0,
    'effectiveDateTimeStamp': 1,
    'expirationDateTimeStamp': 2,
    'groupId': 3,
    'locationId': 4,
    'maximumTaxableAmount': 5,
    'minimumTaxableAmount': 6,
    'percent': 7,
    'ruleName': 8,
    'ruleSequence': 9
  },
  listProperties: {},
  indexIds: {'groupId_ruleName': 0},
  indexValueTypes: {
    'groupId_ruleName': [
      IndexValueType.stringHash,
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _taxRuleEntityGetId,
  getLinks: _taxRuleEntityGetLinks,
  attachLinks: _taxRuleEntityAttachLinks,
  serializeNative: _taxRuleEntitySerializeNative,
  deserializeNative: _taxRuleEntityDeserializeNative,
  deserializePropNative: _taxRuleEntityDeserializePropNative,
  serializeWeb: _taxRuleEntitySerializeWeb,
  deserializeWeb: _taxRuleEntityDeserializeWeb,
  deserializePropWeb: _taxRuleEntityDeserializePropWeb,
  version: 3,
);

int? _taxRuleEntityGetId(TaxRuleEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _taxRuleEntityGetLinks(TaxRuleEntity object) {
  return [];
}

void _taxRuleEntitySerializeNative(
    IsarCollection<TaxRuleEntity> collection,
    IsarRawObject rawObj,
    TaxRuleEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.amount;
  final _amount = value0;
  final value1 = object.effectiveDateTimeStamp;
  final _effectiveDateTimeStamp = value1;
  final value2 = object.expirationDateTimeStamp;
  final _expirationDateTimeStamp = value2;
  final value3 = object.groupId;
  final _groupId = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_groupId.length) as int;
  final value4 = object.locationId;
  final _locationId = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_locationId.length) as int;
  final value5 = object.maximumTaxableAmount;
  final _maximumTaxableAmount = value5;
  final value6 = object.minimumTaxableAmount;
  final _minimumTaxableAmount = value6;
  final value7 = object.percent;
  final _percent = value7;
  final value8 = object.ruleName;
  final _ruleName = IsarBinaryWriter.utf8Encoder.convert(value8);
  dynamicSize += (_ruleName.length) as int;
  final value9 = object.ruleSequence;
  final _ruleSequence = value9;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _amount);
  writer.writeDateTime(offsets[1], _effectiveDateTimeStamp);
  writer.writeDateTime(offsets[2], _expirationDateTimeStamp);
  writer.writeBytes(offsets[3], _groupId);
  writer.writeBytes(offsets[4], _locationId);
  writer.writeDouble(offsets[5], _maximumTaxableAmount);
  writer.writeDouble(offsets[6], _minimumTaxableAmount);
  writer.writeDouble(offsets[7], _percent);
  writer.writeBytes(offsets[8], _ruleName);
  writer.writeLong(offsets[9], _ruleSequence);
}

TaxRuleEntity _taxRuleEntityDeserializeNative(
    IsarCollection<TaxRuleEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = TaxRuleEntity(
    amount: reader.readDoubleOrNull(offsets[0]),
    effectiveDateTimeStamp: reader.readDateTimeOrNull(offsets[1]),
    expirationDateTimeStamp: reader.readDateTimeOrNull(offsets[2]),
    groupId: reader.readString(offsets[3]),
    id: id,
    locationId: reader.readString(offsets[4]),
    maximumTaxableAmount: reader.readDoubleOrNull(offsets[5]),
    minimumTaxableAmount: reader.readDoubleOrNull(offsets[6]),
    percent: reader.readDoubleOrNull(offsets[7]),
    ruleName: reader.readString(offsets[8]),
    ruleSequence: reader.readLong(offsets[9]),
  );
  return object;
}

P _taxRuleEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _taxRuleEntitySerializeWeb(
    IsarCollection<TaxRuleEntity> collection, TaxRuleEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'effectiveDateTimeStamp',
      object.effectiveDateTimeStamp?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'expirationDateTimeStamp',
      object.expirationDateTimeStamp?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'groupId', object.groupId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'locationId', object.locationId);
  IsarNative.jsObjectSet(
      jsObj, 'maximumTaxableAmount', object.maximumTaxableAmount);
  IsarNative.jsObjectSet(
      jsObj, 'minimumTaxableAmount', object.minimumTaxableAmount);
  IsarNative.jsObjectSet(jsObj, 'percent', object.percent);
  IsarNative.jsObjectSet(jsObj, 'ruleName', object.ruleName);
  IsarNative.jsObjectSet(jsObj, 'ruleSequence', object.ruleSequence);
  return jsObj;
}

TaxRuleEntity _taxRuleEntityDeserializeWeb(
    IsarCollection<TaxRuleEntity> collection, dynamic jsObj) {
  final object = TaxRuleEntity(
    amount: IsarNative.jsObjectGet(jsObj, 'amount'),
    effectiveDateTimeStamp:
        IsarNative.jsObjectGet(jsObj, 'effectiveDateTimeStamp') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'effectiveDateTimeStamp'),
                    isUtc: true)
                .toLocal()
            : null,
    expirationDateTimeStamp:
        IsarNative.jsObjectGet(jsObj, 'expirationDateTimeStamp') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'expirationDateTimeStamp'),
                    isUtc: true)
                .toLocal()
            : null,
    groupId: IsarNative.jsObjectGet(jsObj, 'groupId') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    locationId: IsarNative.jsObjectGet(jsObj, 'locationId') ?? '',
    maximumTaxableAmount: IsarNative.jsObjectGet(jsObj, 'maximumTaxableAmount'),
    minimumTaxableAmount: IsarNative.jsObjectGet(jsObj, 'minimumTaxableAmount'),
    percent: IsarNative.jsObjectGet(jsObj, 'percent'),
    ruleName: IsarNative.jsObjectGet(jsObj, 'ruleName') ?? '',
    ruleSequence: IsarNative.jsObjectGet(jsObj, 'ruleSequence') ??
        double.negativeInfinity,
  );
  return object;
}

P _taxRuleEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount')) as P;
    case 'effectiveDateTimeStamp':
      return (IsarNative.jsObjectGet(jsObj, 'effectiveDateTimeStamp') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'effectiveDateTimeStamp'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'expirationDateTimeStamp':
      return (IsarNative.jsObjectGet(jsObj, 'expirationDateTimeStamp') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'expirationDateTimeStamp'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'groupId':
      return (IsarNative.jsObjectGet(jsObj, 'groupId') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'locationId':
      return (IsarNative.jsObjectGet(jsObj, 'locationId') ?? '') as P;
    case 'maximumTaxableAmount':
      return (IsarNative.jsObjectGet(jsObj, 'maximumTaxableAmount')) as P;
    case 'minimumTaxableAmount':
      return (IsarNative.jsObjectGet(jsObj, 'minimumTaxableAmount')) as P;
    case 'percent':
      return (IsarNative.jsObjectGet(jsObj, 'percent')) as P;
    case 'ruleName':
      return (IsarNative.jsObjectGet(jsObj, 'ruleName') ?? '') as P;
    case 'ruleSequence':
      return (IsarNative.jsObjectGet(jsObj, 'ruleSequence') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _taxRuleEntityAttachLinks(
    IsarCollection col, int id, TaxRuleEntity object) {}

extension TaxRuleEntityByIndex on IsarCollection<TaxRuleEntity> {
  Future<TaxRuleEntity?> getByGroupIdRuleName(String groupId, String ruleName) {
    return getByIndex('groupId_ruleName', [groupId, ruleName]);
  }

  TaxRuleEntity? getByGroupIdRuleNameSync(String groupId, String ruleName) {
    return getByIndexSync('groupId_ruleName', [groupId, ruleName]);
  }

  Future<bool> deleteByGroupIdRuleName(String groupId, String ruleName) {
    return deleteByIndex('groupId_ruleName', [groupId, ruleName]);
  }

  bool deleteByGroupIdRuleNameSync(String groupId, String ruleName) {
    return deleteByIndexSync('groupId_ruleName', [groupId, ruleName]);
  }

  Future<List<TaxRuleEntity?>> getAllByGroupIdRuleName(
      List<String> groupIdValues, List<String> ruleNameValues) {
    final len = groupIdValues.length;
    assert(ruleNameValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([groupIdValues[i], ruleNameValues[i]]);
    }

    return getAllByIndex('groupId_ruleName', values);
  }

  List<TaxRuleEntity?> getAllByGroupIdRuleNameSync(
      List<String> groupIdValues, List<String> ruleNameValues) {
    final len = groupIdValues.length;
    assert(ruleNameValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([groupIdValues[i], ruleNameValues[i]]);
    }

    return getAllByIndexSync('groupId_ruleName', values);
  }

  Future<int> deleteAllByGroupIdRuleName(
      List<String> groupIdValues, List<String> ruleNameValues) {
    final len = groupIdValues.length;
    assert(ruleNameValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([groupIdValues[i], ruleNameValues[i]]);
    }

    return deleteAllByIndex('groupId_ruleName', values);
  }

  int deleteAllByGroupIdRuleNameSync(
      List<String> groupIdValues, List<String> ruleNameValues) {
    final len = groupIdValues.length;
    assert(ruleNameValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([groupIdValues[i], ruleNameValues[i]]);
    }

    return deleteAllByIndexSync('groupId_ruleName', values);
  }
}

extension TaxRuleEntityQueryWhereSort
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QWhere> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhere> anyGroupIdRuleName() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'groupId_ruleName'));
  }
}

extension TaxRuleEntityQueryWhere
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QWhereClause> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> groupIdEqualTo(
      String groupId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'groupId_ruleName',
      value: [groupId],
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause>
      groupIdNotEqualTo(String groupId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'groupId_ruleName',
        upper: [groupId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'groupId_ruleName',
        lower: [groupId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'groupId_ruleName',
        lower: [groupId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'groupId_ruleName',
        upper: [groupId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause>
      groupIdRuleNameEqualTo(String groupId, String ruleName) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'groupId_ruleName',
      value: [groupId, ruleName],
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause>
      groupIdRuleNameNotEqualTo(String groupId, String ruleName) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'groupId_ruleName',
        upper: [groupId, ruleName],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'groupId_ruleName',
        lower: [groupId, ruleName],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'groupId_ruleName',
        lower: [groupId, ruleName],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'groupId_ruleName',
        upper: [groupId, ruleName],
        includeUpper: false,
      ));
    }
  }
}

extension TaxRuleEntityQueryFilter
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QFilterCondition> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'amount',
      value: null,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'amount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'effectiveDateTimeStamp',
      value: null,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'effectiveDateTimeStamp',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'effectiveDateTimeStamp',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'effectiveDateTimeStamp',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'effectiveDateTimeStamp',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'expirationDateTimeStamp',
      value: null,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'expirationDateTimeStamp',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'expirationDateTimeStamp',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'expirationDateTimeStamp',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'expirationDateTimeStamp',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'groupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'groupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'groupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'groupId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'groupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'groupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'groupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'groupId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'locationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'locationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'locationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'locationId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'locationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'locationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'locationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'locationId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'maximumTaxableAmount',
      value: null,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'maximumTaxableAmount',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'maximumTaxableAmount',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'maximumTaxableAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'minimumTaxableAmount',
      value: null,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'minimumTaxableAmount',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'minimumTaxableAmount',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'minimumTaxableAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'percent',
      value: null,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'percent',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'percent',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'percent',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'ruleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'ruleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'ruleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'ruleName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'ruleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'ruleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'ruleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'ruleName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleSequenceEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'ruleSequence',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleSequenceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'ruleSequence',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleSequenceLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'ruleSequence',
      value: value,
    ));
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleSequenceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'ruleSequence',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension TaxRuleEntityQueryLinks
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QFilterCondition> {}

extension TaxRuleEntityQueryWhereSortBy
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QSortBy> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByEffectiveDateTimeStamp() {
    return addSortByInternal('effectiveDateTimeStamp', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByEffectiveDateTimeStampDesc() {
    return addSortByInternal('effectiveDateTimeStamp', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByExpirationDateTimeStamp() {
    return addSortByInternal('expirationDateTimeStamp', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByExpirationDateTimeStampDesc() {
    return addSortByInternal('expirationDateTimeStamp', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByGroupId() {
    return addSortByInternal('groupId', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByGroupIdDesc() {
    return addSortByInternal('groupId', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByLocationId() {
    return addSortByInternal('locationId', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByLocationIdDesc() {
    return addSortByInternal('locationId', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByMaximumTaxableAmount() {
    return addSortByInternal('maximumTaxableAmount', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByMaximumTaxableAmountDesc() {
    return addSortByInternal('maximumTaxableAmount', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByMinimumTaxableAmount() {
    return addSortByInternal('minimumTaxableAmount', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByMinimumTaxableAmountDesc() {
    return addSortByInternal('minimumTaxableAmount', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByPercent() {
    return addSortByInternal('percent', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByPercentDesc() {
    return addSortByInternal('percent', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByRuleName() {
    return addSortByInternal('ruleName', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByRuleNameDesc() {
    return addSortByInternal('ruleName', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByRuleSequence() {
    return addSortByInternal('ruleSequence', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByRuleSequenceDesc() {
    return addSortByInternal('ruleSequence', Sort.desc);
  }
}

extension TaxRuleEntityQueryWhereSortThenBy
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QSortThenBy> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByEffectiveDateTimeStamp() {
    return addSortByInternal('effectiveDateTimeStamp', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByEffectiveDateTimeStampDesc() {
    return addSortByInternal('effectiveDateTimeStamp', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByExpirationDateTimeStamp() {
    return addSortByInternal('expirationDateTimeStamp', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByExpirationDateTimeStampDesc() {
    return addSortByInternal('expirationDateTimeStamp', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByGroupId() {
    return addSortByInternal('groupId', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByGroupIdDesc() {
    return addSortByInternal('groupId', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByLocationId() {
    return addSortByInternal('locationId', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByLocationIdDesc() {
    return addSortByInternal('locationId', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByMaximumTaxableAmount() {
    return addSortByInternal('maximumTaxableAmount', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByMaximumTaxableAmountDesc() {
    return addSortByInternal('maximumTaxableAmount', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByMinimumTaxableAmount() {
    return addSortByInternal('minimumTaxableAmount', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByMinimumTaxableAmountDesc() {
    return addSortByInternal('minimumTaxableAmount', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByPercent() {
    return addSortByInternal('percent', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByPercentDesc() {
    return addSortByInternal('percent', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByRuleName() {
    return addSortByInternal('ruleName', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByRuleNameDesc() {
    return addSortByInternal('ruleName', Sort.desc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByRuleSequence() {
    return addSortByInternal('ruleSequence', Sort.asc);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByRuleSequenceDesc() {
    return addSortByInternal('ruleSequence', Sort.desc);
  }
}

extension TaxRuleEntityQueryWhereDistinct
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByAmount() {
    return addDistinctByInternal('amount');
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByEffectiveDateTimeStamp() {
    return addDistinctByInternal('effectiveDateTimeStamp');
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByExpirationDateTimeStamp() {
    return addDistinctByInternal('expirationDateTimeStamp');
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByGroupId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('groupId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByLocationId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('locationId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByMaximumTaxableAmount() {
    return addDistinctByInternal('maximumTaxableAmount');
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByMinimumTaxableAmount() {
    return addDistinctByInternal('minimumTaxableAmount');
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByPercent() {
    return addDistinctByInternal('percent');
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByRuleName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('ruleName', caseSensitive: caseSensitive);
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByRuleSequence() {
    return addDistinctByInternal('ruleSequence');
  }
}

extension TaxRuleEntityQueryProperty
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QQueryProperty> {
  QueryBuilder<TaxRuleEntity, double?, QQueryOperations> amountProperty() {
    return addPropertyNameInternal('amount');
  }

  QueryBuilder<TaxRuleEntity, DateTime?, QQueryOperations>
      effectiveDateTimeStampProperty() {
    return addPropertyNameInternal('effectiveDateTimeStamp');
  }

  QueryBuilder<TaxRuleEntity, DateTime?, QQueryOperations>
      expirationDateTimeStampProperty() {
    return addPropertyNameInternal('expirationDateTimeStamp');
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations> groupIdProperty() {
    return addPropertyNameInternal('groupId');
  }

  QueryBuilder<TaxRuleEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations> locationIdProperty() {
    return addPropertyNameInternal('locationId');
  }

  QueryBuilder<TaxRuleEntity, double?, QQueryOperations>
      maximumTaxableAmountProperty() {
    return addPropertyNameInternal('maximumTaxableAmount');
  }

  QueryBuilder<TaxRuleEntity, double?, QQueryOperations>
      minimumTaxableAmountProperty() {
    return addPropertyNameInternal('minimumTaxableAmount');
  }

  QueryBuilder<TaxRuleEntity, double?, QQueryOperations> percentProperty() {
    return addPropertyNameInternal('percent');
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations> ruleNameProperty() {
    return addPropertyNameInternal('ruleName');
  }

  QueryBuilder<TaxRuleEntity, int, QQueryOperations> ruleSequenceProperty() {
    return addPropertyNameInternal('ruleSequence');
  }
}
