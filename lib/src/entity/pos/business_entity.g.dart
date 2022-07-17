// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetRetailLocationEntityCollection on Isar {
  IsarCollection<RetailLocationEntity> get retailLocationEntitys =>
      getCollection();
}

const RetailLocationEntitySchema = CollectionSchema(
  name: 'RetailLocationEntity',
  schema:
      '{"name":"RetailLocationEntity","idName":"rtlLocId","properties":[{"name":"address1","type":"String"},{"name":"address2","type":"String"},{"name":"city","type":"String"},{"name":"country","type":"String"},{"name":"createTime","type":"Long"},{"name":"currencyId","type":"String"},{"name":"gst","type":"String"},{"name":"lastChangedAt","type":"Long"},{"name":"locale","type":"String"},{"name":"pan","type":"String"},{"name":"postalCode","type":"String"},{"name":"state","type":"String"},{"name":"storeContact","type":"String"},{"name":"storeEmail","type":"String"},{"name":"storeName","type":"String"},{"name":"storeNumber","type":"String"},{"name":"updateTime","type":"Long"},{"name":"version","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'rtlLocId',
  propertyIds: {
    'address1': 0,
    'address2': 1,
    'city': 2,
    'country': 3,
    'createTime': 4,
    'currencyId': 5,
    'gst': 6,
    'lastChangedAt': 7,
    'locale': 8,
    'pan': 9,
    'postalCode': 10,
    'state': 11,
    'storeContact': 12,
    'storeEmail': 13,
    'storeName': 14,
    'storeNumber': 15,
    'updateTime': 16,
    'version': 17
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _retailLocationEntityGetId,
  getLinks: _retailLocationEntityGetLinks,
  attachLinks: _retailLocationEntityAttachLinks,
  serializeNative: _retailLocationEntitySerializeNative,
  deserializeNative: _retailLocationEntityDeserializeNative,
  deserializePropNative: _retailLocationEntityDeserializePropNative,
  serializeWeb: _retailLocationEntitySerializeWeb,
  deserializeWeb: _retailLocationEntityDeserializeWeb,
  deserializePropWeb: _retailLocationEntityDeserializePropWeb,
  version: 3,
);

int? _retailLocationEntityGetId(RetailLocationEntity object) {
  if (object.rtlLocId == Isar.autoIncrement) {
    return null;
  } else {
    return object.rtlLocId;
  }
}

List<IsarLinkBase> _retailLocationEntityGetLinks(RetailLocationEntity object) {
  return [];
}

void _retailLocationEntitySerializeNative(
    IsarCollection<RetailLocationEntity> collection,
    IsarRawObject rawObj,
    RetailLocationEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.address1;
  IsarUint8List? _address1;
  if (value0 != null) {
    _address1 = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_address1?.length ?? 0) as int;
  final value1 = object.address2;
  IsarUint8List? _address2;
  if (value1 != null) {
    _address2 = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_address2?.length ?? 0) as int;
  final value2 = object.city;
  IsarUint8List? _city;
  if (value2 != null) {
    _city = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_city?.length ?? 0) as int;
  final value3 = object.country;
  IsarUint8List? _country;
  if (value3 != null) {
    _country = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_country?.length ?? 0) as int;
  final value4 = object.createTime;
  final _createTime = value4;
  final value5 = object.currencyId;
  IsarUint8List? _currencyId;
  if (value5 != null) {
    _currencyId = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_currencyId?.length ?? 0) as int;
  final value6 = object.gst;
  IsarUint8List? _gst;
  if (value6 != null) {
    _gst = IsarBinaryWriter.utf8Encoder.convert(value6);
  }
  dynamicSize += (_gst?.length ?? 0) as int;
  final value7 = object.lastChangedAt;
  final _lastChangedAt = value7;
  final value8 = object.locale;
  IsarUint8List? _locale;
  if (value8 != null) {
    _locale = IsarBinaryWriter.utf8Encoder.convert(value8);
  }
  dynamicSize += (_locale?.length ?? 0) as int;
  final value9 = object.pan;
  IsarUint8List? _pan;
  if (value9 != null) {
    _pan = IsarBinaryWriter.utf8Encoder.convert(value9);
  }
  dynamicSize += (_pan?.length ?? 0) as int;
  final value10 = object.postalCode;
  IsarUint8List? _postalCode;
  if (value10 != null) {
    _postalCode = IsarBinaryWriter.utf8Encoder.convert(value10);
  }
  dynamicSize += (_postalCode?.length ?? 0) as int;
  final value11 = object.state;
  IsarUint8List? _state;
  if (value11 != null) {
    _state = IsarBinaryWriter.utf8Encoder.convert(value11);
  }
  dynamicSize += (_state?.length ?? 0) as int;
  final value12 = object.storeContact;
  IsarUint8List? _storeContact;
  if (value12 != null) {
    _storeContact = IsarBinaryWriter.utf8Encoder.convert(value12);
  }
  dynamicSize += (_storeContact?.length ?? 0) as int;
  final value13 = object.storeEmail;
  IsarUint8List? _storeEmail;
  if (value13 != null) {
    _storeEmail = IsarBinaryWriter.utf8Encoder.convert(value13);
  }
  dynamicSize += (_storeEmail?.length ?? 0) as int;
  final value14 = object.storeName;
  IsarUint8List? _storeName;
  if (value14 != null) {
    _storeName = IsarBinaryWriter.utf8Encoder.convert(value14);
  }
  dynamicSize += (_storeName?.length ?? 0) as int;
  final value15 = object.storeNumber;
  IsarUint8List? _storeNumber;
  if (value15 != null) {
    _storeNumber = IsarBinaryWriter.utf8Encoder.convert(value15);
  }
  dynamicSize += (_storeNumber?.length ?? 0) as int;
  final value16 = object.updateTime;
  final _updateTime = value16;
  final value17 = object.version;
  final _version = value17;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _address1);
  writer.writeBytes(offsets[1], _address2);
  writer.writeBytes(offsets[2], _city);
  writer.writeBytes(offsets[3], _country);
  writer.writeDateTime(offsets[4], _createTime);
  writer.writeBytes(offsets[5], _currencyId);
  writer.writeBytes(offsets[6], _gst);
  writer.writeDateTime(offsets[7], _lastChangedAt);
  writer.writeBytes(offsets[8], _locale);
  writer.writeBytes(offsets[9], _pan);
  writer.writeBytes(offsets[10], _postalCode);
  writer.writeBytes(offsets[11], _state);
  writer.writeBytes(offsets[12], _storeContact);
  writer.writeBytes(offsets[13], _storeEmail);
  writer.writeBytes(offsets[14], _storeName);
  writer.writeBytes(offsets[15], _storeNumber);
  writer.writeDateTime(offsets[16], _updateTime);
  writer.writeLong(offsets[17], _version);
}

RetailLocationEntity _retailLocationEntityDeserializeNative(
    IsarCollection<RetailLocationEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = RetailLocationEntity(
    address1: reader.readStringOrNull(offsets[0]),
    address2: reader.readStringOrNull(offsets[1]),
    city: reader.readStringOrNull(offsets[2]),
    country: reader.readStringOrNull(offsets[3]),
    createTime: reader.readDateTime(offsets[4]),
    currencyId: reader.readStringOrNull(offsets[5]),
    gst: reader.readStringOrNull(offsets[6]),
    lastChangedAt: reader.readDateTimeOrNull(offsets[7]),
    locale: reader.readStringOrNull(offsets[8]),
    pan: reader.readStringOrNull(offsets[9]),
    postalCode: reader.readStringOrNull(offsets[10]),
    rtlLocId: id,
    state: reader.readStringOrNull(offsets[11]),
    storeContact: reader.readStringOrNull(offsets[12]),
    storeEmail: reader.readStringOrNull(offsets[13]),
    storeName: reader.readStringOrNull(offsets[14]),
    storeNumber: reader.readStringOrNull(offsets[15]),
    updateTime: reader.readDateTimeOrNull(offsets[16]),
    version: reader.readLong(offsets[17]),
  );
  return object;
}

P _retailLocationEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _retailLocationEntitySerializeWeb(
    IsarCollection<RetailLocationEntity> collection,
    RetailLocationEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'address1', object.address1);
  IsarNative.jsObjectSet(jsObj, 'address2', object.address2);
  IsarNative.jsObjectSet(jsObj, 'city', object.city);
  IsarNative.jsObjectSet(jsObj, 'country', object.country);
  IsarNative.jsObjectSet(
      jsObj, 'createTime', object.createTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'currencyId', object.currencyId);
  IsarNative.jsObjectSet(jsObj, 'gst', object.gst);
  IsarNative.jsObjectSet(jsObj, 'lastChangedAt',
      object.lastChangedAt?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'locale', object.locale);
  IsarNative.jsObjectSet(jsObj, 'pan', object.pan);
  IsarNative.jsObjectSet(jsObj, 'postalCode', object.postalCode);
  IsarNative.jsObjectSet(jsObj, 'rtlLocId', object.rtlLocId);
  IsarNative.jsObjectSet(jsObj, 'state', object.state);
  IsarNative.jsObjectSet(jsObj, 'storeContact', object.storeContact);
  IsarNative.jsObjectSet(jsObj, 'storeEmail', object.storeEmail);
  IsarNative.jsObjectSet(jsObj, 'storeName', object.storeName);
  IsarNative.jsObjectSet(jsObj, 'storeNumber', object.storeNumber);
  IsarNative.jsObjectSet(
      jsObj, 'updateTime', object.updateTime?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'version', object.version);
  return jsObj;
}

RetailLocationEntity _retailLocationEntityDeserializeWeb(
    IsarCollection<RetailLocationEntity> collection, dynamic jsObj) {
  final object = RetailLocationEntity(
    address1: IsarNative.jsObjectGet(jsObj, 'address1'),
    address2: IsarNative.jsObjectGet(jsObj, 'address2'),
    city: IsarNative.jsObjectGet(jsObj, 'city'),
    country: IsarNative.jsObjectGet(jsObj, 'country'),
    createTime: IsarNative.jsObjectGet(jsObj, 'createTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'createTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    currencyId: IsarNative.jsObjectGet(jsObj, 'currencyId'),
    gst: IsarNative.jsObjectGet(jsObj, 'gst'),
    lastChangedAt: IsarNative.jsObjectGet(jsObj, 'lastChangedAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'lastChangedAt'),
                isUtc: true)
            .toLocal()
        : null,
    locale: IsarNative.jsObjectGet(jsObj, 'locale'),
    pan: IsarNative.jsObjectGet(jsObj, 'pan'),
    postalCode: IsarNative.jsObjectGet(jsObj, 'postalCode'),
    rtlLocId:
        IsarNative.jsObjectGet(jsObj, 'rtlLocId') ?? double.negativeInfinity,
    state: IsarNative.jsObjectGet(jsObj, 'state'),
    storeContact: IsarNative.jsObjectGet(jsObj, 'storeContact'),
    storeEmail: IsarNative.jsObjectGet(jsObj, 'storeEmail'),
    storeName: IsarNative.jsObjectGet(jsObj, 'storeName'),
    storeNumber: IsarNative.jsObjectGet(jsObj, 'storeNumber'),
    updateTime: IsarNative.jsObjectGet(jsObj, 'updateTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'updateTime'),
                isUtc: true)
            .toLocal()
        : null,
    version:
        IsarNative.jsObjectGet(jsObj, 'version') ?? double.negativeInfinity,
  );
  return object;
}

P _retailLocationEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'address1':
      return (IsarNative.jsObjectGet(jsObj, 'address1')) as P;
    case 'address2':
      return (IsarNative.jsObjectGet(jsObj, 'address2')) as P;
    case 'city':
      return (IsarNative.jsObjectGet(jsObj, 'city')) as P;
    case 'country':
      return (IsarNative.jsObjectGet(jsObj, 'country')) as P;
    case 'createTime':
      return (IsarNative.jsObjectGet(jsObj, 'createTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'currencyId':
      return (IsarNative.jsObjectGet(jsObj, 'currencyId')) as P;
    case 'gst':
      return (IsarNative.jsObjectGet(jsObj, 'gst')) as P;
    case 'lastChangedAt':
      return (IsarNative.jsObjectGet(jsObj, 'lastChangedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'lastChangedAt'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'locale':
      return (IsarNative.jsObjectGet(jsObj, 'locale')) as P;
    case 'pan':
      return (IsarNative.jsObjectGet(jsObj, 'pan')) as P;
    case 'postalCode':
      return (IsarNative.jsObjectGet(jsObj, 'postalCode')) as P;
    case 'rtlLocId':
      return (IsarNative.jsObjectGet(jsObj, 'rtlLocId') ??
          double.negativeInfinity) as P;
    case 'state':
      return (IsarNative.jsObjectGet(jsObj, 'state')) as P;
    case 'storeContact':
      return (IsarNative.jsObjectGet(jsObj, 'storeContact')) as P;
    case 'storeEmail':
      return (IsarNative.jsObjectGet(jsObj, 'storeEmail')) as P;
    case 'storeName':
      return (IsarNative.jsObjectGet(jsObj, 'storeName')) as P;
    case 'storeNumber':
      return (IsarNative.jsObjectGet(jsObj, 'storeNumber')) as P;
    case 'updateTime':
      return (IsarNative.jsObjectGet(jsObj, 'updateTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updateTime'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'version':
      return (IsarNative.jsObjectGet(jsObj, 'version') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _retailLocationEntityAttachLinks(
    IsarCollection col, int id, RetailLocationEntity object) {}

extension RetailLocationEntityQueryWhereSort
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QWhere> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhere>
      anyRtlLocId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension RetailLocationEntityQueryWhere
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QWhereClause> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdEqualTo(int rtlLocId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: rtlLocId,
      includeLower: true,
      upper: rtlLocId,
      includeUpper: true,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdNotEqualTo(int rtlLocId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: rtlLocId, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: rtlLocId, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: rtlLocId, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: rtlLocId, includeUpper: false),
      );
    }
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdGreaterThan(int rtlLocId, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: rtlLocId, includeLower: include),
    );
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdLessThan(int rtlLocId, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: rtlLocId, includeUpper: include),
    );
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdBetween(
    int lowerRtlLocId,
    int upperRtlLocId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerRtlLocId,
      includeLower: includeLower,
      upper: upperRtlLocId,
      includeUpper: includeUpper,
    ));
  }
}

extension RetailLocationEntityQueryFilter on QueryBuilder<RetailLocationEntity,
    RetailLocationEntity, QFilterCondition> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1IsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'address1',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'address1',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1GreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'address1',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1LessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'address1',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1Between(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'address1',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'address1',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'address1',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      address1Contains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'address1',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      address1Matches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'address1',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2IsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'address2',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'address2',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2GreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'address2',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2LessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'address2',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2Between(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'address2',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'address2',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'address2',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      address2Contains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'address2',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      address2Matches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'address2',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'city',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'city',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      cityContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      cityMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'city',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'country',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'country',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'country',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'currencyId',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currencyId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      currencyIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'currencyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      currencyIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'currencyId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'gst',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'gst',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'gst',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'gst',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'gst',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'gst',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'gst',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      gstContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'gst',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      gstMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'gst',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastChangedAt',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastChangedAt',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastChangedAt',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastChangedAt',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastChangedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'locale',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeEqualTo(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeGreaterThan(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeLessThan(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeBetween(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeStartsWith(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeEndsWith(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      localeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'locale',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      localeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'locale',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'pan',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pan',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pan',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pan',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pan',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'pan',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'pan',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      panContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'pan',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      panMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'pan',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'postalCode',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'postalCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'postalCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'postalCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'postalCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'postalCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'postalCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      postalCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'postalCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      postalCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'postalCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'rtlLocId',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'rtlLocId',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'rtlLocId',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'rtlLocId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'state',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'state',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      stateContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      stateMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'state',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'storeContact',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeContact',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeContact',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeContact',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeContact',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'storeContact',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'storeContact',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeContactContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'storeContact',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeContactMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'storeContact',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'storeEmail',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeEmail',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'storeEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'storeEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeEmailContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'storeEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeEmailMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'storeEmail',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'storeName',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'storeName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'storeNumber',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'storeNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'storeNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNumberContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'storeNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNumberMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'storeNumber',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'updateTime',
      value: null,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'version',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension RetailLocationEntityQueryLinks on QueryBuilder<RetailLocationEntity,
    RetailLocationEntity, QFilterCondition> {}

extension RetailLocationEntityQueryWhereSortBy
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QSortBy> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByAddress1() {
    return addSortByInternal('address1', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByAddress1Desc() {
    return addSortByInternal('address1', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByAddress2() {
    return addSortByInternal('address2', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByAddress2Desc() {
    return addSortByInternal('address2', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCity() {
    return addSortByInternal('city', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCityDesc() {
    return addSortByInternal('city', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCountry() {
    return addSortByInternal('country', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCountryDesc() {
    return addSortByInternal('country', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCreateTime() {
    return addSortByInternal('createTime', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return addSortByInternal('createTime', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCurrencyId() {
    return addSortByInternal('currencyId', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCurrencyIdDesc() {
    return addSortByInternal('currencyId', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByGst() {
    return addSortByInternal('gst', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByGstDesc() {
    return addSortByInternal('gst', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLastChangedAt() {
    return addSortByInternal('lastChangedAt', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLastChangedAtDesc() {
    return addSortByInternal('lastChangedAt', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLocale() {
    return addSortByInternal('locale', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLocaleDesc() {
    return addSortByInternal('locale', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPan() {
    return addSortByInternal('pan', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPanDesc() {
    return addSortByInternal('pan', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPostalCode() {
    return addSortByInternal('postalCode', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPostalCodeDesc() {
    return addSortByInternal('postalCode', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByRtlLocId() {
    return addSortByInternal('rtlLocId', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByRtlLocIdDesc() {
    return addSortByInternal('rtlLocId', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByState() {
    return addSortByInternal('state', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStateDesc() {
    return addSortByInternal('state', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreContact() {
    return addSortByInternal('storeContact', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreContactDesc() {
    return addSortByInternal('storeContact', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreEmail() {
    return addSortByInternal('storeEmail', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreEmailDesc() {
    return addSortByInternal('storeEmail', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreName() {
    return addSortByInternal('storeName', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNameDesc() {
    return addSortByInternal('storeName', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNumber() {
    return addSortByInternal('storeNumber', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNumberDesc() {
    return addSortByInternal('storeNumber', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByVersion() {
    return addSortByInternal('version', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByVersionDesc() {
    return addSortByInternal('version', Sort.desc);
  }
}

extension RetailLocationEntityQueryWhereSortThenBy
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QSortThenBy> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByAddress1() {
    return addSortByInternal('address1', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByAddress1Desc() {
    return addSortByInternal('address1', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByAddress2() {
    return addSortByInternal('address2', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByAddress2Desc() {
    return addSortByInternal('address2', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCity() {
    return addSortByInternal('city', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCityDesc() {
    return addSortByInternal('city', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCountry() {
    return addSortByInternal('country', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCountryDesc() {
    return addSortByInternal('country', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCreateTime() {
    return addSortByInternal('createTime', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return addSortByInternal('createTime', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCurrencyId() {
    return addSortByInternal('currencyId', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCurrencyIdDesc() {
    return addSortByInternal('currencyId', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByGst() {
    return addSortByInternal('gst', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByGstDesc() {
    return addSortByInternal('gst', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLastChangedAt() {
    return addSortByInternal('lastChangedAt', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLastChangedAtDesc() {
    return addSortByInternal('lastChangedAt', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLocale() {
    return addSortByInternal('locale', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLocaleDesc() {
    return addSortByInternal('locale', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPan() {
    return addSortByInternal('pan', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPanDesc() {
    return addSortByInternal('pan', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPostalCode() {
    return addSortByInternal('postalCode', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPostalCodeDesc() {
    return addSortByInternal('postalCode', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByRtlLocId() {
    return addSortByInternal('rtlLocId', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByRtlLocIdDesc() {
    return addSortByInternal('rtlLocId', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByState() {
    return addSortByInternal('state', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStateDesc() {
    return addSortByInternal('state', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreContact() {
    return addSortByInternal('storeContact', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreContactDesc() {
    return addSortByInternal('storeContact', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreEmail() {
    return addSortByInternal('storeEmail', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreEmailDesc() {
    return addSortByInternal('storeEmail', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreName() {
    return addSortByInternal('storeName', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNameDesc() {
    return addSortByInternal('storeName', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNumber() {
    return addSortByInternal('storeNumber', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNumberDesc() {
    return addSortByInternal('storeNumber', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByVersion() {
    return addSortByInternal('version', Sort.asc);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByVersionDesc() {
    return addSortByInternal('version', Sort.desc);
  }
}

extension RetailLocationEntityQueryWhereDistinct
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByAddress1({bool caseSensitive = true}) {
    return addDistinctByInternal('address1', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByAddress2({bool caseSensitive = true}) {
    return addDistinctByInternal('address2', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCity({bool caseSensitive = true}) {
    return addDistinctByInternal('city', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCountry({bool caseSensitive = true}) {
    return addDistinctByInternal('country', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCreateTime() {
    return addDistinctByInternal('createTime');
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCurrencyId({bool caseSensitive = true}) {
    return addDistinctByInternal('currencyId', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByGst({bool caseSensitive = true}) {
    return addDistinctByInternal('gst', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByLastChangedAt() {
    return addDistinctByInternal('lastChangedAt');
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByLocale({bool caseSensitive = true}) {
    return addDistinctByInternal('locale', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByPan({bool caseSensitive = true}) {
    return addDistinctByInternal('pan', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByPostalCode({bool caseSensitive = true}) {
    return addDistinctByInternal('postalCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByRtlLocId() {
    return addDistinctByInternal('rtlLocId');
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByState({bool caseSensitive = true}) {
    return addDistinctByInternal('state', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreContact({bool caseSensitive = true}) {
    return addDistinctByInternal('storeContact', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreEmail({bool caseSensitive = true}) {
    return addDistinctByInternal('storeEmail', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreName({bool caseSensitive = true}) {
    return addDistinctByInternal('storeName', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreNumber({bool caseSensitive = true}) {
    return addDistinctByInternal('storeNumber', caseSensitive: caseSensitive);
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByUpdateTime() {
    return addDistinctByInternal('updateTime');
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByVersion() {
    return addDistinctByInternal('version');
  }
}

extension RetailLocationEntityQueryProperty on QueryBuilder<
    RetailLocationEntity, RetailLocationEntity, QQueryProperty> {
  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      address1Property() {
    return addPropertyNameInternal('address1');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      address2Property() {
    return addPropertyNameInternal('address2');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations> cityProperty() {
    return addPropertyNameInternal('city');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      countryProperty() {
    return addPropertyNameInternal('country');
  }

  QueryBuilder<RetailLocationEntity, DateTime, QQueryOperations>
      createTimeProperty() {
    return addPropertyNameInternal('createTime');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      currencyIdProperty() {
    return addPropertyNameInternal('currencyId');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations> gstProperty() {
    return addPropertyNameInternal('gst');
  }

  QueryBuilder<RetailLocationEntity, DateTime?, QQueryOperations>
      lastChangedAtProperty() {
    return addPropertyNameInternal('lastChangedAt');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      localeProperty() {
    return addPropertyNameInternal('locale');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations> panProperty() {
    return addPropertyNameInternal('pan');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      postalCodeProperty() {
    return addPropertyNameInternal('postalCode');
  }

  QueryBuilder<RetailLocationEntity, int, QQueryOperations> rtlLocIdProperty() {
    return addPropertyNameInternal('rtlLocId');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      stateProperty() {
    return addPropertyNameInternal('state');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeContactProperty() {
    return addPropertyNameInternal('storeContact');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeEmailProperty() {
    return addPropertyNameInternal('storeEmail');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeNameProperty() {
    return addPropertyNameInternal('storeName');
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeNumberProperty() {
    return addPropertyNameInternal('storeNumber');
  }

  QueryBuilder<RetailLocationEntity, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return addPropertyNameInternal('updateTime');
  }

  QueryBuilder<RetailLocationEntity, int, QQueryOperations> versionProperty() {
    return addPropertyNameInternal('version');
  }
}
