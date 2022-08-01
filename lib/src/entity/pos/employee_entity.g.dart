// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetEmployeeEntityCollection on Isar {
  IsarCollection<EmployeeEntity> get employeeEntitys => getCollection();
}

const EmployeeEntitySchema = CollectionSchema(
  name: 'EmployeeEntity',
  schema:
      '{"name":"EmployeeEntity","idName":"id","properties":[{"name":"birthDate","type":"Long"},{"name":"email","type":"String"},{"name":"employeeId","type":"String"},{"name":"firstName","type":"String"},{"name":"gender","type":"String"},{"name":"lastName","type":"String"},{"name":"locale","type":"String"},{"name":"middleName","type":"String"},{"name":"phone","type":"String"},{"name":"picture","type":"String"}],"indexes":[{"name":"employeeId","unique":true,"properties":[{"name":"employeeId","type":"Value","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'birthDate': 0,
    'email': 1,
    'employeeId': 2,
    'firstName': 3,
    'gender': 4,
    'lastName': 5,
    'locale': 6,
    'middleName': 7,
    'phone': 8,
    'picture': 9
  },
  listProperties: {},
  indexIds: {'employeeId': 0},
  indexValueTypes: {
    'employeeId': [
      IndexValueType.string,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _employeeEntityGetId,
  setId: _employeeEntitySetId,
  getLinks: _employeeEntityGetLinks,
  attachLinks: _employeeEntityAttachLinks,
  serializeNative: _employeeEntitySerializeNative,
  deserializeNative: _employeeEntityDeserializeNative,
  deserializePropNative: _employeeEntityDeserializePropNative,
  serializeWeb: _employeeEntitySerializeWeb,
  deserializeWeb: _employeeEntityDeserializeWeb,
  deserializePropWeb: _employeeEntityDeserializePropWeb,
  version: 3,
);

int? _employeeEntityGetId(EmployeeEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _employeeEntitySetId(EmployeeEntity object, int id) {
  object.id = id;
}

List<IsarLinkBase> _employeeEntityGetLinks(EmployeeEntity object) {
  return [];
}

void _employeeEntitySerializeNative(
    IsarCollection<EmployeeEntity> collection,
    IsarRawObject rawObj,
    EmployeeEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.birthDate;
  final _birthDate = value0;
  final value1 = object.email;
  IsarUint8List? _email;
  if (value1 != null) {
    _email = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_email?.length ?? 0) as int;
  final value2 = object.employeeId;
  IsarUint8List? _employeeId;
  if (value2 != null) {
    _employeeId = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_employeeId?.length ?? 0) as int;
  final value3 = object.firstName;
  IsarUint8List? _firstName;
  if (value3 != null) {
    _firstName = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_firstName?.length ?? 0) as int;
  final value4 = object.gender;
  IsarUint8List? _gender;
  if (value4 != null) {
    _gender = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_gender?.length ?? 0) as int;
  final value5 = object.lastName;
  IsarUint8List? _lastName;
  if (value5 != null) {
    _lastName = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_lastName?.length ?? 0) as int;
  final value6 = object.locale;
  IsarUint8List? _locale;
  if (value6 != null) {
    _locale = IsarBinaryWriter.utf8Encoder.convert(value6);
  }
  dynamicSize += (_locale?.length ?? 0) as int;
  final value7 = object.middleName;
  IsarUint8List? _middleName;
  if (value7 != null) {
    _middleName = IsarBinaryWriter.utf8Encoder.convert(value7);
  }
  dynamicSize += (_middleName?.length ?? 0) as int;
  final value8 = object.phone;
  final _phone = IsarBinaryWriter.utf8Encoder.convert(value8);
  dynamicSize += (_phone.length) as int;
  final value9 = object.picture;
  IsarUint8List? _picture;
  if (value9 != null) {
    _picture = IsarBinaryWriter.utf8Encoder.convert(value9);
  }
  dynamicSize += (_picture?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _birthDate);
  writer.writeBytes(offsets[1], _email);
  writer.writeBytes(offsets[2], _employeeId);
  writer.writeBytes(offsets[3], _firstName);
  writer.writeBytes(offsets[4], _gender);
  writer.writeBytes(offsets[5], _lastName);
  writer.writeBytes(offsets[6], _locale);
  writer.writeBytes(offsets[7], _middleName);
  writer.writeBytes(offsets[8], _phone);
  writer.writeBytes(offsets[9], _picture);
}

EmployeeEntity _employeeEntityDeserializeNative(
    IsarCollection<EmployeeEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = EmployeeEntity(
    birthDate: reader.readDateTimeOrNull(offsets[0]),
    email: reader.readStringOrNull(offsets[1]),
    employeeId: reader.readStringOrNull(offsets[2]),
    firstName: reader.readStringOrNull(offsets[3]),
    gender: reader.readStringOrNull(offsets[4]),
    lastName: reader.readStringOrNull(offsets[5]),
    locale: reader.readStringOrNull(offsets[6]),
    middleName: reader.readStringOrNull(offsets[7]),
    phone: reader.readString(offsets[8]),
    picture: reader.readStringOrNull(offsets[9]),
  );
  object.id = id;
  return object;
}

P _employeeEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _employeeEntitySerializeWeb(
    IsarCollection<EmployeeEntity> collection, EmployeeEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'birthDate', object.birthDate?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'email', object.email);
  IsarNative.jsObjectSet(jsObj, 'employeeId', object.employeeId);
  IsarNative.jsObjectSet(jsObj, 'firstName', object.firstName);
  IsarNative.jsObjectSet(jsObj, 'gender', object.gender);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'lastName', object.lastName);
  IsarNative.jsObjectSet(jsObj, 'locale', object.locale);
  IsarNative.jsObjectSet(jsObj, 'middleName', object.middleName);
  IsarNative.jsObjectSet(jsObj, 'phone', object.phone);
  IsarNative.jsObjectSet(jsObj, 'picture', object.picture);
  return jsObj;
}

EmployeeEntity _employeeEntityDeserializeWeb(
    IsarCollection<EmployeeEntity> collection, dynamic jsObj) {
  final object = EmployeeEntity(
    birthDate: IsarNative.jsObjectGet(jsObj, 'birthDate') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'birthDate'),
                isUtc: true)
            .toLocal()
        : null,
    email: IsarNative.jsObjectGet(jsObj, 'email'),
    employeeId: IsarNative.jsObjectGet(jsObj, 'employeeId'),
    firstName: IsarNative.jsObjectGet(jsObj, 'firstName'),
    gender: IsarNative.jsObjectGet(jsObj, 'gender'),
    lastName: IsarNative.jsObjectGet(jsObj, 'lastName'),
    locale: IsarNative.jsObjectGet(jsObj, 'locale'),
    middleName: IsarNative.jsObjectGet(jsObj, 'middleName'),
    phone: IsarNative.jsObjectGet(jsObj, 'phone') ?? '',
    picture: IsarNative.jsObjectGet(jsObj, 'picture'),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _employeeEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'birthDate':
      return (IsarNative.jsObjectGet(jsObj, 'birthDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'birthDate'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'email':
      return (IsarNative.jsObjectGet(jsObj, 'email')) as P;
    case 'employeeId':
      return (IsarNative.jsObjectGet(jsObj, 'employeeId')) as P;
    case 'firstName':
      return (IsarNative.jsObjectGet(jsObj, 'firstName')) as P;
    case 'gender':
      return (IsarNative.jsObjectGet(jsObj, 'gender')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'lastName':
      return (IsarNative.jsObjectGet(jsObj, 'lastName')) as P;
    case 'locale':
      return (IsarNative.jsObjectGet(jsObj, 'locale')) as P;
    case 'middleName':
      return (IsarNative.jsObjectGet(jsObj, 'middleName')) as P;
    case 'phone':
      return (IsarNative.jsObjectGet(jsObj, 'phone') ?? '') as P;
    case 'picture':
      return (IsarNative.jsObjectGet(jsObj, 'picture')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _employeeEntityAttachLinks(
    IsarCollection col, int id, EmployeeEntity object) {}

extension EmployeeEntityByIndex on IsarCollection<EmployeeEntity> {
  Future<EmployeeEntity?> getByEmployeeId(String? employeeId) {
    return getByIndex('employeeId', [employeeId]);
  }

  EmployeeEntity? getByEmployeeIdSync(String? employeeId) {
    return getByIndexSync('employeeId', [employeeId]);
  }

  Future<bool> deleteByEmployeeId(String? employeeId) {
    return deleteByIndex('employeeId', [employeeId]);
  }

  bool deleteByEmployeeIdSync(String? employeeId) {
    return deleteByIndexSync('employeeId', [employeeId]);
  }

  Future<List<EmployeeEntity?>> getAllByEmployeeId(
      List<String?> employeeIdValues) {
    final values = employeeIdValues.map((e) => [e]).toList();
    return getAllByIndex('employeeId', values);
  }

  List<EmployeeEntity?> getAllByEmployeeIdSync(List<String?> employeeIdValues) {
    final values = employeeIdValues.map((e) => [e]).toList();
    return getAllByIndexSync('employeeId', values);
  }

  Future<int> deleteAllByEmployeeId(List<String?> employeeIdValues) {
    final values = employeeIdValues.map((e) => [e]).toList();
    return deleteAllByIndex('employeeId', values);
  }

  int deleteAllByEmployeeIdSync(List<String?> employeeIdValues) {
    final values = employeeIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('employeeId', values);
  }
}

extension EmployeeEntityQueryWhereSort
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QWhere> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhere> anyEmployeeId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'employeeId'));
  }
}

extension EmployeeEntityQueryWhere
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QWhereClause> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdEqualTo(String? employeeId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'employeeId',
      value: [employeeId],
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdNotEqualTo(String? employeeId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'employeeId',
        upper: [employeeId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'employeeId',
        lower: [employeeId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'employeeId',
        lower: [employeeId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'employeeId',
        upper: [employeeId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'employeeId',
      value: [null],
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'employeeId',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdGreaterThan(
    String? employeeId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'employeeId',
      lower: [employeeId],
      includeLower: include,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdLessThan(
    String? employeeId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'employeeId',
      upper: [employeeId],
      includeUpper: include,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdBetween(
    String? lowerEmployeeId,
    String? upperEmployeeId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'employeeId',
      lower: [lowerEmployeeId],
      includeLower: includeLower,
      upper: [upperEmployeeId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdStartsWith(String? EmployeeIdPrefix) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'employeeId',
      lower: [EmployeeIdPrefix],
      includeLower: true,
      upper: ['$EmployeeIdPrefix\u{FFFFF}'],
      includeUpper: true,
    ));
  }
}

extension EmployeeEntityQueryFilter
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QFilterCondition> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'birthDate',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'birthDate',
      value: value,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'birthDate',
      value: value,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'birthDate',
      value: value,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'birthDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'email',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'email',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'email',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'employeeId',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'employeeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdGreaterThan(
    String? value, {
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdLessThan(
    String? value, {
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'employeeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'employeeId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'firstName',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'firstName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'firstName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'gender',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'gender',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'gender',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'gender',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'gender',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'gender',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'gender',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'gender',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'gender',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastName',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'lastName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'locale',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeGreaterThan(
    String? value, {
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeLessThan(
    String? value, {
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
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

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'locale',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'middleName',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'middleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'middleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'middleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'middleName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'middleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'middleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'middleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'middleName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'phone',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'phone',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'picture',
      value: null,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'picture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'picture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'picture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'picture',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'picture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'picture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'picture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'picture',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension EmployeeEntityQueryLinks
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QFilterCondition> {}

extension EmployeeEntityQueryWhereSortBy
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QSortBy> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByBirthDate() {
    return addSortByInternal('birthDate', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByBirthDateDesc() {
    return addSortByInternal('birthDate', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByEmployeeId() {
    return addSortByInternal('employeeId', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByEmployeeIdDesc() {
    return addSortByInternal('employeeId', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByFirstName() {
    return addSortByInternal('firstName', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByFirstNameDesc() {
    return addSortByInternal('firstName', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByGender() {
    return addSortByInternal('gender', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByGenderDesc() {
    return addSortByInternal('gender', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByLastName() {
    return addSortByInternal('lastName', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByLastNameDesc() {
    return addSortByInternal('lastName', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByLocale() {
    return addSortByInternal('locale', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByLocaleDesc() {
    return addSortByInternal('locale', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByMiddleName() {
    return addSortByInternal('middleName', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByMiddleNameDesc() {
    return addSortByInternal('middleName', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByPicture() {
    return addSortByInternal('picture', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByPictureDesc() {
    return addSortByInternal('picture', Sort.desc);
  }
}

extension EmployeeEntityQueryWhereSortThenBy
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QSortThenBy> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByBirthDate() {
    return addSortByInternal('birthDate', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByBirthDateDesc() {
    return addSortByInternal('birthDate', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByEmployeeId() {
    return addSortByInternal('employeeId', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByEmployeeIdDesc() {
    return addSortByInternal('employeeId', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByFirstName() {
    return addSortByInternal('firstName', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByFirstNameDesc() {
    return addSortByInternal('firstName', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByGender() {
    return addSortByInternal('gender', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByGenderDesc() {
    return addSortByInternal('gender', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByLastName() {
    return addSortByInternal('lastName', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByLastNameDesc() {
    return addSortByInternal('lastName', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByLocale() {
    return addSortByInternal('locale', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByLocaleDesc() {
    return addSortByInternal('locale', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByMiddleName() {
    return addSortByInternal('middleName', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByMiddleNameDesc() {
    return addSortByInternal('middleName', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByPicture() {
    return addSortByInternal('picture', Sort.asc);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByPictureDesc() {
    return addSortByInternal('picture', Sort.desc);
  }
}

extension EmployeeEntityQueryWhereDistinct
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct>
      distinctByBirthDate() {
    return addDistinctByInternal('birthDate');
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('email', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByEmployeeId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('employeeId', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('firstName', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByGender(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('gender', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('lastName', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByLocale(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('locale', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByMiddleName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('middleName', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('phone', caseSensitive: caseSensitive);
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByPicture(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('picture', caseSensitive: caseSensitive);
  }
}

extension EmployeeEntityQueryProperty
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QQueryProperty> {
  QueryBuilder<EmployeeEntity, DateTime?, QQueryOperations>
      birthDateProperty() {
    return addPropertyNameInternal('birthDate');
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> emailProperty() {
    return addPropertyNameInternal('email');
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> employeeIdProperty() {
    return addPropertyNameInternal('employeeId');
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> firstNameProperty() {
    return addPropertyNameInternal('firstName');
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> genderProperty() {
    return addPropertyNameInternal('gender');
  }

  QueryBuilder<EmployeeEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> lastNameProperty() {
    return addPropertyNameInternal('lastName');
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> localeProperty() {
    return addPropertyNameInternal('locale');
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> middleNameProperty() {
    return addPropertyNameInternal('middleName');
  }

  QueryBuilder<EmployeeEntity, String, QQueryOperations> phoneProperty() {
    return addPropertyNameInternal('phone');
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> pictureProperty() {
    return addPropertyNameInternal('picture');
  }
}
