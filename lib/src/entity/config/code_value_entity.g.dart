// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_value_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetCodeValueEntityCollection on Isar {
  IsarCollection<CodeValueEntity> get codeValueEntitys => getCollection();
}

const CodeValueEntitySchema = CollectionSchema(
  name: 'CodeValueEntity',
  schema:
      '{"name":"CodeValueEntity","idName":"id","properties":[{"name":"category","type":"String"},{"name":"code","type":"String"},{"name":"description","type":"String"},{"name":"value","type":"String"}],"indexes":[{"name":"category","unique":false,"properties":[{"name":"category","type":"Hash","caseSensitive":true}]},{"name":"category_code","unique":true,"properties":[{"name":"category","type":"Hash","caseSensitive":true},{"name":"code","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {'category': 0, 'code': 1, 'description': 2, 'value': 3},
  listProperties: {},
  indexIds: {'category': 0, 'category_code': 1},
  indexValueTypes: {
    'category': [
      IndexValueType.stringHash,
    ],
    'category_code': [
      IndexValueType.stringHash,
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _codeValueEntityGetId,
  getLinks: _codeValueEntityGetLinks,
  attachLinks: _codeValueEntityAttachLinks,
  serializeNative: _codeValueEntitySerializeNative,
  deserializeNative: _codeValueEntityDeserializeNative,
  deserializePropNative: _codeValueEntityDeserializePropNative,
  serializeWeb: _codeValueEntitySerializeWeb,
  deserializeWeb: _codeValueEntityDeserializeWeb,
  deserializePropWeb: _codeValueEntityDeserializePropWeb,
  version: 3,
);

int? _codeValueEntityGetId(CodeValueEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _codeValueEntityGetLinks(CodeValueEntity object) {
  return [];
}

void _codeValueEntitySerializeNative(
    IsarCollection<CodeValueEntity> collection,
    IsarRawObject rawObj,
    CodeValueEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.category;
  final _category = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_category.length) as int;
  final value1 = object.code;
  final _code = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_code.length) as int;
  final value2 = object.description;
  IsarUint8List? _description;
  if (value2 != null) {
    _description = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_description?.length ?? 0) as int;
  final value3 = object.value;
  final _value = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_value.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _category);
  writer.writeBytes(offsets[1], _code);
  writer.writeBytes(offsets[2], _description);
  writer.writeBytes(offsets[3], _value);
}

CodeValueEntity _codeValueEntityDeserializeNative(
    IsarCollection<CodeValueEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = CodeValueEntity(
    category: reader.readString(offsets[0]),
    code: reader.readString(offsets[1]),
    description: reader.readStringOrNull(offsets[2]),
    id: id,
    value: reader.readString(offsets[3]),
  );
  return object;
}

P _codeValueEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _codeValueEntitySerializeWeb(
    IsarCollection<CodeValueEntity> collection, CodeValueEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'category', object.category);
  IsarNative.jsObjectSet(jsObj, 'code', object.code);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'value', object.value);
  return jsObj;
}

CodeValueEntity _codeValueEntityDeserializeWeb(
    IsarCollection<CodeValueEntity> collection, dynamic jsObj) {
  final object = CodeValueEntity(
    category: IsarNative.jsObjectGet(jsObj, 'category') ?? '',
    code: IsarNative.jsObjectGet(jsObj, 'code') ?? '',
    description: IsarNative.jsObjectGet(jsObj, 'description'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    value: IsarNative.jsObjectGet(jsObj, 'value') ?? '',
  );
  return object;
}

P _codeValueEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'category':
      return (IsarNative.jsObjectGet(jsObj, 'category') ?? '') as P;
    case 'code':
      return (IsarNative.jsObjectGet(jsObj, 'code') ?? '') as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'value':
      return (IsarNative.jsObjectGet(jsObj, 'value') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _codeValueEntityAttachLinks(
    IsarCollection col, int id, CodeValueEntity object) {}

extension CodeValueEntityByIndex on IsarCollection<CodeValueEntity> {
  Future<CodeValueEntity?> getByCategoryCode(String category, String code) {
    return getByIndex('category_code', [category, code]);
  }

  CodeValueEntity? getByCategoryCodeSync(String category, String code) {
    return getByIndexSync('category_code', [category, code]);
  }

  Future<bool> deleteByCategoryCode(String category, String code) {
    return deleteByIndex('category_code', [category, code]);
  }

  bool deleteByCategoryCodeSync(String category, String code) {
    return deleteByIndexSync('category_code', [category, code]);
  }

  Future<List<CodeValueEntity?>> getAllByCategoryCode(
      List<String> categoryValues, List<String> codeValues) {
    final len = categoryValues.length;
    assert(
        codeValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([categoryValues[i], codeValues[i]]);
    }

    return getAllByIndex('category_code', values);
  }

  List<CodeValueEntity?> getAllByCategoryCodeSync(
      List<String> categoryValues, List<String> codeValues) {
    final len = categoryValues.length;
    assert(
        codeValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([categoryValues[i], codeValues[i]]);
    }

    return getAllByIndexSync('category_code', values);
  }

  Future<int> deleteAllByCategoryCode(
      List<String> categoryValues, List<String> codeValues) {
    final len = categoryValues.length;
    assert(
        codeValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([categoryValues[i], codeValues[i]]);
    }

    return deleteAllByIndex('category_code', values);
  }

  int deleteAllByCategoryCodeSync(
      List<String> categoryValues, List<String> codeValues) {
    final len = categoryValues.length;
    assert(
        codeValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([categoryValues[i], codeValues[i]]);
    }

    return deleteAllByIndexSync('category_code', values);
  }
}

extension CodeValueEntityQueryWhereSort
    on QueryBuilder<CodeValueEntity, CodeValueEntity, QWhere> {
  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhere> anyCategory() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'category'));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhere>
      anyCategoryCode() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'category_code'));
  }
}

extension CodeValueEntityQueryWhere
    on QueryBuilder<CodeValueEntity, CodeValueEntity, QWhereClause> {
  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause>
      categoryEqualTo(String category) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'category',
      value: [category],
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause>
      categoryNotEqualTo(String category) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'category',
        upper: [category],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'category',
        lower: [category],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'category',
        lower: [category],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'category',
        upper: [category],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause>
      categoryCodeEqualTo(String category, String code) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'category_code',
      value: [category, code],
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterWhereClause>
      categoryCodeNotEqualTo(String category, String code) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'category_code',
        upper: [category, code],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'category_code',
        lower: [category, code],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'category_code',
        lower: [category, code],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'category_code',
        upper: [category, code],
        includeUpper: false,
      ));
    }
  }
}

extension CodeValueEntityQueryFilter
    on QueryBuilder<CodeValueEntity, CodeValueEntity, QFilterCondition> {
  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'category',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      codeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'code',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      codeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'code',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      codeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'code',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      codeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'code',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'code',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'code',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      codeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'code',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      codeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'code',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      descriptionEqualTo(
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      descriptionGreaterThan(
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      descriptionLessThan(
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      descriptionBetween(
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
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

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      valueContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'value',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterFilterCondition>
      valueMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'value',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension CodeValueEntityQueryLinks
    on QueryBuilder<CodeValueEntity, CodeValueEntity, QFilterCondition> {}

extension CodeValueEntityQueryWhereSortBy
    on QueryBuilder<CodeValueEntity, CodeValueEntity, QSortBy> {
  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      sortByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      sortByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy> sortByCode() {
    return addSortByInternal('code', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      sortByCodeDesc() {
    return addSortByInternal('code', Sort.desc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy> sortByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      sortByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }
}

extension CodeValueEntityQueryWhereSortThenBy
    on QueryBuilder<CodeValueEntity, CodeValueEntity, QSortThenBy> {
  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      thenByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      thenByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy> thenByCode() {
    return addSortByInternal('code', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      thenByCodeDesc() {
    return addSortByInternal('code', Sort.desc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy> thenByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QAfterSortBy>
      thenByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }
}

extension CodeValueEntityQueryWhereDistinct
    on QueryBuilder<CodeValueEntity, CodeValueEntity, QDistinct> {
  QueryBuilder<CodeValueEntity, CodeValueEntity, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('category', caseSensitive: caseSensitive);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('code', caseSensitive: caseSensitive);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<CodeValueEntity, CodeValueEntity, QDistinct> distinctByValue(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('value', caseSensitive: caseSensitive);
  }
}

extension CodeValueEntityQueryProperty
    on QueryBuilder<CodeValueEntity, CodeValueEntity, QQueryProperty> {
  QueryBuilder<CodeValueEntity, String, QQueryOperations> categoryProperty() {
    return addPropertyNameInternal('category');
  }

  QueryBuilder<CodeValueEntity, String, QQueryOperations> codeProperty() {
    return addPropertyNameInternal('code');
  }

  QueryBuilder<CodeValueEntity, String?, QQueryOperations>
      descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<CodeValueEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<CodeValueEntity, String, QQueryOperations> valueProperty() {
    return addPropertyNameInternal('value');
  }
}
