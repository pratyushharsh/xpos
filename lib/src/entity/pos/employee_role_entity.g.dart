// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_role_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetEmployeeRoleEntityCollection on Isar {
  IsarCollection<EmployeeRoleEntity> get employeeRoleEntitys => getCollection();
}

const EmployeeRoleEntitySchema = CollectionSchema(
  name: 'EmployeeRoleEntity',
  schema:
      '{"name":"EmployeeRoleEntity","idName":"id","properties":[{"name":"createdBy","type":"String"},{"name":"employeeId","type":"String"},{"name":"locale","type":"String"},{"name":"role","type":"String"},{"name":"storeId","type":"String"}],"indexes":[{"name":"employeeId_storeId","unique":true,"properties":[{"name":"employeeId","type":"Hash","caseSensitive":true},{"name":"storeId","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'createdBy': 0,
    'employeeId': 1,
    'locale': 2,
    'role': 3,
    'storeId': 4
  },
  listProperties: {},
  indexIds: {'employeeId_storeId': 0},
  indexValueTypes: {
    'employeeId_storeId': [
      IndexValueType.stringHash,
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _employeeRoleEntityGetId,
  setId: _employeeRoleEntitySetId,
  getLinks: _employeeRoleEntityGetLinks,
  attachLinks: _employeeRoleEntityAttachLinks,
  serializeNative: _employeeRoleEntitySerializeNative,
  deserializeNative: _employeeRoleEntityDeserializeNative,
  deserializePropNative: _employeeRoleEntityDeserializePropNative,
  serializeWeb: _employeeRoleEntitySerializeWeb,
  deserializeWeb: _employeeRoleEntityDeserializeWeb,
  deserializePropWeb: _employeeRoleEntityDeserializePropWeb,
  version: 3,
);

int? _employeeRoleEntityGetId(EmployeeRoleEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _employeeRoleEntitySetId(EmployeeRoleEntity object, int id) {
  object.id = id;
}

List<IsarLinkBase> _employeeRoleEntityGetLinks(EmployeeRoleEntity object) {
  return [];
}

void _employeeRoleEntitySerializeNative(
    IsarCollection<EmployeeRoleEntity> collection,
    IsarRawObject rawObj,
    EmployeeRoleEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.createdBy;
  final _createdBy = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_createdBy.length) as int;
  final value1 = object.employeeId;
  final _employeeId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_employeeId.length) as int;
  final value2 = object.locale;
  final _locale = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_locale.length) as int;
  final value3 = object.role;
  final _role = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_role.length) as int;
  final value4 = object.storeId;
  final _storeId = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_storeId.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _createdBy);
  writer.writeBytes(offsets[1], _employeeId);
  writer.writeBytes(offsets[2], _locale);
  writer.writeBytes(offsets[3], _role);
  writer.writeBytes(offsets[4], _storeId);
}

EmployeeRoleEntity _employeeRoleEntityDeserializeNative(
    IsarCollection<EmployeeRoleEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = EmployeeRoleEntity(
    createdBy: reader.readString(offsets[0]),
    employeeId: reader.readString(offsets[1]),
    locale: reader.readString(offsets[2]),
    role: reader.readString(offsets[3]),
    storeId: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _employeeRoleEntityDeserializePropNative<P>(
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
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _employeeRoleEntitySerializeWeb(
    IsarCollection<EmployeeRoleEntity> collection, EmployeeRoleEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'createdBy', object.createdBy);
  IsarNative.jsObjectSet(jsObj, 'employeeId', object.employeeId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'locale', object.locale);
  IsarNative.jsObjectSet(jsObj, 'role', object.role);
  IsarNative.jsObjectSet(jsObj, 'storeId', object.storeId);
  return jsObj;
}

EmployeeRoleEntity _employeeRoleEntityDeserializeWeb(
    IsarCollection<EmployeeRoleEntity> collection, dynamic jsObj) {
  final object = EmployeeRoleEntity(
    createdBy: IsarNative.jsObjectGet(jsObj, 'createdBy') ?? '',
    employeeId: IsarNative.jsObjectGet(jsObj, 'employeeId') ?? '',
    locale: IsarNative.jsObjectGet(jsObj, 'locale') ?? '',
    role: IsarNative.jsObjectGet(jsObj, 'role') ?? '',
    storeId: IsarNative.jsObjectGet(jsObj, 'storeId') ?? '',
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _employeeRoleEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'createdBy':
      return (IsarNative.jsObjectGet(jsObj, 'createdBy') ?? '') as P;
    case 'employeeId':
      return (IsarNative.jsObjectGet(jsObj, 'employeeId') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'locale':
      return (IsarNative.jsObjectGet(jsObj, 'locale') ?? '') as P;
    case 'role':
      return (IsarNative.jsObjectGet(jsObj, 'role') ?? '') as P;
    case 'storeId':
      return (IsarNative.jsObjectGet(jsObj, 'storeId') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _employeeRoleEntityAttachLinks(
    IsarCollection col, int id, EmployeeRoleEntity object) {}

extension EmployeeRoleEntityByIndex on IsarCollection<EmployeeRoleEntity> {
  Future<EmployeeRoleEntity?> getByEmployeeIdStoreId(
      String employeeId, String storeId) {
    return getByIndex('employeeId_storeId', [employeeId, storeId]);
  }

  EmployeeRoleEntity? getByEmployeeIdStoreIdSync(
      String employeeId, String storeId) {
    return getByIndexSync('employeeId_storeId', [employeeId, storeId]);
  }

  Future<bool> deleteByEmployeeIdStoreId(String employeeId, String storeId) {
    return deleteByIndex('employeeId_storeId', [employeeId, storeId]);
  }

  bool deleteByEmployeeIdStoreIdSync(String employeeId, String storeId) {
    return deleteByIndexSync('employeeId_storeId', [employeeId, storeId]);
  }

  Future<List<EmployeeRoleEntity?>> getAllByEmployeeIdStoreId(
      List<String> employeeIdValues, List<String> storeIdValues) {
    final len = employeeIdValues.length;
    assert(storeIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([employeeIdValues[i], storeIdValues[i]]);
    }

    return getAllByIndex('employeeId_storeId', values);
  }

  List<EmployeeRoleEntity?> getAllByEmployeeIdStoreIdSync(
      List<String> employeeIdValues, List<String> storeIdValues) {
    final len = employeeIdValues.length;
    assert(storeIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([employeeIdValues[i], storeIdValues[i]]);
    }

    return getAllByIndexSync('employeeId_storeId', values);
  }

  Future<int> deleteAllByEmployeeIdStoreId(
      List<String> employeeIdValues, List<String> storeIdValues) {
    final len = employeeIdValues.length;
    assert(storeIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([employeeIdValues[i], storeIdValues[i]]);
    }

    return deleteAllByIndex('employeeId_storeId', values);
  }

  int deleteAllByEmployeeIdStoreIdSync(
      List<String> employeeIdValues, List<String> storeIdValues) {
    final len = employeeIdValues.length;
    assert(storeIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([employeeIdValues[i], storeIdValues[i]]);
    }

    return deleteAllByIndexSync('employeeId_storeId', values);
  }
}

extension EmployeeRoleEntityQueryWhereSort
    on QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QWhere> {
  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhere>
      anyEmployeeIdStoreId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'employeeId_storeId'));
  }
}

extension EmployeeRoleEntityQueryWhere
    on QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QWhereClause> {
  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
      idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
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

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
      idBetween(
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

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
      employeeIdEqualTo(String employeeId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'employeeId_storeId',
      value: [employeeId],
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
      employeeIdNotEqualTo(String employeeId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'employeeId_storeId',
        upper: [employeeId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'employeeId_storeId',
        lower: [employeeId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'employeeId_storeId',
        lower: [employeeId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'employeeId_storeId',
        upper: [employeeId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
      employeeIdStoreIdEqualTo(String employeeId, String storeId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'employeeId_storeId',
      value: [employeeId, storeId],
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterWhereClause>
      employeeIdStoreIdNotEqualTo(String employeeId, String storeId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'employeeId_storeId',
        upper: [employeeId, storeId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'employeeId_storeId',
        lower: [employeeId, storeId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'employeeId_storeId',
        lower: [employeeId, storeId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'employeeId_storeId',
        upper: [employeeId, storeId],
        includeUpper: false,
      ));
    }
  }
}

extension EmployeeRoleEntityQueryFilter
    on QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QFilterCondition> {
  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      createdByEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createdBy',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      createdByGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createdBy',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      createdByLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createdBy',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      createdByBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdBy',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      createdByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'createdBy',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      createdByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'createdBy',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      createdByContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'createdBy',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      createdByMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'createdBy',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      employeeIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'employeeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      employeeIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'employeeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      employeeIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'employeeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      employeeIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'employeeId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      employeeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'employeeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      employeeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'employeeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      employeeIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'employeeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      employeeIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'employeeId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      localeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      localeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      localeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      localeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'locale',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      localeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      localeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      localeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      localeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'locale',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      roleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'role',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      roleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'role',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      roleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'role',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      roleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'role',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      roleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'role',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      roleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'role',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      roleContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'role',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      roleMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'role',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      storeIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      storeIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      storeIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      storeIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      storeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      storeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      storeIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterFilterCondition>
      storeIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'storeId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension EmployeeRoleEntityQueryLinks
    on QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QFilterCondition> {}

extension EmployeeRoleEntityQueryWhereSortBy
    on QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QSortBy> {
  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByCreatedBy() {
    return addSortByInternal('createdBy', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByCreatedByDesc() {
    return addSortByInternal('createdBy', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByEmployeeId() {
    return addSortByInternal('employeeId', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByEmployeeIdDesc() {
    return addSortByInternal('employeeId', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByLocale() {
    return addSortByInternal('locale', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByLocaleDesc() {
    return addSortByInternal('locale', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByRole() {
    return addSortByInternal('role', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByRoleDesc() {
    return addSortByInternal('role', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      sortByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }
}

extension EmployeeRoleEntityQueryWhereSortThenBy
    on QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QSortThenBy> {
  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByCreatedBy() {
    return addSortByInternal('createdBy', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByCreatedByDesc() {
    return addSortByInternal('createdBy', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByEmployeeId() {
    return addSortByInternal('employeeId', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByEmployeeIdDesc() {
    return addSortByInternal('employeeId', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByLocale() {
    return addSortByInternal('locale', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByLocaleDesc() {
    return addSortByInternal('locale', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByRole() {
    return addSortByInternal('role', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByRoleDesc() {
    return addSortByInternal('role', Sort.desc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QAfterSortBy>
      thenByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }
}

extension EmployeeRoleEntityQueryWhereDistinct
    on QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QDistinct> {
  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QDistinct>
      distinctByCreatedBy({bool caseSensitive = true}) {
    return addDistinctByInternal('createdBy', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QDistinct>
      distinctByEmployeeId({bool caseSensitive = true}) {
    return addDistinctByInternal('employeeId', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QDistinct>
      distinctByLocale({bool caseSensitive = true}) {
    return addDistinctByInternal('locale', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QDistinct>
      distinctByRole({bool caseSensitive = true}) {
    return addDistinctByInternal('role', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QDistinct>
      distinctByStoreId({bool caseSensitive = true}) {
    return addDistinctByInternal('storeId', caseSensitive: caseSensitive);
  }
}

extension EmployeeRoleEntityQueryProperty
    on QueryBuilder<EmployeeRoleEntity, EmployeeRoleEntity, QQueryProperty> {
  QueryBuilder<EmployeeRoleEntity, String, QQueryOperations>
      createdByProperty() {
    return addPropertyNameInternal('createdBy');
  }

  QueryBuilder<EmployeeRoleEntity, String, QQueryOperations>
      employeeIdProperty() {
    return addPropertyNameInternal('employeeId');
  }

  QueryBuilder<EmployeeRoleEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<EmployeeRoleEntity, String, QQueryOperations> localeProperty() {
    return addPropertyNameInternal('locale');
  }

  QueryBuilder<EmployeeRoleEntity, String, QQueryOperations> roleProperty() {
    return addPropertyNameInternal('role');
  }

  QueryBuilder<EmployeeRoleEntity, String, QQueryOperations> storeIdProperty() {
    return addPropertyNameInternal('storeId');
  }
}
