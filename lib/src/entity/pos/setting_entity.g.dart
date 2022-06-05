// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSettingEntityCollection on Isar {
  IsarCollection<SettingEntity> get settingEntitys => getCollection();
}

const SettingEntitySchema = CollectionSchema(
  name: 'SettingEntity',
  schema:
      '{"name":"SettingEntity","idName":"id","properties":[{"name":"category","type":"String"},{"name":"createAt","type":"Long"},{"name":"subCategory","type":"String"},{"name":"updatedAt","type":"Long"},{"name":"value","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'category': 0,
    'createAt': 1,
    'subCategory': 2,
    'updatedAt': 3,
    'value': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _settingEntityGetId,
  getLinks: _settingEntityGetLinks,
  attachLinks: _settingEntityAttachLinks,
  serializeNative: _settingEntitySerializeNative,
  deserializeNative: _settingEntityDeserializeNative,
  deserializePropNative: _settingEntityDeserializePropNative,
  serializeWeb: _settingEntitySerializeWeb,
  deserializeWeb: _settingEntityDeserializeWeb,
  deserializePropWeb: _settingEntityDeserializePropWeb,
  version: 3,
);

int? _settingEntityGetId(SettingEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _settingEntityGetLinks(SettingEntity object) {
  return [];
}

void _settingEntitySerializeNative(
    IsarCollection<SettingEntity> collection,
    IsarRawObject rawObj,
    SettingEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.category;
  final _category = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_category.length) as int;
  final value1 = object.createAt;
  final _createAt = value1;
  final value2 = object.subCategory;
  final _subCategory = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_subCategory.length) as int;
  final value3 = object.updatedAt;
  final _updatedAt = value3;
  final value4 = object.value;
  final _value = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_value.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _category);
  writer.writeDateTime(offsets[1], _createAt);
  writer.writeBytes(offsets[2], _subCategory);
  writer.writeDateTime(offsets[3], _updatedAt);
  writer.writeBytes(offsets[4], _value);
}

SettingEntity _settingEntityDeserializeNative(
    IsarCollection<SettingEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = SettingEntity(
    category: reader.readString(offsets[0]),
    createAt: reader.readDateTimeOrNull(offsets[1]),
    id: id,
    subCategory: reader.readString(offsets[2]),
    updatedAt: reader.readDateTimeOrNull(offsets[3]),
    value: reader.readString(offsets[4]),
  );
  return object;
}

P _settingEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _settingEntitySerializeWeb(
    IsarCollection<SettingEntity> collection, SettingEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'category', object.category);
  IsarNative.jsObjectSet(
      jsObj, 'createAt', object.createAt?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'subCategory', object.subCategory);
  IsarNative.jsObjectSet(
      jsObj, 'updatedAt', object.updatedAt?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'value', object.value);
  return jsObj;
}

SettingEntity _settingEntityDeserializeWeb(
    IsarCollection<SettingEntity> collection, dynamic jsObj) {
  final object = SettingEntity(
    category: IsarNative.jsObjectGet(jsObj, 'category') ?? '',
    createAt: IsarNative.jsObjectGet(jsObj, 'createAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'createAt'),
                isUtc: true)
            .toLocal()
        : null,
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    subCategory: IsarNative.jsObjectGet(jsObj, 'subCategory') ?? '',
    updatedAt: IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                isUtc: true)
            .toLocal()
        : null,
    value: IsarNative.jsObjectGet(jsObj, 'value') ?? '',
  );
  return object;
}

P _settingEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'category':
      return (IsarNative.jsObjectGet(jsObj, 'category') ?? '') as P;
    case 'createAt':
      return (IsarNative.jsObjectGet(jsObj, 'createAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createAt'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'subCategory':
      return (IsarNative.jsObjectGet(jsObj, 'subCategory') ?? '') as P;
    case 'updatedAt':
      return (IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'value':
      return (IsarNative.jsObjectGet(jsObj, 'value') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _settingEntityAttachLinks(
    IsarCollection col, int id, SettingEntity object) {}

extension SettingEntityQueryWhereSort
    on QueryBuilder<SettingEntity, SettingEntity, QWhere> {
  QueryBuilder<SettingEntity, SettingEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension SettingEntityQueryWhere
    on QueryBuilder<SettingEntity, SettingEntity, QWhereClause> {
  QueryBuilder<SettingEntity, SettingEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterWhereClause> idBetween(
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

extension SettingEntityQueryFilter
    on QueryBuilder<SettingEntity, SettingEntity, QFilterCondition> {
  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      categoryEqualTo(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      categoryGreaterThan(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      categoryLessThan(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      categoryBetween(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      categoryStartsWith(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      categoryEndsWith(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'category',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      createAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'createAt',
      value: null,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      createAtEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createAt',
      value: value,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      createAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createAt',
      value: value,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      createAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createAt',
      value: value,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      createAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      subCategoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'subCategory',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      subCategoryGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'subCategory',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      subCategoryLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'subCategory',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      subCategoryBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'subCategory',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      subCategoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'subCategory',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      subCategoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'subCategory',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      subCategoryContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'subCategory',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      subCategoryMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'subCategory',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'updatedAt',
      value: null,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      valueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'value',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      valueGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'value',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      valueLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'value',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      valueBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'value',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'value',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'value',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      valueContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'value',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterFilterCondition>
      valueMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'value',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension SettingEntityQueryLinks
    on QueryBuilder<SettingEntity, SettingEntity, QFilterCondition> {}

extension SettingEntityQueryWhereSortBy
    on QueryBuilder<SettingEntity, SettingEntity, QSortBy> {
  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> sortByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy>
      sortByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> sortByCreateAt() {
    return addSortByInternal('createAt', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy>
      sortByCreateAtDesc() {
    return addSortByInternal('createAt', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> sortBySubCategory() {
    return addSortByInternal('subCategory', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy>
      sortBySubCategoryDesc() {
    return addSortByInternal('subCategory', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> sortByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> sortByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }
}

extension SettingEntityQueryWhereSortThenBy
    on QueryBuilder<SettingEntity, SettingEntity, QSortThenBy> {
  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> thenByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy>
      thenByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> thenByCreateAt() {
    return addSortByInternal('createAt', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy>
      thenByCreateAtDesc() {
    return addSortByInternal('createAt', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> thenBySubCategory() {
    return addSortByInternal('subCategory', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy>
      thenBySubCategoryDesc() {
    return addSortByInternal('subCategory', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> thenByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<SettingEntity, SettingEntity, QAfterSortBy> thenByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }
}

extension SettingEntityQueryWhereDistinct
    on QueryBuilder<SettingEntity, SettingEntity, QDistinct> {
  QueryBuilder<SettingEntity, SettingEntity, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('category', caseSensitive: caseSensitive);
  }

  QueryBuilder<SettingEntity, SettingEntity, QDistinct> distinctByCreateAt() {
    return addDistinctByInternal('createAt');
  }

  QueryBuilder<SettingEntity, SettingEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<SettingEntity, SettingEntity, QDistinct> distinctBySubCategory(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('subCategory', caseSensitive: caseSensitive);
  }

  QueryBuilder<SettingEntity, SettingEntity, QDistinct> distinctByUpdatedAt() {
    return addDistinctByInternal('updatedAt');
  }

  QueryBuilder<SettingEntity, SettingEntity, QDistinct> distinctByValue(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('value', caseSensitive: caseSensitive);
  }
}

extension SettingEntityQueryProperty
    on QueryBuilder<SettingEntity, SettingEntity, QQueryProperty> {
  QueryBuilder<SettingEntity, String, QQueryOperations> categoryProperty() {
    return addPropertyNameInternal('category');
  }

  QueryBuilder<SettingEntity, DateTime?, QQueryOperations> createAtProperty() {
    return addPropertyNameInternal('createAt');
  }

  QueryBuilder<SettingEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SettingEntity, String, QQueryOperations> subCategoryProperty() {
    return addPropertyNameInternal('subCategory');
  }

  QueryBuilder<SettingEntity, DateTime?, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }

  QueryBuilder<SettingEntity, String, QQueryOperations> valueProperty() {
    return addPropertyNameInternal('value');
  }
}
