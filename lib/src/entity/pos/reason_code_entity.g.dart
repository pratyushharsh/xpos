// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reason_code_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetReasonCodeEntityCollection on Isar {
  IsarCollection<ReasonCodeEntity> get reasonCodeEntitys => getCollection();
}

const ReasonCodeEntitySchema = CollectionSchema(
  name: 'ReasonCodeEntity',
  schema:
      '{"name":"ReasonCodeEntity","idName":"id","properties":[{"name":"commentRequired","type":"Bool"},{"name":"description","type":"String"},{"name":"hashCode","type":"Long"},{"name":"parentCode","type":"String"},{"name":"reasonCode","type":"String"},{"name":"reasonTypeCode","type":"String"},{"name":"stringify","type":"Bool"}],"indexes":[{"name":"reasonTypeCode_reasonCode","unique":false,"properties":[{"name":"reasonTypeCode","type":"Hash","caseSensitive":true},{"name":"reasonCode","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'commentRequired': 0,
    'description': 1,
    'hashCode': 2,
    'parentCode': 3,
    'reasonCode': 4,
    'reasonTypeCode': 5,
    'stringify': 6
  },
  listProperties: {},
  indexIds: {'reasonTypeCode_reasonCode': 0},
  indexValueTypes: {
    'reasonTypeCode_reasonCode': [
      IndexValueType.stringHash,
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _reasonCodeEntityGetId,
  getLinks: _reasonCodeEntityGetLinks,
  attachLinks: _reasonCodeEntityAttachLinks,
  serializeNative: _reasonCodeEntitySerializeNative,
  deserializeNative: _reasonCodeEntityDeserializeNative,
  deserializePropNative: _reasonCodeEntityDeserializePropNative,
  serializeWeb: _reasonCodeEntitySerializeWeb,
  deserializeWeb: _reasonCodeEntityDeserializeWeb,
  deserializePropWeb: _reasonCodeEntityDeserializePropWeb,
  version: 3,
);

int? _reasonCodeEntityGetId(ReasonCodeEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _reasonCodeEntityGetLinks(ReasonCodeEntity object) {
  return [];
}

void _reasonCodeEntitySerializeNative(
    IsarCollection<ReasonCodeEntity> collection,
    IsarRawObject rawObj,
    ReasonCodeEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.commentRequired;
  final _commentRequired = value0;
  final value1 = object.description;
  final _description = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_description.length) as int;
  final value2 = object.hashCode;
  final _hashCode = value2;
  final value3 = object.parentCode;
  IsarUint8List? _parentCode;
  if (value3 != null) {
    _parentCode = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_parentCode?.length ?? 0) as int;
  final value4 = object.reasonCode;
  final _reasonCode = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_reasonCode.length) as int;
  final value5 = object.reasonTypeCode;
  final _reasonTypeCode = IsarBinaryWriter.utf8Encoder.convert(value5);
  dynamicSize += (_reasonTypeCode.length) as int;
  final value6 = object.stringify;
  final _stringify = value6;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], _commentRequired);
  writer.writeBytes(offsets[1], _description);
  writer.writeLong(offsets[2], _hashCode);
  writer.writeBytes(offsets[3], _parentCode);
  writer.writeBytes(offsets[4], _reasonCode);
  writer.writeBytes(offsets[5], _reasonTypeCode);
  writer.writeBool(offsets[6], _stringify);
}

ReasonCodeEntity _reasonCodeEntityDeserializeNative(
    IsarCollection<ReasonCodeEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = ReasonCodeEntity(
    commentRequired: reader.readBool(offsets[0]),
    description: reader.readString(offsets[1]),
    id: id,
    parentCode: reader.readStringOrNull(offsets[3]),
    reasonCode: reader.readString(offsets[4]),
    reasonTypeCode: reader.readString(offsets[5]),
  );
  return object;
}

P _reasonCodeEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _reasonCodeEntitySerializeWeb(
    IsarCollection<ReasonCodeEntity> collection, ReasonCodeEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'commentRequired', object.commentRequired);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'parentCode', object.parentCode);
  IsarNative.jsObjectSet(jsObj, 'reasonCode', object.reasonCode);
  IsarNative.jsObjectSet(jsObj, 'reasonTypeCode', object.reasonTypeCode);
  IsarNative.jsObjectSet(jsObj, 'stringify', object.stringify);
  return jsObj;
}

ReasonCodeEntity _reasonCodeEntityDeserializeWeb(
    IsarCollection<ReasonCodeEntity> collection, dynamic jsObj) {
  final object = ReasonCodeEntity(
    commentRequired: IsarNative.jsObjectGet(jsObj, 'commentRequired') ?? false,
    description: IsarNative.jsObjectGet(jsObj, 'description') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    parentCode: IsarNative.jsObjectGet(jsObj, 'parentCode'),
    reasonCode: IsarNative.jsObjectGet(jsObj, 'reasonCode') ?? '',
    reasonTypeCode: IsarNative.jsObjectGet(jsObj, 'reasonTypeCode') ?? '',
  );
  return object;
}

P _reasonCodeEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'commentRequired':
      return (IsarNative.jsObjectGet(jsObj, 'commentRequired') ?? false) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'parentCode':
      return (IsarNative.jsObjectGet(jsObj, 'parentCode')) as P;
    case 'reasonCode':
      return (IsarNative.jsObjectGet(jsObj, 'reasonCode') ?? '') as P;
    case 'reasonTypeCode':
      return (IsarNative.jsObjectGet(jsObj, 'reasonTypeCode') ?? '') as P;
    case 'stringify':
      return (IsarNative.jsObjectGet(jsObj, 'stringify')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _reasonCodeEntityAttachLinks(
    IsarCollection col, int id, ReasonCodeEntity object) {}

extension ReasonCodeEntityQueryWhereSort
    on QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QWhere> {
  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhere>
      anyReasonTypeCodeReasonCode() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'reasonTypeCode_reasonCode'));
  }
}

extension ReasonCodeEntityQueryWhere
    on QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QWhereClause> {
  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause>
      idNotEqualTo(int id) {
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause>
      reasonTypeCodeEqualTo(String reasonTypeCode) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'reasonTypeCode_reasonCode',
      value: [reasonTypeCode],
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause>
      reasonTypeCodeNotEqualTo(String reasonTypeCode) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'reasonTypeCode_reasonCode',
        upper: [reasonTypeCode],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'reasonTypeCode_reasonCode',
        lower: [reasonTypeCode],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'reasonTypeCode_reasonCode',
        lower: [reasonTypeCode],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'reasonTypeCode_reasonCode',
        upper: [reasonTypeCode],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause>
      reasonTypeCodeReasonCodeEqualTo(
          String reasonTypeCode, String reasonCode) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'reasonTypeCode_reasonCode',
      value: [reasonTypeCode, reasonCode],
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterWhereClause>
      reasonTypeCodeReasonCodeNotEqualTo(
          String reasonTypeCode, String reasonCode) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'reasonTypeCode_reasonCode',
        upper: [reasonTypeCode, reasonCode],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'reasonTypeCode_reasonCode',
        lower: [reasonTypeCode, reasonCode],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'reasonTypeCode_reasonCode',
        lower: [reasonTypeCode, reasonCode],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'reasonTypeCode_reasonCode',
        upper: [reasonTypeCode, reasonCode],
        includeUpper: false,
      ));
    }
  }
}

extension ReasonCodeEntityQueryFilter
    on QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QFilterCondition> {
  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      commentRequiredEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'commentRequired',
      value: value,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      descriptionEqualTo(
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      descriptionGreaterThan(
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      descriptionLessThan(
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      descriptionBetween(
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'parentCode',
      value: null,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'parentCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'parentCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'parentCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'parentCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'parentCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'parentCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'parentCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      parentCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'parentCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'reasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonCodeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'reasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonCodeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'reasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonCodeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'reasonCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'reasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'reasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'reasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'reasonCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonTypeCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'reasonTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonTypeCodeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'reasonTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonTypeCodeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'reasonTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonTypeCodeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'reasonTypeCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonTypeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'reasonTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonTypeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'reasonTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonTypeCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'reasonTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      reasonTypeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'reasonTypeCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      stringifyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'stringify',
      value: null,
    ));
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterFilterCondition>
      stringifyEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }
}

extension ReasonCodeEntityQueryLinks
    on QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QFilterCondition> {}

extension ReasonCodeEntityQueryWhereSortBy
    on QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QSortBy> {
  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByCommentRequired() {
    return addSortByInternal('commentRequired', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByCommentRequiredDesc() {
    return addSortByInternal('commentRequired', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByParentCode() {
    return addSortByInternal('parentCode', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByParentCodeDesc() {
    return addSortByInternal('parentCode', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByReasonCode() {
    return addSortByInternal('reasonCode', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByReasonCodeDesc() {
    return addSortByInternal('reasonCode', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByReasonTypeCode() {
    return addSortByInternal('reasonTypeCode', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByReasonTypeCodeDesc() {
    return addSortByInternal('reasonTypeCode', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }
}

extension ReasonCodeEntityQueryWhereSortThenBy
    on QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QSortThenBy> {
  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByCommentRequired() {
    return addSortByInternal('commentRequired', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByCommentRequiredDesc() {
    return addSortByInternal('commentRequired', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByParentCode() {
    return addSortByInternal('parentCode', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByParentCodeDesc() {
    return addSortByInternal('parentCode', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByReasonCode() {
    return addSortByInternal('reasonCode', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByReasonCodeDesc() {
    return addSortByInternal('reasonCode', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByReasonTypeCode() {
    return addSortByInternal('reasonTypeCode', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByReasonTypeCodeDesc() {
    return addSortByInternal('reasonTypeCode', Sort.desc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QAfterSortBy>
      thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }
}

extension ReasonCodeEntityQueryWhereDistinct
    on QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct> {
  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct>
      distinctByCommentRequired() {
    return addDistinctByInternal('commentRequired');
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct>
      distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct>
      distinctByParentCode({bool caseSensitive = true}) {
    return addDistinctByInternal('parentCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct>
      distinctByReasonCode({bool caseSensitive = true}) {
    return addDistinctByInternal('reasonCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct>
      distinctByReasonTypeCode({bool caseSensitive = true}) {
    return addDistinctByInternal('reasonTypeCode',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QDistinct>
      distinctByStringify() {
    return addDistinctByInternal('stringify');
  }
}

extension ReasonCodeEntityQueryProperty
    on QueryBuilder<ReasonCodeEntity, ReasonCodeEntity, QQueryProperty> {
  QueryBuilder<ReasonCodeEntity, bool, QQueryOperations>
      commentRequiredProperty() {
    return addPropertyNameInternal('commentRequired');
  }

  QueryBuilder<ReasonCodeEntity, String, QQueryOperations>
      descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<ReasonCodeEntity, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<ReasonCodeEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ReasonCodeEntity, String?, QQueryOperations>
      parentCodeProperty() {
    return addPropertyNameInternal('parentCode');
  }

  QueryBuilder<ReasonCodeEntity, String, QQueryOperations>
      reasonCodeProperty() {
    return addPropertyNameInternal('reasonCode');
  }

  QueryBuilder<ReasonCodeEntity, String, QQueryOperations>
      reasonTypeCodeProperty() {
    return addPropertyNameInternal('reasonTypeCode');
  }

  QueryBuilder<ReasonCodeEntity, bool?, QQueryOperations> stringifyProperty() {
    return addPropertyNameInternal('stringify');
  }
}
