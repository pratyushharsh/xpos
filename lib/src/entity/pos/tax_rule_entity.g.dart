// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_rule_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetTaxRuleEntityCollection on Isar {
  IsarCollection<TaxRuleEntity> get taxRuleEntitys => this.collection();
}

const TaxRuleEntitySchema = CollectionSchema(
  name: r'TaxRuleEntity',
  id: 2130788321021746296,
  properties: {
    r'amount': PropertySchema(
      id: 0,
      name: r'amount',
      type: IsarType.double,
    ),
    r'authorityId': PropertySchema(
      id: 1,
      name: r'authorityId',
      type: IsarType.string,
    ),
    r'authorityName': PropertySchema(
      id: 2,
      name: r'authorityName',
      type: IsarType.string,
    ),
    r'authorityType': PropertySchema(
      id: 3,
      name: r'authorityType',
      type: IsarType.string,
    ),
    r'effectiveDateTimeStamp': PropertySchema(
      id: 4,
      name: r'effectiveDateTimeStamp',
      type: IsarType.dateTime,
    ),
    r'expirationDateTimeStamp': PropertySchema(
      id: 5,
      name: r'expirationDateTimeStamp',
      type: IsarType.dateTime,
    ),
    r'groupId': PropertySchema(
      id: 6,
      name: r'groupId',
      type: IsarType.string,
    ),
    r'locationId': PropertySchema(
      id: 7,
      name: r'locationId',
      type: IsarType.string,
    ),
    r'maximumTaxableAmount': PropertySchema(
      id: 8,
      name: r'maximumTaxableAmount',
      type: IsarType.double,
    ),
    r'minimumTaxableAmount': PropertySchema(
      id: 9,
      name: r'minimumTaxableAmount',
      type: IsarType.double,
    ),
    r'percent': PropertySchema(
      id: 10,
      name: r'percent',
      type: IsarType.double,
    ),
    r'ruleName': PropertySchema(
      id: 11,
      name: r'ruleName',
      type: IsarType.string,
    ),
    r'ruleSequence': PropertySchema(
      id: 12,
      name: r'ruleSequence',
      type: IsarType.long,
    )
  },
  estimateSize: _taxRuleEntityEstimateSize,
  serializeNative: _taxRuleEntitySerializeNative,
  deserializeNative: _taxRuleEntityDeserializeNative,
  deserializePropNative: _taxRuleEntityDeserializePropNative,
  serializeWeb: _taxRuleEntitySerializeWeb,
  deserializeWeb: _taxRuleEntityDeserializeWeb,
  deserializePropWeb: _taxRuleEntityDeserializePropWeb,
  idName: r'id',
  indexes: {
    r'groupId': IndexSchema(
      id: -8523216633229774932,
      name: r'groupId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'groupId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'groupId_ruleName': IndexSchema(
      id: 5983450667944798024,
      name: r'groupId_ruleName',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'groupId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'ruleName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'taxGroup': LinkSchema(
      id: -5465905376472847589,
      name: r'taxGroup',
      target: r'TaxGroupEntity',
      isSingle: true,
      linkName: r'taxRules',
    )
  },
  embeddedSchemas: {},
  getId: _taxRuleEntityGetId,
  getLinks: _taxRuleEntityGetLinks,
  attach: _taxRuleEntityAttach,
  version: '3.0.0-dev.14',
);

int _taxRuleEntityEstimateSize(
  TaxRuleEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.authorityId.length * 3;
  bytesCount += 3 + object.authorityName.length * 3;
  bytesCount += 3 + object.authorityType.length * 3;
  bytesCount += 3 + object.groupId.length * 3;
  bytesCount += 3 + object.locationId.length * 3;
  bytesCount += 3 + object.ruleName.length * 3;
  return bytesCount;
}

int _taxRuleEntitySerializeNative(
  TaxRuleEntity object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amount);
  writer.writeString(offsets[1], object.authorityId);
  writer.writeString(offsets[2], object.authorityName);
  writer.writeString(offsets[3], object.authorityType);
  writer.writeDateTime(offsets[4], object.effectiveDateTimeStamp);
  writer.writeDateTime(offsets[5], object.expirationDateTimeStamp);
  writer.writeString(offsets[6], object.groupId);
  writer.writeString(offsets[7], object.locationId);
  writer.writeDouble(offsets[8], object.maximumTaxableAmount);
  writer.writeDouble(offsets[9], object.minimumTaxableAmount);
  writer.writeDouble(offsets[10], object.percent);
  writer.writeString(offsets[11], object.ruleName);
  writer.writeLong(offsets[12], object.ruleSequence);
  return writer.usedBytes;
}

TaxRuleEntity _taxRuleEntityDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaxRuleEntity(
    amount: reader.readDoubleOrNull(offsets[0]),
    authorityId: reader.readString(offsets[1]),
    authorityName: reader.readString(offsets[2]),
    authorityType: reader.readString(offsets[3]),
    effectiveDateTimeStamp: reader.readDateTimeOrNull(offsets[4]),
    expirationDateTimeStamp: reader.readDateTimeOrNull(offsets[5]),
    groupId: reader.readString(offsets[6]),
    id: id,
    locationId: reader.readString(offsets[7]),
    maximumTaxableAmount: reader.readDoubleOrNull(offsets[8]),
    minimumTaxableAmount: reader.readDoubleOrNull(offsets[9]),
    percent: reader.readDoubleOrNull(offsets[10]),
    ruleName: reader.readString(offsets[11]),
    ruleSequence: reader.readLong(offsets[12]),
  );
  return object;
}

P _taxRuleEntityDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _taxRuleEntitySerializeWeb(
    IsarCollection<TaxRuleEntity> collection, TaxRuleEntity object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

TaxRuleEntity _taxRuleEntityDeserializeWeb(
    IsarCollection<TaxRuleEntity> collection, Object jsObj) {
  /*final object = TaxRuleEntity(amount: IsarNative.jsObjectGet(jsObj, r'amount') ,authorityId: IsarNative.jsObjectGet(jsObj, r'authorityId') ?? '',authorityName: IsarNative.jsObjectGet(jsObj, r'authorityName') ?? '',authorityType: IsarNative.jsObjectGet(jsObj, r'authorityType') ?? '',effectiveDateTimeStamp: IsarNative.jsObjectGet(jsObj, r'effectiveDateTimeStamp') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'effectiveDateTimeStamp') as int, isUtc: true).toLocal() : null,expirationDateTimeStamp: IsarNative.jsObjectGet(jsObj, r'expirationDateTimeStamp') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'expirationDateTimeStamp') as int, isUtc: true).toLocal() : null,groupId: IsarNative.jsObjectGet(jsObj, r'groupId') ?? '',id: IsarNative.jsObjectGet(jsObj, r'id') ,locationId: IsarNative.jsObjectGet(jsObj, r'locationId') ?? '',maximumTaxableAmount: IsarNative.jsObjectGet(jsObj, r'maximumTaxableAmount') ,minimumTaxableAmount: IsarNative.jsObjectGet(jsObj, r'minimumTaxableAmount') ,percent: IsarNative.jsObjectGet(jsObj, r'percent') ,ruleName: IsarNative.jsObjectGet(jsObj, r'ruleName') ?? '',ruleSequence: IsarNative.jsObjectGet(jsObj, r'ruleSequence') ?? (double.negativeInfinity as int),);*/
  //return object;
  throw UnimplementedError();
}

P _taxRuleEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _taxRuleEntityGetId(TaxRuleEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _taxRuleEntityGetLinks(TaxRuleEntity object) {
  return [object.taxGroup];
}

void _taxRuleEntityAttach(
    IsarCollection<dynamic> col, Id id, TaxRuleEntity object) {
  object.taxGroup
      .attach(col, col.isar.collection<TaxGroupEntity>(), r'taxGroup', id);
}

extension TaxRuleEntityByIndex on IsarCollection<TaxRuleEntity> {
  Future<TaxRuleEntity?> getByGroupIdRuleName(String groupId, String ruleName) {
    return getByIndex(r'groupId_ruleName', [groupId, ruleName]);
  }

  TaxRuleEntity? getByGroupIdRuleNameSync(String groupId, String ruleName) {
    return getByIndexSync(r'groupId_ruleName', [groupId, ruleName]);
  }

  Future<bool> deleteByGroupIdRuleName(String groupId, String ruleName) {
    return deleteByIndex(r'groupId_ruleName', [groupId, ruleName]);
  }

  bool deleteByGroupIdRuleNameSync(String groupId, String ruleName) {
    return deleteByIndexSync(r'groupId_ruleName', [groupId, ruleName]);
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

    return getAllByIndex(r'groupId_ruleName', values);
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

    return getAllByIndexSync(r'groupId_ruleName', values);
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

    return deleteAllByIndex(r'groupId_ruleName', values);
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

    return deleteAllByIndexSync(r'groupId_ruleName', values);
  }

  Future<int> putByGroupIdRuleName(TaxRuleEntity object) {
    return putByIndex(r'groupId_ruleName', object);
  }

  int putByGroupIdRuleNameSync(TaxRuleEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'groupId_ruleName', object, saveLinks: saveLinks);
  }

  Future<List<int>> putAllByGroupIdRuleName(List<TaxRuleEntity> objects) {
    return putAllByIndex(r'groupId_ruleName', objects);
  }

  List<int> putAllByGroupIdRuleNameSync(List<TaxRuleEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'groupId_ruleName', objects,
        saveLinks: saveLinks);
  }
}

extension TaxRuleEntityQueryWhereSort
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QWhere> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaxRuleEntityQueryWhere
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QWhereClause> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idNotEqualTo(
      int id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause> groupIdEqualTo(
      String groupId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'groupId',
        value: [groupId],
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause>
      groupIdNotEqualTo(String groupId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId',
              lower: [],
              upper: [groupId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId',
              lower: [groupId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId',
              lower: [groupId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId',
              lower: [],
              upper: [groupId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause>
      groupIdEqualToAnyRuleName(String groupId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'groupId_ruleName',
        value: [groupId],
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause>
      groupIdNotEqualToAnyRuleName(String groupId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId_ruleName',
              lower: [],
              upper: [groupId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId_ruleName',
              lower: [groupId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId_ruleName',
              lower: [groupId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId_ruleName',
              lower: [],
              upper: [groupId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause>
      groupIdRuleNameEqualTo(String groupId, String ruleName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'groupId_ruleName',
        value: [groupId, ruleName],
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterWhereClause>
      groupIdEqualToRuleNameNotEqualTo(String groupId, String ruleName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId_ruleName',
              lower: [groupId],
              upper: [groupId, ruleName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId_ruleName',
              lower: [groupId, ruleName],
              includeLower: false,
              upper: [groupId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId_ruleName',
              lower: [groupId, ruleName],
              includeLower: false,
              upper: [groupId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId_ruleName',
              lower: [groupId],
              upper: [groupId, ruleName],
              includeUpper: false,
            ));
      }
    });
  }
}

extension TaxRuleEntityQueryFilter
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QFilterCondition> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      amountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'amount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authorityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'authorityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'authorityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'authorityId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'authorityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'authorityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'authorityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'authorityId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authorityId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'authorityId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authorityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'authorityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'authorityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'authorityName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'authorityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'authorityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'authorityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'authorityName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authorityName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'authorityName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authorityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'authorityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'authorityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'authorityType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'authorityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'authorityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'authorityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'authorityType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authorityType',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      authorityTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'authorityType',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'effectiveDateTimeStamp',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'effectiveDateTimeStamp',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'effectiveDateTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'effectiveDateTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'effectiveDateTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      effectiveDateTimeStampBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'effectiveDateTimeStamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expirationDateTimeStamp',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expirationDateTimeStamp',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expirationDateTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expirationDateTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expirationDateTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      expirationDateTimeStampBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expirationDateTimeStamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      groupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      locationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locationId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maximumTaxableAmount',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maximumTaxableAmount',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maximumTaxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maximumTaxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maximumTaxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      maximumTaxableAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maximumTaxableAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minimumTaxableAmount',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minimumTaxableAmount',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minimumTaxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minimumTaxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minimumTaxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      minimumTaxableAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minimumTaxableAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'percent',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'percent',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'percent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'percent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'percent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      percentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'percent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ruleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ruleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ruleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ruleName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ruleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ruleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ruleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ruleName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ruleName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ruleName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleSequenceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ruleSequence',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleSequenceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ruleSequence',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleSequenceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ruleSequence',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      ruleSequenceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ruleSequence',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaxRuleEntityQueryObject
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QFilterCondition> {}

extension TaxRuleEntityQueryLinks
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QFilterCondition> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition> taxGroup(
      FilterQuery<TaxGroupEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'taxGroup');
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterFilterCondition>
      taxGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'taxGroup', 0, true, 0, true);
    });
  }
}

extension TaxRuleEntityQuerySortBy
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QSortBy> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByAuthorityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityId', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByAuthorityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityId', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByAuthorityName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityName', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByAuthorityNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityName', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByAuthorityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityType', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByAuthorityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityType', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByEffectiveDateTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveDateTimeStamp', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByEffectiveDateTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveDateTimeStamp', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByExpirationDateTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDateTimeStamp', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByExpirationDateTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDateTimeStamp', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByLocationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationId', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByLocationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationId', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByMaximumTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximumTaxableAmount', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByMaximumTaxableAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximumTaxableAmount', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByMinimumTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimumTaxableAmount', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByMinimumTaxableAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimumTaxableAmount', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'percent', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'percent', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> sortByRuleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ruleName', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByRuleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ruleName', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByRuleSequence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ruleSequence', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      sortByRuleSequenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ruleSequence', Sort.desc);
    });
  }
}

extension TaxRuleEntityQuerySortThenBy
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QSortThenBy> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByAuthorityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityId', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByAuthorityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityId', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByAuthorityName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityName', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByAuthorityNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityName', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByAuthorityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityType', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByAuthorityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorityType', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByEffectiveDateTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveDateTimeStamp', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByEffectiveDateTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveDateTimeStamp', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByExpirationDateTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDateTimeStamp', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByExpirationDateTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDateTimeStamp', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByLocationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationId', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByLocationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationId', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByMaximumTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximumTaxableAmount', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByMaximumTaxableAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximumTaxableAmount', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByMinimumTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimumTaxableAmount', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByMinimumTaxableAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimumTaxableAmount', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'percent', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'percent', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy> thenByRuleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ruleName', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByRuleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ruleName', Sort.desc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByRuleSequence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ruleSequence', Sort.asc);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QAfterSortBy>
      thenByRuleSequenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ruleSequence', Sort.desc);
    });
  }
}

extension TaxRuleEntityQueryWhereDistinct
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> {
  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amount');
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByAuthorityId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'authorityId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByAuthorityName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'authorityName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByAuthorityType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'authorityType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByEffectiveDateTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'effectiveDateTimeStamp');
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByExpirationDateTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expirationDateTimeStamp');
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByGroupId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByLocationId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByMaximumTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maximumTaxableAmount');
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByMinimumTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minimumTaxableAmount');
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'percent');
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct> distinctByRuleName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ruleName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaxRuleEntity, TaxRuleEntity, QDistinct>
      distinctByRuleSequence() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ruleSequence');
    });
  }
}

extension TaxRuleEntityQueryProperty
    on QueryBuilder<TaxRuleEntity, TaxRuleEntity, QQueryProperty> {
  QueryBuilder<TaxRuleEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaxRuleEntity, double?, QQueryOperations> amountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amount');
    });
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations> authorityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'authorityId');
    });
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations>
      authorityNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'authorityName');
    });
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations>
      authorityTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'authorityType');
    });
  }

  QueryBuilder<TaxRuleEntity, DateTime?, QQueryOperations>
      effectiveDateTimeStampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'effectiveDateTimeStamp');
    });
  }

  QueryBuilder<TaxRuleEntity, DateTime?, QQueryOperations>
      expirationDateTimeStampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expirationDateTimeStamp');
    });
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations> groupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupId');
    });
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations> locationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationId');
    });
  }

  QueryBuilder<TaxRuleEntity, double?, QQueryOperations>
      maximumTaxableAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maximumTaxableAmount');
    });
  }

  QueryBuilder<TaxRuleEntity, double?, QQueryOperations>
      minimumTaxableAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minimumTaxableAmount');
    });
  }

  QueryBuilder<TaxRuleEntity, double?, QQueryOperations> percentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'percent');
    });
  }

  QueryBuilder<TaxRuleEntity, String, QQueryOperations> ruleNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ruleName');
    });
  }

  QueryBuilder<TaxRuleEntity, int, QQueryOperations> ruleSequenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ruleSequence');
    });
  }
}
