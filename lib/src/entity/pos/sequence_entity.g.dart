// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sequence_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSequenceEntityCollection on Isar {
  IsarCollection<SequenceEntity> get sequenceEntitys => this.collection();
}

const SequenceEntitySchema = CollectionSchema(
  name: r'SequenceEntity',
  id: -129261343581000801,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'nextSeq': PropertySchema(
      id: 1,
      name: r'nextSeq',
      type: IsarType.long,
    )
  },
  estimateSize: _sequenceEntityEstimateSize,
  serialize: _sequenceEntitySerialize,
  deserialize: _sequenceEntityDeserialize,
  deserializeProp: _sequenceEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _sequenceEntityGetId,
  getLinks: _sequenceEntityGetLinks,
  attach: _sequenceEntityAttach,
  version: '3.0.2',
);

int _sequenceEntityEstimateSize(
  SequenceEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _sequenceEntitySerialize(
  SequenceEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeLong(offsets[1], object.nextSeq);
}

SequenceEntity _sequenceEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SequenceEntity(
    id: id,
    name: reader.readString(offsets[0]),
    nextSeq: reader.readLong(offsets[1]),
  );
  return object;
}

P _sequenceEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sequenceEntityGetId(SequenceEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sequenceEntityGetLinks(SequenceEntity object) {
  return [];
}

void _sequenceEntityAttach(
    IsarCollection<dynamic> col, Id id, SequenceEntity object) {}

extension SequenceEntityQueryWhereSort
    on QueryBuilder<SequenceEntity, SequenceEntity, QWhere> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SequenceEntityQueryWhere
    on QueryBuilder<SequenceEntity, SequenceEntity, QWhereClause> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterWhereClause> idBetween(
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
}

extension SequenceEntityQueryFilter
    on QueryBuilder<SequenceEntity, SequenceEntity, QFilterCondition> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nextSeqEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nextSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nextSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nextSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nextSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nextSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterFilterCondition>
      nextSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nextSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SequenceEntityQueryObject
    on QueryBuilder<SequenceEntity, SequenceEntity, QFilterCondition> {}

extension SequenceEntityQueryLinks
    on QueryBuilder<SequenceEntity, SequenceEntity, QFilterCondition> {}

extension SequenceEntityQuerySortBy
    on QueryBuilder<SequenceEntity, SequenceEntity, QSortBy> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> sortByNextSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextSeq', Sort.asc);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy>
      sortByNextSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextSeq', Sort.desc);
    });
  }
}

extension SequenceEntityQuerySortThenBy
    on QueryBuilder<SequenceEntity, SequenceEntity, QSortThenBy> {
  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy> thenByNextSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextSeq', Sort.asc);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QAfterSortBy>
      thenByNextSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextSeq', Sort.desc);
    });
  }
}

extension SequenceEntityQueryWhereDistinct
    on QueryBuilder<SequenceEntity, SequenceEntity, QDistinct> {
  QueryBuilder<SequenceEntity, SequenceEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SequenceEntity, SequenceEntity, QDistinct> distinctByNextSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nextSeq');
    });
  }
}

extension SequenceEntityQueryProperty
    on QueryBuilder<SequenceEntity, SequenceEntity, QQueryProperty> {
  QueryBuilder<SequenceEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SequenceEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<SequenceEntity, int, QQueryOperations> nextSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nextSeq');
    });
  }
}
