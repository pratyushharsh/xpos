// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSyncEntityCollection on Isar {
  IsarCollection<SyncEntity> get syncEntitys => getCollection();
}

const SyncEntitySchema = CollectionSchema(
  name: 'SyncEntity',
  schema:
      '{"name":"SyncEntity","idName":"id","properties":[{"name":"lastSyncAt","type":"Long"},{"name":"status","type":"Long"},{"name":"syncEndTime","type":"Long"},{"name":"syncStartTime","type":"Long"},{"name":"type","type":"String"}],"indexes":[{"name":"type","unique":false,"properties":[{"name":"type","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'lastSyncAt': 0,
    'status': 1,
    'syncEndTime': 2,
    'syncStartTime': 3,
    'type': 4
  },
  listProperties: {},
  indexIds: {'type': 0},
  indexValueTypes: {
    'type': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _syncEntityGetId,
  getLinks: _syncEntityGetLinks,
  attachLinks: _syncEntityAttachLinks,
  serializeNative: _syncEntitySerializeNative,
  deserializeNative: _syncEntityDeserializeNative,
  deserializePropNative: _syncEntityDeserializePropNative,
  serializeWeb: _syncEntitySerializeWeb,
  deserializeWeb: _syncEntityDeserializeWeb,
  deserializePropWeb: _syncEntityDeserializePropWeb,
  version: 3,
);

int? _syncEntityGetId(SyncEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _syncEntityGetLinks(SyncEntity object) {
  return [];
}

void _syncEntitySerializeNative(
    IsarCollection<SyncEntity> collection,
    IsarRawObject rawObj,
    SyncEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.lastSyncAt;
  final _lastSyncAt = value0;
  final value1 = object.status;
  final _status = value1;
  final value2 = object.syncEndTime;
  final _syncEndTime = value2;
  final value3 = object.syncStartTime;
  final _syncStartTime = value3;
  final value4 = object.type;
  final _type = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_type.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _lastSyncAt);
  writer.writeLong(offsets[1], _status);
  writer.writeDateTime(offsets[2], _syncEndTime);
  writer.writeDateTime(offsets[3], _syncStartTime);
  writer.writeBytes(offsets[4], _type);
}

SyncEntity _syncEntityDeserializeNative(IsarCollection<SyncEntity> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = SyncEntity(
    id: id,
    lastSyncAt: reader.readDateTimeOrNull(offsets[0]),
    status: reader.readLong(offsets[1]),
    syncEndTime: reader.readDateTimeOrNull(offsets[2]),
    syncStartTime: reader.readDateTimeOrNull(offsets[3]),
    type: reader.readString(offsets[4]),
  );
  return object;
}

P _syncEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _syncEntitySerializeWeb(
    IsarCollection<SyncEntity> collection, SyncEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(
      jsObj, 'lastSyncAt', object.lastSyncAt?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'status', object.status);
  IsarNative.jsObjectSet(
      jsObj, 'syncEndTime', object.syncEndTime?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'syncStartTime',
      object.syncStartTime?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'type', object.type);
  return jsObj;
}

SyncEntity _syncEntityDeserializeWeb(
    IsarCollection<SyncEntity> collection, dynamic jsObj) {
  final object = SyncEntity(
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    lastSyncAt: IsarNative.jsObjectGet(jsObj, 'lastSyncAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'lastSyncAt'),
                isUtc: true)
            .toLocal()
        : null,
    status: IsarNative.jsObjectGet(jsObj, 'status') ?? double.negativeInfinity,
    syncEndTime: IsarNative.jsObjectGet(jsObj, 'syncEndTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'syncEndTime'),
                isUtc: true)
            .toLocal()
        : null,
    syncStartTime: IsarNative.jsObjectGet(jsObj, 'syncStartTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'syncStartTime'),
                isUtc: true)
            .toLocal()
        : null,
    type: IsarNative.jsObjectGet(jsObj, 'type') ?? '',
  );
  return object;
}

P _syncEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'lastSyncAt':
      return (IsarNative.jsObjectGet(jsObj, 'lastSyncAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'lastSyncAt'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'status':
      return (IsarNative.jsObjectGet(jsObj, 'status') ??
          double.negativeInfinity) as P;
    case 'syncEndTime':
      return (IsarNative.jsObjectGet(jsObj, 'syncEndTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'syncEndTime'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'syncStartTime':
      return (IsarNative.jsObjectGet(jsObj, 'syncStartTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'syncStartTime'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'type':
      return (IsarNative.jsObjectGet(jsObj, 'type') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _syncEntityAttachLinks(IsarCollection col, int id, SyncEntity object) {}

extension SyncEntityQueryWhereSort
    on QueryBuilder<SyncEntity, SyncEntity, QWhere> {
  QueryBuilder<SyncEntity, SyncEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterWhere> anyType() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'type'));
  }
}

extension SyncEntityQueryWhere
    on QueryBuilder<SyncEntity, SyncEntity, QWhereClause> {
  QueryBuilder<SyncEntity, SyncEntity, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<SyncEntity, SyncEntity, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<SyncEntity, SyncEntity, QAfterWhereClause> typeEqualTo(
      String type) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'type',
      value: [type],
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterWhereClause> typeNotEqualTo(
      String type) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'type',
        upper: [type],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'type',
        lower: [type],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'type',
        lower: [type],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'type',
        upper: [type],
        includeUpper: false,
      ));
    }
  }
}

extension SyncEntityQueryFilter
    on QueryBuilder<SyncEntity, SyncEntity, QFilterCondition> {
  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      lastSyncAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastSyncAt',
      value: null,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> lastSyncAtEqualTo(
      DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      lastSyncAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      lastSyncAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> lastSyncAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastSyncAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> statusEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'status',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> statusGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'status',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> statusLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'status',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> statusBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'status',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncEndTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'syncEndTime',
      value: null,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncEndTimeEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncEndTime',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncEndTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'syncEndTime',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncEndTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'syncEndTime',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncEndTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'syncEndTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncStartTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'syncStartTime',
      value: null,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncStartTimeEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncStartTime',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncStartTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'syncStartTime',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncStartTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'syncStartTime',
      value: value,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition>
      syncStartTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'syncStartTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> typeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'type',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'type',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension SyncEntityQueryLinks
    on QueryBuilder<SyncEntity, SyncEntity, QFilterCondition> {}

extension SyncEntityQueryWhereSortBy
    on QueryBuilder<SyncEntity, SyncEntity, QSortBy> {
  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortByLastSyncAt() {
    return addSortByInternal('lastSyncAt', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortByLastSyncAtDesc() {
    return addSortByInternal('lastSyncAt', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortByStatus() {
    return addSortByInternal('status', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortByStatusDesc() {
    return addSortByInternal('status', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortBySyncEndTime() {
    return addSortByInternal('syncEndTime', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortBySyncEndTimeDesc() {
    return addSortByInternal('syncEndTime', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortBySyncStartTime() {
    return addSortByInternal('syncStartTime', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortBySyncStartTimeDesc() {
    return addSortByInternal('syncStartTime', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortByType() {
    return addSortByInternal('type', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> sortByTypeDesc() {
    return addSortByInternal('type', Sort.desc);
  }
}

extension SyncEntityQueryWhereSortThenBy
    on QueryBuilder<SyncEntity, SyncEntity, QSortThenBy> {
  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenByLastSyncAt() {
    return addSortByInternal('lastSyncAt', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenByLastSyncAtDesc() {
    return addSortByInternal('lastSyncAt', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenByStatus() {
    return addSortByInternal('status', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenByStatusDesc() {
    return addSortByInternal('status', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenBySyncEndTime() {
    return addSortByInternal('syncEndTime', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenBySyncEndTimeDesc() {
    return addSortByInternal('syncEndTime', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenBySyncStartTime() {
    return addSortByInternal('syncStartTime', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenBySyncStartTimeDesc() {
    return addSortByInternal('syncStartTime', Sort.desc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenByType() {
    return addSortByInternal('type', Sort.asc);
  }

  QueryBuilder<SyncEntity, SyncEntity, QAfterSortBy> thenByTypeDesc() {
    return addSortByInternal('type', Sort.desc);
  }
}

extension SyncEntityQueryWhereDistinct
    on QueryBuilder<SyncEntity, SyncEntity, QDistinct> {
  QueryBuilder<SyncEntity, SyncEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<SyncEntity, SyncEntity, QDistinct> distinctByLastSyncAt() {
    return addDistinctByInternal('lastSyncAt');
  }

  QueryBuilder<SyncEntity, SyncEntity, QDistinct> distinctByStatus() {
    return addDistinctByInternal('status');
  }

  QueryBuilder<SyncEntity, SyncEntity, QDistinct> distinctBySyncEndTime() {
    return addDistinctByInternal('syncEndTime');
  }

  QueryBuilder<SyncEntity, SyncEntity, QDistinct> distinctBySyncStartTime() {
    return addDistinctByInternal('syncStartTime');
  }

  QueryBuilder<SyncEntity, SyncEntity, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('type', caseSensitive: caseSensitive);
  }
}

extension SyncEntityQueryProperty
    on QueryBuilder<SyncEntity, SyncEntity, QQueryProperty> {
  QueryBuilder<SyncEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SyncEntity, DateTime?, QQueryOperations> lastSyncAtProperty() {
    return addPropertyNameInternal('lastSyncAt');
  }

  QueryBuilder<SyncEntity, int, QQueryOperations> statusProperty() {
    return addPropertyNameInternal('status');
  }

  QueryBuilder<SyncEntity, DateTime?, QQueryOperations> syncEndTimeProperty() {
    return addPropertyNameInternal('syncEndTime');
  }

  QueryBuilder<SyncEntity, DateTime?, QQueryOperations>
      syncStartTimeProperty() {
    return addPropertyNameInternal('syncStartTime');
  }

  QueryBuilder<SyncEntity, String, QQueryOperations> typeProperty() {
    return addPropertyNameInternal('type');
  }
}
