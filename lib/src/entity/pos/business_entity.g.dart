// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetRetailLocationEntityCollection on Isar {
  IsarCollection<RetailLocationEntity> get retailLocationEntitys =>
      this.collection();
}

const RetailLocationEntitySchema = CollectionSchema(
  name: r'RetailLocationEntity',
  id: 1894392434087363926,
  properties: {
    r'address1': PropertySchema(
      id: 0,
      name: r'address1',
      type: IsarType.string,
    ),
    r'address2': PropertySchema(
      id: 1,
      name: r'address2',
      type: IsarType.string,
    ),
    r'city': PropertySchema(
      id: 2,
      name: r'city',
      type: IsarType.string,
    ),
    r'country': PropertySchema(
      id: 3,
      name: r'country',
      type: IsarType.string,
    ),
    r'createTime': PropertySchema(
      id: 4,
      name: r'createTime',
      type: IsarType.dateTime,
    ),
    r'currencyId': PropertySchema(
      id: 5,
      name: r'currencyId',
      type: IsarType.string,
    ),
    r'gst': PropertySchema(
      id: 6,
      name: r'gst',
      type: IsarType.string,
    ),
    r'lastChangedAt': PropertySchema(
      id: 7,
      name: r'lastChangedAt',
      type: IsarType.dateTime,
    ),
    r'locale': PropertySchema(
      id: 8,
      name: r'locale',
      type: IsarType.string,
    ),
    r'pan': PropertySchema(
      id: 9,
      name: r'pan',
      type: IsarType.string,
    ),
    r'postalCode': PropertySchema(
      id: 10,
      name: r'postalCode',
      type: IsarType.string,
    ),
    r'state': PropertySchema(
      id: 11,
      name: r'state',
      type: IsarType.string,
    ),
    r'storeContact': PropertySchema(
      id: 12,
      name: r'storeContact',
      type: IsarType.string,
    ),
    r'storeEmail': PropertySchema(
      id: 13,
      name: r'storeEmail',
      type: IsarType.string,
    ),
    r'storeName': PropertySchema(
      id: 14,
      name: r'storeName',
      type: IsarType.string,
    ),
    r'storeNumber': PropertySchema(
      id: 15,
      name: r'storeNumber',
      type: IsarType.string,
    ),
    r'updateTime': PropertySchema(
      id: 16,
      name: r'updateTime',
      type: IsarType.dateTime,
    ),
    r'version': PropertySchema(
      id: 17,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _retailLocationEntityEstimateSize,
  serializeNative: _retailLocationEntitySerializeNative,
  deserializeNative: _retailLocationEntityDeserializeNative,
  deserializePropNative: _retailLocationEntityDeserializePropNative,
  serializeWeb: _retailLocationEntitySerializeWeb,
  deserializeWeb: _retailLocationEntityDeserializeWeb,
  deserializePropWeb: _retailLocationEntityDeserializePropWeb,
  idName: r'rtlLocId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _retailLocationEntityGetId,
  getLinks: _retailLocationEntityGetLinks,
  attach: _retailLocationEntityAttach,
  version: '3.0.0-dev.14',
);

int _retailLocationEntityEstimateSize(
  RetailLocationEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address1;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.address2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.city;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.currencyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.gst;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.locale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pan;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.postalCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.state;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeContact;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

int _retailLocationEntitySerializeNative(
  RetailLocationEntity object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address1);
  writer.writeString(offsets[1], object.address2);
  writer.writeString(offsets[2], object.city);
  writer.writeString(offsets[3], object.country);
  writer.writeDateTime(offsets[4], object.createTime);
  writer.writeString(offsets[5], object.currencyId);
  writer.writeString(offsets[6], object.gst);
  writer.writeDateTime(offsets[7], object.lastChangedAt);
  writer.writeString(offsets[8], object.locale);
  writer.writeString(offsets[9], object.pan);
  writer.writeString(offsets[10], object.postalCode);
  writer.writeString(offsets[11], object.state);
  writer.writeString(offsets[12], object.storeContact);
  writer.writeString(offsets[13], object.storeEmail);
  writer.writeString(offsets[14], object.storeName);
  writer.writeString(offsets[15], object.storeNumber);
  writer.writeDateTime(offsets[16], object.updateTime);
  writer.writeLong(offsets[17], object.version);
  return writer.usedBytes;
}

RetailLocationEntity _retailLocationEntityDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
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
    version: reader.readLongOrNull(offsets[17]) ?? 1,
  );
  return object;
}

P _retailLocationEntityDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
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
      return (reader.readLongOrNull(offset) ?? 1) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _retailLocationEntitySerializeWeb(
    IsarCollection<RetailLocationEntity> collection,
    RetailLocationEntity object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

RetailLocationEntity _retailLocationEntityDeserializeWeb(
    IsarCollection<RetailLocationEntity> collection, Object jsObj) {
  /*final object = RetailLocationEntity(address1: IsarNative.jsObjectGet(jsObj, r'address1') ,address2: IsarNative.jsObjectGet(jsObj, r'address2') ,city: IsarNative.jsObjectGet(jsObj, r'city') ,country: IsarNative.jsObjectGet(jsObj, r'country') ,createTime: IsarNative.jsObjectGet(jsObj, r'createTime') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'createTime') as int, isUtc: true).toLocal() : DateTime.fromMillisecondsSinceEpoch(0),currencyId: IsarNative.jsObjectGet(jsObj, r'currencyId') ,gst: IsarNative.jsObjectGet(jsObj, r'gst') ,lastChangedAt: IsarNative.jsObjectGet(jsObj, r'lastChangedAt') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'lastChangedAt') as int, isUtc: true).toLocal() : null,locale: IsarNative.jsObjectGet(jsObj, r'locale') ,pan: IsarNative.jsObjectGet(jsObj, r'pan') ,postalCode: IsarNative.jsObjectGet(jsObj, r'postalCode') ,rtlLocId: IsarNative.jsObjectGet(jsObj, r'rtlLocId') ?? (double.negativeInfinity as int),state: IsarNative.jsObjectGet(jsObj, r'state') ,storeContact: IsarNative.jsObjectGet(jsObj, r'storeContact') ,storeEmail: IsarNative.jsObjectGet(jsObj, r'storeEmail') ,storeName: IsarNative.jsObjectGet(jsObj, r'storeName') ,storeNumber: IsarNative.jsObjectGet(jsObj, r'storeNumber') ,updateTime: IsarNative.jsObjectGet(jsObj, r'updateTime') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'updateTime') as int, isUtc: true).toLocal() : null,version: IsarNative.jsObjectGet(jsObj, r'version') ?? (double.negativeInfinity as int),);*/
  //return object;
  throw UnimplementedError();
}

P _retailLocationEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _retailLocationEntityGetId(RetailLocationEntity object) {
  return object.rtlLocId;
}

List<IsarLinkBase<dynamic>> _retailLocationEntityGetLinks(
    RetailLocationEntity object) {
  return [];
}

void _retailLocationEntityAttach(
    IsarCollection<dynamic> col, Id id, RetailLocationEntity object) {}

extension RetailLocationEntityQueryWhereSort
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QWhere> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhere>
      anyRtlLocId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RetailLocationEntityQueryWhere
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QWhereClause> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdEqualTo(int rtlLocId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: rtlLocId,
        upper: rtlLocId,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdNotEqualTo(int rtlLocId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: rtlLocId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: rtlLocId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: rtlLocId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: rtlLocId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdGreaterThan(int rtlLocId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: rtlLocId, includeLower: include),
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdLessThan(int rtlLocId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: rtlLocId, includeUpper: include),
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdBetween(
    int lowerRtlLocId,
    int upperRtlLocId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerRtlLocId,
        includeLower: includeLower,
        upper: upperRtlLocId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RetailLocationEntityQueryFilter on QueryBuilder<RetailLocationEntity,
    RetailLocationEntity, QFilterCondition> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address1',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address1',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      address1Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      address1Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address1',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address1',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address2',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address2',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      address2Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      address2Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address2',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address2',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      cityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      cityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currencyId',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currencyId',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currencyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      currencyIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      currencyIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currencyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencyId',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currencyId',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gst',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gst',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      gstContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      gstMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gst',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gst',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gst',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastChangedAt',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastChangedAt',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastChangedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastChangedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastChangedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastChangedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locale',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locale',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      localeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      localeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locale',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pan',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pan',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      panContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      panMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pan',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pan',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pan',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'postalCode',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'postalCode',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postalCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      postalCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      postalCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'postalCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postalCode',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> postalCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'postalCode',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rtlLocId',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rtlLocId',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rtlLocId',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rtlLocId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'state',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'state',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'state',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      stateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      stateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'state',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> stateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeContact',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeContact',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeContact',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeContactContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeContactMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeContact',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeContact',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeContact',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeEmail',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeEmail',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeName',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeName',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeName',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeName',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeNumber',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeNumber',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RetailLocationEntityQueryObject on QueryBuilder<RetailLocationEntity,
    RetailLocationEntity, QFilterCondition> {}

extension RetailLocationEntityQueryLinks on QueryBuilder<RetailLocationEntity,
    RetailLocationEntity, QFilterCondition> {}

extension RetailLocationEntityQuerySortBy
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QSortBy> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByAddress1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address1', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByAddress1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address1', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByAddress2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address2', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByAddress2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address2', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCurrencyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyId', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCurrencyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyId', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLastChangedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pan', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pan', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPostalCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPostalCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreContact() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeContact', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreContactDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeContact', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeEmail', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeEmail', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeName', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeName', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeNumber', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeNumber', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension RetailLocationEntityQuerySortThenBy
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QSortThenBy> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByAddress1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address1', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByAddress1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address1', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByAddress2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address2', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByAddress2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address2', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCurrencyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyId', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCurrencyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyId', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLastChangedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pan', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pan', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPostalCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPostalCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByRtlLocId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtlLocId', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByRtlLocIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtlLocId', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreContact() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeContact', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreContactDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeContact', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeEmail', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeEmail', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeName', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeName', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeNumber', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeNumber', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension RetailLocationEntityQueryWhereDistinct
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByAddress1({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByAddress2({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createTime');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCurrencyId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currencyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByGst({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gst', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastChangedAt');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByLocale({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locale', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByPan({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pan', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByPostalCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postalCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByState({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'state', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreContact({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeContact', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateTime');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension RetailLocationEntityQueryProperty on QueryBuilder<
    RetailLocationEntity, RetailLocationEntity, QQueryProperty> {
  QueryBuilder<RetailLocationEntity, int, QQueryOperations> rtlLocIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rtlLocId');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      address1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address1');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      address2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address2');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<RetailLocationEntity, DateTime, QQueryOperations>
      createTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createTime');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      currencyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currencyId');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations> gstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gst');
    });
  }

  QueryBuilder<RetailLocationEntity, DateTime?, QQueryOperations>
      lastChangedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastChangedAt');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      localeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locale');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations> panProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pan');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      postalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postalCode');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      stateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'state');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeContactProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeContact');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeEmail');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeName');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeNumber');
    });
  }

  QueryBuilder<RetailLocationEntity, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateTime');
    });
  }

  QueryBuilder<RetailLocationEntity, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
