// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sequence_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSequenceEntityCollection on Isar {
  IsarCollection<SequenceEntity> get sequenceEntitys => getCollection();
}

const SequenceEntitySchema = CollectionSchema(
  name: 'SequenceEntity',
  schema:
      '{"name":"SequenceEntity","idName":"id","properties":[{"name":"name","type":"String"},{"name":"nextSeq","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'name': 0, 'nextSeq': 1},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _sequenceEntityGetId,
  getLinks: _sequenceEntityGetLinks,
  attachLinks: _sequenceEntityAttachLinks,
  serializeNative: _sequenceEntitySerializeNative,
  deserializeNative: _sequenceEntityDeserializeNative,
  deserializePropNative: _sequenceEntityDeserializePropNative,
  serializeWeb: _sequenceEntitySerializeWeb,
  deserializeWeb: _sequenceEntityDeserializeWeb,
  deserializePropWeb: _sequenceEntityDeserializePropWeb,
  version: 3,
);

int? _sequenceEntityGetId(SequenceEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _sequenceEntityGetLinks(SequenceEntity object) {
  return [];
}

void _sequenceEntitySerializeNative(
    IsarCollection<SequenceEntity> collection,
    IsarRawObject rawObj,
    SequenceEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_name.length) as int;
  final value1 = object.nextSeq;
  final _nextSeq = value1;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _name);
  writer.writeLong(offsets[1], _nextSeq);
}

SequenceEntity _sequenceEntityDeserializeNative(
    IsarCollection<SequenceEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = SequenceEntity(
    id: id,
    name: reader.readString(offsets[0]),
    nextSeq: reader.readLong(offsets[1]),
  );
  return object;
}

P _sequenceEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _sequenceEntitySerializeWeb(
    IsarCollection<SequenceEntity> collection, SequenceEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'nextSeq', object.nextSeq);
  return jsObj;
}

SequenceEntity _sequenceEntityDeserializeWeb(
    IsarCollection<SequenceEntity> collection, dynamic jsObj) {
  final object = SequenceEntity(
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity,
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    nextSeq:
        IsarNative.jsObjectGet(jsObj, 'nextSeq') ?? double.negativeInfinity,
  );
  return object;
}

P _sequenceEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'nextSeq':
      return (IsarNative.jsObjectGet(jsObj, 'nextSeq') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _sequenceEntityAttachLinks(
    IsarCollection col, int id, SequenceEntity object) {}

extension SequenceEntityQueryWhereSort
    on QueryBuilder<SequenceEntity, SequenceEntity, QWhere> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension SequenceEntityQueryWhere
    on QueryBuilder<SequenceEntity, SequenceEntity, QWhereClause> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idBetween(
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

extension SequenceEntityQueryFilter
    on QueryBuilder<SequenceEntity, SequenceEntity, QFilterCondition> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
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

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
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

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nextSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nextSeq',
      value: value,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nextSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nextSeq',
      value: value,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nextSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nextSeq',
      value: value,
    ));
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nextSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nextSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension SequenceEntityQueryLinks
    on QueryBuilder<SequenceEntity, SequenceEntity, QFilterCondition> {}

extension SequenceEntityQueryWhereSortBy
    on QueryBuilder<SequenceEntity, SequenceEntity, QSortBy> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> sortByNextSeq() {
    return addSortByInternal('nextSeq', Sort.asc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy>
      sortByNextSeqDesc() {
    return addSortByInternal('nextSeq', Sort.desc);
  }
}

extension SequenceEntityQueryWhereSortThenBy
    on QueryBuilder<SequenceEntity, SequenceEntity, QSortThenBy> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenByNextSeq() {
    return addSortByInternal('nextSeq', Sort.asc);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy>
      thenByNextSeqDesc() {
    return addSortByInternal('nextSeq', Sort.desc);
  }
}

extension SequenceEntityQueryWhereDistinct
    on QueryBuilder<SequenceEntity, SequenceEntity, QDistinct> {
  QueryBuilder<SequenceEntity, SequenceEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QDistinct> distinctByNextSeq() {
    return addDistinctByInternal('nextSeq');
  }
}

extension SequenceEntityQueryProperty
    on QueryBuilder<SequenceEntity, SequenceEntity, QQueryProperty> {
  QueryBuilder<SequenceEntity, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SequenceEntity, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<SequenceEntity, int, QQueryOperations> nextSeqProperty() {
    return addPropertyNameInternal('nextSeq');
  }
}
