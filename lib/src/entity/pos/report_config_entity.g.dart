// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_config_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetReportConfigEntityCollection on Isar {
  IsarCollection<ReportConfigEntity> get reportConfigEntitys =>
      this.collection();
}

const ReportConfigEntitySchema = CollectionSchema(
  name: r'ReportConfigEntity',
  id: -5710774184769298362,
  properties: {
    r'boolValue': PropertySchema(
      id: 0,
      name: r'boolValue',
      type: IsarType.bool,
    ),
    r'columnConfig': PropertySchema(
      id: 1,
      name: r'columnConfig',
      type: IsarType.objectList,
      target: r'ReportColumnConfigEntity',
    ),
    r'dateValue': PropertySchema(
      id: 2,
      name: r'dateValue',
      type: IsarType.dateTime,
    ),
    r'doubleValue': PropertySchema(
      id: 3,
      name: r'doubleValue',
      type: IsarType.double,
    ),
    r'intValue': PropertySchema(
      id: 4,
      name: r'intValue',
      type: IsarType.long,
    ),
    r'stringValue': PropertySchema(
      id: 5,
      name: r'stringValue',
      type: IsarType.string,
    ),
    r'subtype': PropertySchema(
      id: 6,
      name: r'subtype',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 7,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _reportConfigEntityEstimateSize,
  serialize: _reportConfigEntitySerialize,
  deserialize: _reportConfigEntityDeserialize,
  deserializeProp: _reportConfigEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'type_subtype': IndexSchema(
      id: -1505971138412328854,
      name: r'type_subtype',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'type',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'subtype',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'ReportColumnConfigEntity': ReportColumnConfigEntitySchema
  },
  getId: _reportConfigEntityGetId,
  getLinks: _reportConfigEntityGetLinks,
  attach: _reportConfigEntityAttach,
  version: '3.0.2',
);

int _reportConfigEntityEstimateSize(
  ReportConfigEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.columnConfig.length * 3;
  {
    final offsets = allOffsets[ReportColumnConfigEntity]!;
    for (var i = 0; i < object.columnConfig.length; i++) {
      final value = object.columnConfig[i];
      bytesCount += ReportColumnConfigEntitySchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  {
    final value = object.stringValue;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.subtype.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _reportConfigEntitySerialize(
  ReportConfigEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.boolValue);
  writer.writeObjectList<ReportColumnConfigEntity>(
    offsets[1],
    allOffsets,
    ReportColumnConfigEntitySchema.serialize,
    object.columnConfig,
  );
  writer.writeDateTime(offsets[2], object.dateValue);
  writer.writeDouble(offsets[3], object.doubleValue);
  writer.writeLong(offsets[4], object.intValue);
  writer.writeString(offsets[5], object.stringValue);
  writer.writeString(offsets[6], object.subtype);
  writer.writeString(offsets[7], object.type);
}

ReportConfigEntity _reportConfigEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReportConfigEntity(
    boolValue: reader.readBoolOrNull(offsets[0]),
    columnConfig: reader.readObjectList<ReportColumnConfigEntity>(
          offsets[1],
          ReportColumnConfigEntitySchema.deserialize,
          allOffsets,
          ReportColumnConfigEntity(),
        ) ??
        const [],
    dateValue: reader.readDateTimeOrNull(offsets[2]),
    doubleValue: reader.readDoubleOrNull(offsets[3]),
    intValue: reader.readLongOrNull(offsets[4]),
    stringValue: reader.readStringOrNull(offsets[5]),
    subtype: reader.readString(offsets[6]),
    type: reader.readString(offsets[7]),
  );
  object.id = id;
  return object;
}

P _reportConfigEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<ReportColumnConfigEntity>(
            offset,
            ReportColumnConfigEntitySchema.deserialize,
            allOffsets,
            ReportColumnConfigEntity(),
          ) ??
          const []) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _reportConfigEntityGetId(ReportConfigEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _reportConfigEntityGetLinks(
    ReportConfigEntity object) {
  return [];
}

void _reportConfigEntityAttach(
    IsarCollection<dynamic> col, Id id, ReportConfigEntity object) {
  object.id = id;
}

extension ReportConfigEntityByIndex on IsarCollection<ReportConfigEntity> {
  Future<ReportConfigEntity?> getByTypeSubtype(String type, String subtype) {
    return getByIndex(r'type_subtype', [type, subtype]);
  }

  ReportConfigEntity? getByTypeSubtypeSync(String type, String subtype) {
    return getByIndexSync(r'type_subtype', [type, subtype]);
  }

  Future<bool> deleteByTypeSubtype(String type, String subtype) {
    return deleteByIndex(r'type_subtype', [type, subtype]);
  }

  bool deleteByTypeSubtypeSync(String type, String subtype) {
    return deleteByIndexSync(r'type_subtype', [type, subtype]);
  }

  Future<List<ReportConfigEntity?>> getAllByTypeSubtype(
      List<String> typeValues, List<String> subtypeValues) {
    final len = typeValues.length;
    assert(subtypeValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([typeValues[i], subtypeValues[i]]);
    }

    return getAllByIndex(r'type_subtype', values);
  }

  List<ReportConfigEntity?> getAllByTypeSubtypeSync(
      List<String> typeValues, List<String> subtypeValues) {
    final len = typeValues.length;
    assert(subtypeValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([typeValues[i], subtypeValues[i]]);
    }

    return getAllByIndexSync(r'type_subtype', values);
  }

  Future<int> deleteAllByTypeSubtype(
      List<String> typeValues, List<String> subtypeValues) {
    final len = typeValues.length;
    assert(subtypeValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([typeValues[i], subtypeValues[i]]);
    }

    return deleteAllByIndex(r'type_subtype', values);
  }

  int deleteAllByTypeSubtypeSync(
      List<String> typeValues, List<String> subtypeValues) {
    final len = typeValues.length;
    assert(subtypeValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([typeValues[i], subtypeValues[i]]);
    }

    return deleteAllByIndexSync(r'type_subtype', values);
  }

  Future<Id> putByTypeSubtype(ReportConfigEntity object) {
    return putByIndex(r'type_subtype', object);
  }

  Id putByTypeSubtypeSync(ReportConfigEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'type_subtype', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTypeSubtype(List<ReportConfigEntity> objects) {
    return putAllByIndex(r'type_subtype', objects);
  }

  List<Id> putAllByTypeSubtypeSync(List<ReportConfigEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'type_subtype', objects, saveLinks: saveLinks);
  }
}

extension ReportConfigEntityQueryWhereSort
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QWhere> {
  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ReportConfigEntityQueryWhere
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QWhereClause> {
  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
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

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      typeEqualToAnySubtype(String type) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'type_subtype',
        value: [type],
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      typeNotEqualToAnySubtype(String type) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type_subtype',
              lower: [],
              upper: [type],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type_subtype',
              lower: [type],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type_subtype',
              lower: [type],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type_subtype',
              lower: [],
              upper: [type],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      typeSubtypeEqualTo(String type, String subtype) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'type_subtype',
        value: [type, subtype],
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterWhereClause>
      typeEqualToSubtypeNotEqualTo(String type, String subtype) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type_subtype',
              lower: [type],
              upper: [type, subtype],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type_subtype',
              lower: [type, subtype],
              includeLower: false,
              upper: [type],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type_subtype',
              lower: [type, subtype],
              includeLower: false,
              upper: [type],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type_subtype',
              lower: [type],
              upper: [type, subtype],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ReportConfigEntityQueryFilter
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QFilterCondition> {
  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      boolValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'boolValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      boolValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'boolValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      boolValueEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boolValue',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      columnConfigLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'columnConfig',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      columnConfigIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'columnConfig',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      columnConfigIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'columnConfig',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      columnConfigLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'columnConfig',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      columnConfigLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'columnConfig',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      columnConfigLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'columnConfig',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      dateValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      dateValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      dateValueEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateValue',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      dateValueGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateValue',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      dateValueLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateValue',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      dateValueBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      doubleValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'doubleValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      doubleValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'doubleValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      doubleValueEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      doubleValueGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      doubleValueLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      doubleValueBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doubleValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
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

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      idLessThan(
    Id? value, {
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

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      intValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'intValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      intValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'intValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      intValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      intValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      intValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      intValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'intValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringValue',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stringValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stringValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringValue',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      stringValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stringValue',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtype',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subtype',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtype',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      subtypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subtype',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension ReportConfigEntityQueryObject
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QFilterCondition> {
  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterFilterCondition>
      columnConfigElement(FilterQuery<ReportColumnConfigEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'columnConfig');
    });
  }
}

extension ReportConfigEntityQueryLinks
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QFilterCondition> {}

extension ReportConfigEntityQuerySortBy
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QSortBy> {
  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByBoolValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByDateValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByDateValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByDoubleValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByIntValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByStringValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByStringValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortBySubtype() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtype', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortBySubtypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtype', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension ReportConfigEntityQuerySortThenBy
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QSortThenBy> {
  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByBoolValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByDateValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByDateValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByDoubleValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByIntValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByStringValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByStringValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenBySubtype() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtype', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenBySubtypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtype', Sort.desc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension ReportConfigEntityQueryWhereDistinct
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QDistinct> {
  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QDistinct>
      distinctByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boolValue');
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QDistinct>
      distinctByDateValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateValue');
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QDistinct>
      distinctByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doubleValue');
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QDistinct>
      distinctByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intValue');
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QDistinct>
      distinctByStringValue({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringValue', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QDistinct>
      distinctBySubtype({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtype', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReportConfigEntity, ReportConfigEntity, QDistinct>
      distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension ReportConfigEntityQueryProperty
    on QueryBuilder<ReportConfigEntity, ReportConfigEntity, QQueryProperty> {
  QueryBuilder<ReportConfigEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ReportConfigEntity, bool?, QQueryOperations>
      boolValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boolValue');
    });
  }

  QueryBuilder<ReportConfigEntity, List<ReportColumnConfigEntity>,
      QQueryOperations> columnConfigProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'columnConfig');
    });
  }

  QueryBuilder<ReportConfigEntity, DateTime?, QQueryOperations>
      dateValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateValue');
    });
  }

  QueryBuilder<ReportConfigEntity, double?, QQueryOperations>
      doubleValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doubleValue');
    });
  }

  QueryBuilder<ReportConfigEntity, int?, QQueryOperations> intValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intValue');
    });
  }

  QueryBuilder<ReportConfigEntity, String?, QQueryOperations>
      stringValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringValue');
    });
  }

  QueryBuilder<ReportConfigEntity, String, QQueryOperations> subtypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtype');
    });
  }

  QueryBuilder<ReportConfigEntity, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ReportColumnConfigEntitySchema = Schema(
  name: r'ReportColumnConfigEntity',
  id: 1651178666666577088,
  properties: {
    r'align': PropertySchema(
      id: 0,
      name: r'align',
      type: IsarType.string,
      enumMap: _ReportColumnConfigEntityalignEnumValueMap,
    ),
    r'defaultValue': PropertySchema(
      id: 1,
      name: r'defaultValue',
      type: IsarType.string,
    ),
    r'flex': PropertySchema(
      id: 2,
      name: r'flex',
      type: IsarType.long,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'key': PropertySchema(
      id: 4,
      name: r'key',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 5,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _reportColumnConfigEntityEstimateSize,
  serialize: _reportColumnConfigEntitySerialize,
  deserialize: _reportColumnConfigEntityDeserialize,
  deserializeProp: _reportColumnConfigEntityDeserializeProp,
);

int _reportColumnConfigEntityEstimateSize(
  ReportColumnConfigEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.align;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.defaultValue;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.key;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _reportColumnConfigEntitySerialize(
  ReportColumnConfigEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.align?.name);
  writer.writeString(offsets[1], object.defaultValue);
  writer.writeLong(offsets[2], object.flex);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeString(offsets[4], object.key);
  writer.writeString(offsets[5], object.title);
}

ReportColumnConfigEntity _reportColumnConfigEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReportColumnConfigEntity(
    align: _ReportColumnConfigEntityalignValueEnumMap[
        reader.readStringOrNull(offsets[0])],
    defaultValue: reader.readStringOrNull(offsets[1]),
    flex: reader.readLongOrNull(offsets[2]),
    key: reader.readStringOrNull(offsets[4]),
    title: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _reportColumnConfigEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_ReportColumnConfigEntityalignValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ReportColumnConfigEntityalignEnumValueMap = {
  r'left': r'left',
  r'right': r'right',
  r'center': r'center',
  r'justify': r'justify',
};
const _ReportColumnConfigEntityalignValueEnumMap = {
  r'left': ColumnAlignment.left,
  r'right': ColumnAlignment.right,
  r'center': ColumnAlignment.center,
  r'justify': ColumnAlignment.justify,
};

extension ReportColumnConfigEntityQueryFilter on QueryBuilder<
    ReportColumnConfigEntity, ReportColumnConfigEntity, QFilterCondition> {
  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'align',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'align',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignEqualTo(
    ColumnAlignment? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'align',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignGreaterThan(
    ColumnAlignment? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'align',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignLessThan(
    ColumnAlignment? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'align',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignBetween(
    ColumnAlignment? lower,
    ColumnAlignment? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'align',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'align',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'align',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
          QAfterFilterCondition>
      alignContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'align',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
          QAfterFilterCondition>
      alignMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'align',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'align',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> alignIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'align',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'defaultValue',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'defaultValue',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'defaultValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'defaultValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'defaultValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'defaultValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'defaultValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
          QAfterFilterCondition>
      defaultValueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'defaultValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
          QAfterFilterCondition>
      defaultValueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'defaultValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultValue',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> defaultValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'defaultValue',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> flexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flex',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> flexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flex',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> flexEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flex',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> flexGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flex',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> flexLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flex',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> flexBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'key',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'key',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
          QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
          QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
          QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
          QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ReportColumnConfigEntity, ReportColumnConfigEntity,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension ReportColumnConfigEntityQueryObject on QueryBuilder<
    ReportColumnConfigEntity, ReportColumnConfigEntity, QFilterCondition> {}
