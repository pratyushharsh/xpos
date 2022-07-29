// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_group_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTaxGroupEntityCollection on Isar {
  IsarCollection<TaxGroupEntity> get taxGroupEntitys => getCollection();
}

const TaxGroupEntitySchema = CollectionSchema(
  name: 'TaxGroupEntity',
  schema:
      '{"name":"TaxGroupEntity","idName":"id","properties":[{"name":"description","type":"String"},{"name":"groupId","type":"String"},{"name":"name","type":"String"}],"indexes":[{"name":"groupId","unique":true,"properties":[{"name":"groupId","type":"Hash","caseSensitive":true}]}],"links":[{"name":"taxRules","target":"TaxRuleEntity"}]}',
  idName: 'id',
  propertyIds: {'description': 0, 'groupId': 1, 'name': 2},
  listProperties: {},
  indexIds: {'groupId': 0},
  indexValueTypes: {
    'groupId': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {'taxRules': 0},
  backlinkLinkNames: {},
  getId: _taxGroupEntityGetId,
  getLinks: _taxGroupEntityGetLinks,
  attachLinks: _taxGroupEntityAttachLinks,
  serializeNative: _taxGroupEntitySerializeNative,
  deserializeNative: _taxGroupEntityDeserializeNative,
  deserializePropNative: _taxGroupEntityDeserializePropNative,
  serializeWeb: _taxGroupEntitySerializeWeb,
  deserializeWeb: _taxGroupEntityDeserializeWeb,
  deserializePropWeb: _taxGroupEntityDeserializePropWeb,
  version: 3,
);

int? _taxGroupEntityGetId(TaxGroupEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _taxGroupEntityGetLinks(TaxGroupEntity object) {
  return [object.taxRules];
}

void _taxGroupEntitySerializeNative(
    IsarCollection<TaxGroupEntity> collection,
    IsarRawObject rawObj,
    TaxGroupEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.description;
  final _description = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_description.length) as int;
  final value1 = object.groupId;
  final _groupId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_groupId.length) as int;
  final value2 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _description);
  writer.writeBytes(offsets[1], _groupId);
  writer.writeBytes(offsets[2], _name);
}

TaxGroupEntity _taxGroupEntityDeserializeNative(
    IsarCollection<TaxGroupEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = TaxGroupEntity(
    description: reader.readString(offsets[0]),
    groupId: reader.readString(offsets[1]),
    id: id,
    name: reader.readString(offsets[2]),
  );
  _taxGroupEntityAttachLinks(collection, id, object);
  return object;
}

P _taxGroupEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _taxGroupEntitySerializeWeb(
    IsarCollection<TaxGroupEntity> collection, TaxGroupEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'groupId', object.groupId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

TaxGroupEntity _taxGroupEntityDeserializeWeb(
    IsarCollection<TaxGroupEntity> collection, dynamic jsObj) {
  final object = TaxGroupEntity(
    description: IsarNative.jsObjectGet(jsObj, 'description') ?? '',
    groupId: IsarNative.jsObjectGet(jsObj, 'groupId') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
  );
  _taxGroupEntityAttachLinks(
      collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _taxGroupEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
    case 'groupId':
      return (IsarNative.jsObjectGet(jsObj, 'groupId') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _taxGroupEntityAttachLinks(
    IsarCollection col, int id, TaxGroupEntity object) {
  object.taxRules.attach(col, col.isar.taxRuleEntitys, 'taxRules', id);
}

extension TaxGroupEntityByIndex on IsarCollection<TaxGroupEntity> {
  Future<TaxGroupEntity?> getByGroupId(String groupId) {
    return getByIndex('groupId', [groupId]);
  }

  TaxGroupEntity? getByGroupIdSync(String groupId) {
    return getByIndexSync('groupId', [groupId]);
  }

  Future<bool> deleteByGroupId(String groupId) {
    return deleteByIndex('groupId', [groupId]);
  }

  bool deleteByGroupIdSync(String groupId) {
    return deleteByIndexSync('groupId', [groupId]);
  }

  Future<List<TaxGroupEntity?>> getAllByGroupId(List<String> groupIdValues) {
    final values = groupIdValues.map((e) => [e]).toList();
    return getAllByIndex('groupId', values);
  }

  List<TaxGroupEntity?> getAllByGroupIdSync(List<String> groupIdValues) {
    final values = groupIdValues.map((e) => [e]).toList();
    return getAllByIndexSync('groupId', values);
  }

  Future<int> deleteAllByGroupId(List<String> groupIdValues) {
    final values = groupIdValues.map((e) => [e]).toList();
    return deleteAllByIndex('groupId', values);
  }

  int deleteAllByGroupIdSync(List<String> groupIdValues) {
    final values = groupIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('groupId', values);
  }
}

extension TaxGroupEntityQueryWhereSort
    on QueryBuilder<TaxGroupEntity, TaxGroupEntity, QWhere> {
  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhere> anyGroupId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'groupId'));
  }
}

extension TaxGroupEntityQueryWhere
    on QueryBuilder<TaxGroupEntity, TaxGroupEntity, QWhereClause> {
  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhereClause>
      groupIdEqualTo(String groupId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'groupId',
      value: [groupId],
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterWhereClause>
      groupIdNotEqualTo(String groupId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'groupId',
        upper: [groupId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'groupId',
        lower: [groupId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'groupId',
        lower: [groupId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'groupId',
        upper: [groupId],
        includeUpper: false,
      ));
    }
  }
}

extension TaxGroupEntityQueryFilter
    on QueryBuilder<TaxGroupEntity, TaxGroupEntity, QFilterCondition> {
  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
      groupIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'groupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
      groupIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'groupId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
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

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension TaxGroupEntityQueryLinks
    on QueryBuilder<TaxGroupEntity, TaxGroupEntity, QFilterCondition> {
  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterFilterCondition> taxRules(
      FilterQuery<TaxRuleEntity> q) {
    return linkInternal(
      isar.taxRuleEntitys,
      q,
      'taxRules',
    );
  }
}

extension TaxGroupEntityQueryWhereSortBy
    on QueryBuilder<TaxGroupEntity, TaxGroupEntity, QSortBy> {
  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy>
      sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> sortByGroupId() {
    return addSortByInternal('groupId', Sort.asc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy>
      sortByGroupIdDesc() {
    return addSortByInternal('groupId', Sort.desc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension TaxGroupEntityQueryWhereSortThenBy
    on QueryBuilder<TaxGroupEntity, TaxGroupEntity, QSortThenBy> {
  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy>
      thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> thenByGroupId() {
    return addSortByInternal('groupId', Sort.asc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy>
      thenByGroupIdDesc() {
    return addSortByInternal('groupId', Sort.desc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension TaxGroupEntityQueryWhereDistinct
    on QueryBuilder<TaxGroupEntity, TaxGroupEntity, QDistinct> {
  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QDistinct> distinctByGroupId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('groupId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TaxGroupEntity, TaxGroupEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension TaxGroupEntityQueryProperty
    on QueryBuilder<TaxGroupEntity, TaxGroupEntity, QQueryProperty> {
  QueryBuilder<TaxGroupEntity, String, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<TaxGroupEntity, String, QQueryOperations> groupIdProperty() {
    return addPropertyNameInternal('groupId');
  }

  QueryBuilder<TaxGroupEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TaxGroupEntity, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
