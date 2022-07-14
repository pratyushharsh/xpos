// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetDiscountEntityCollection on Isar {
  IsarCollection<DiscountEntity> get discountEntitys => getCollection();
}

const DiscountEntitySchema = CollectionSchema(
  name: 'DiscountEntity',
  schema:
      '{"name":"DiscountEntity","idName":"id","properties":[{"name":"amount","type":"Double"},{"name":"description","type":"String"},{"name":"discountCode","type":"String"},{"name":"discountGroupCode","type":"String"},{"name":"discountId","type":"String"},{"name":"discountType","type":"String"},{"name":"percent","type":"Double"}],"indexes":[{"name":"discountId","unique":true,"properties":[{"name":"discountId","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'amount': 0,
    'description': 1,
    'discountCode': 2,
    'discountGroupCode': 3,
    'discountId': 4,
    'discountType': 5,
    'percent': 6
  },
  listProperties: {},
  indexIds: {'discountId': 0},
  indexValueTypes: {
    'discountId': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _discountEntityGetId,
  getLinks: _discountEntityGetLinks,
  attachLinks: _discountEntityAttachLinks,
  serializeNative: _discountEntitySerializeNative,
  deserializeNative: _discountEntityDeserializeNative,
  deserializePropNative: _discountEntityDeserializePropNative,
  serializeWeb: _discountEntitySerializeWeb,
  deserializeWeb: _discountEntityDeserializeWeb,
  deserializePropWeb: _discountEntityDeserializePropWeb,
  version: 3,
);

int? _discountEntityGetId(DiscountEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _discountEntityGetLinks(DiscountEntity object) {
  return [];
}

void _discountEntitySerializeNative(
    IsarCollection<DiscountEntity> collection,
    IsarRawObject rawObj,
    DiscountEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.amount;
  final _amount = value0;
  final value1 = object.description;
  final _description = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_description.length) as int;
  final value2 = object.discountCode;
  final _discountCode = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_discountCode.length) as int;
  final value3 = object.discountGroupCode;
  IsarUint8List? _discountGroupCode;
  if (value3 != null) {
    _discountGroupCode = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_discountGroupCode?.length ?? 0) as int;
  final value4 = object.discountId;
  final _discountId = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_discountId.length) as int;
  final value5 = object.discountType;
  final _discountType = IsarBinaryWriter.utf8Encoder.convert(value5);
  dynamicSize += (_discountType.length) as int;
  final value6 = object.percent;
  final _percent = value6;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _amount);
  writer.writeBytes(offsets[1], _description);
  writer.writeBytes(offsets[2], _discountCode);
  writer.writeBytes(offsets[3], _discountGroupCode);
  writer.writeBytes(offsets[4], _discountId);
  writer.writeBytes(offsets[5], _discountType);
  writer.writeDouble(offsets[6], _percent);
}

DiscountEntity _discountEntityDeserializeNative(
    IsarCollection<DiscountEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = DiscountEntity(
    amount: reader.readDoubleOrNull(offsets[0]),
    description: reader.readString(offsets[1]),
    discountCode: reader.readString(offsets[2]),
    discountGroupCode: reader.readStringOrNull(offsets[3]),
    discountId: reader.readString(offsets[4]),
    discountType: reader.readString(offsets[5]),
    id: id,
    percent: reader.readDoubleOrNull(offsets[6]),
  );
  return object;
}

P _discountEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _discountEntitySerializeWeb(
    IsarCollection<DiscountEntity> collection, DiscountEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'discountCode', object.discountCode);
  IsarNative.jsObjectSet(jsObj, 'discountGroupCode', object.discountGroupCode);
  IsarNative.jsObjectSet(jsObj, 'discountId', object.discountId);
  IsarNative.jsObjectSet(jsObj, 'discountType', object.discountType);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'percent', object.percent);
  return jsObj;
}

DiscountEntity _discountEntityDeserializeWeb(
    IsarCollection<DiscountEntity> collection, dynamic jsObj) {
  final object = DiscountEntity(
    amount: IsarNative.jsObjectGet(jsObj, 'amount'),
    description: IsarNative.jsObjectGet(jsObj, 'description') ?? '',
    discountCode: IsarNative.jsObjectGet(jsObj, 'discountCode') ?? '',
    discountGroupCode: IsarNative.jsObjectGet(jsObj, 'discountGroupCode'),
    discountId: IsarNative.jsObjectGet(jsObj, 'discountId') ?? '',
    discountType: IsarNative.jsObjectGet(jsObj, 'discountType') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    percent: IsarNative.jsObjectGet(jsObj, 'percent'),
  );
  return object;
}

P _discountEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount')) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
    case 'discountCode':
      return (IsarNative.jsObjectGet(jsObj, 'discountCode') ?? '') as P;
    case 'discountGroupCode':
      return (IsarNative.jsObjectGet(jsObj, 'discountGroupCode')) as P;
    case 'discountId':
      return (IsarNative.jsObjectGet(jsObj, 'discountId') ?? '') as P;
    case 'discountType':
      return (IsarNative.jsObjectGet(jsObj, 'discountType') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'percent':
      return (IsarNative.jsObjectGet(jsObj, 'percent')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _discountEntityAttachLinks(
    IsarCollection col, int id, DiscountEntity object) {}

extension DiscountEntityByIndex on IsarCollection<DiscountEntity> {
  Future<DiscountEntity?> getByDiscountId(String discountId) {
    return getByIndex('discountId', [discountId]);
  }

  DiscountEntity? getByDiscountIdSync(String discountId) {
    return getByIndexSync('discountId', [discountId]);
  }

  Future<bool> deleteByDiscountId(String discountId) {
    return deleteByIndex('discountId', [discountId]);
  }

  bool deleteByDiscountIdSync(String discountId) {
    return deleteByIndexSync('discountId', [discountId]);
  }

  Future<List<DiscountEntity?>> getAllByDiscountId(
      List<String> discountIdValues) {
    final values = discountIdValues.map((e) => [e]).toList();
    return getAllByIndex('discountId', values);
  }

  List<DiscountEntity?> getAllByDiscountIdSync(List<String> discountIdValues) {
    final values = discountIdValues.map((e) => [e]).toList();
    return getAllByIndexSync('discountId', values);
  }

  Future<int> deleteAllByDiscountId(List<String> discountIdValues) {
    final values = discountIdValues.map((e) => [e]).toList();
    return deleteAllByIndex('discountId', values);
  }

  int deleteAllByDiscountIdSync(List<String> discountIdValues) {
    final values = discountIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('discountId', values);
  }
}

extension DiscountEntityQueryWhereSort
    on QueryBuilder<DiscountEntity, DiscountEntity, QWhere> {
  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhere> anyDiscountId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'discountId'));
  }
}

extension DiscountEntityQueryWhere
    on QueryBuilder<DiscountEntity, DiscountEntity, QWhereClause> {
  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhereClause>
      discountIdEqualTo(String discountId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'discountId',
      value: [discountId],
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterWhereClause>
      discountIdNotEqualTo(String discountId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'discountId',
        upper: [discountId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'discountId',
        lower: [discountId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'discountId',
        lower: [discountId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'discountId',
        upper: [discountId],
        includeUpper: false,
      ));
    }
  }
}

extension DiscountEntityQueryFilter
    on QueryBuilder<DiscountEntity, DiscountEntity, QFilterCondition> {
  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      amountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'amount',
      value: null,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      amountGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      amountLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      amountBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'amount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountCodeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountCodeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountCodeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discountCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'discountCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'discountCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'discountGroupCode',
      value: null,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'discountGroupCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'discountGroupCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'discountGroupCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discountGroupCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'discountGroupCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'discountGroupCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'discountGroupCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountGroupCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'discountGroupCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'discountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'discountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'discountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discountId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'discountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'discountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'discountId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'discountId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'discountType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountTypeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'discountType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountTypeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'discountType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountTypeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discountType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'discountType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'discountType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountTypeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'discountType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      discountTypeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'discountType',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      percentIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'percent',
      value: null,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      percentGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'percent',
      value: value,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      percentLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'percent',
      value: value,
    ));
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterFilterCondition>
      percentBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'percent',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }
}

extension DiscountEntityQueryLinks
    on QueryBuilder<DiscountEntity, DiscountEntity, QFilterCondition> {}

extension DiscountEntityQueryWhereSortBy
    on QueryBuilder<DiscountEntity, DiscountEntity, QSortBy> {
  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy> sortByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDiscountCode() {
    return addSortByInternal('discountCode', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDiscountCodeDesc() {
    return addSortByInternal('discountCode', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDiscountGroupCode() {
    return addSortByInternal('discountGroupCode', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDiscountGroupCodeDesc() {
    return addSortByInternal('discountGroupCode', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDiscountId() {
    return addSortByInternal('discountId', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDiscountIdDesc() {
    return addSortByInternal('discountId', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDiscountType() {
    return addSortByInternal('discountType', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByDiscountTypeDesc() {
    return addSortByInternal('discountType', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy> sortByPercent() {
    return addSortByInternal('percent', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      sortByPercentDesc() {
    return addSortByInternal('percent', Sort.desc);
  }
}

extension DiscountEntityQueryWhereSortThenBy
    on QueryBuilder<DiscountEntity, DiscountEntity, QSortThenBy> {
  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy> thenByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDiscountCode() {
    return addSortByInternal('discountCode', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDiscountCodeDesc() {
    return addSortByInternal('discountCode', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDiscountGroupCode() {
    return addSortByInternal('discountGroupCode', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDiscountGroupCodeDesc() {
    return addSortByInternal('discountGroupCode', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDiscountId() {
    return addSortByInternal('discountId', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDiscountIdDesc() {
    return addSortByInternal('discountId', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDiscountType() {
    return addSortByInternal('discountType', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByDiscountTypeDesc() {
    return addSortByInternal('discountType', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy> thenByPercent() {
    return addSortByInternal('percent', Sort.asc);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QAfterSortBy>
      thenByPercentDesc() {
    return addSortByInternal('percent', Sort.desc);
  }
}

extension DiscountEntityQueryWhereDistinct
    on QueryBuilder<DiscountEntity, DiscountEntity, QDistinct> {
  QueryBuilder<DiscountEntity, DiscountEntity, QDistinct> distinctByAmount() {
    return addDistinctByInternal('amount');
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QDistinct>
      distinctByDiscountCode({bool caseSensitive = true}) {
    return addDistinctByInternal('discountCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QDistinct>
      distinctByDiscountGroupCode({bool caseSensitive = true}) {
    return addDistinctByInternal('discountGroupCode',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QDistinct> distinctByDiscountId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('discountId', caseSensitive: caseSensitive);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QDistinct>
      distinctByDiscountType({bool caseSensitive = true}) {
    return addDistinctByInternal('discountType', caseSensitive: caseSensitive);
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<DiscountEntity, DiscountEntity, QDistinct> distinctByPercent() {
    return addDistinctByInternal('percent');
  }
}

extension DiscountEntityQueryProperty
    on QueryBuilder<DiscountEntity, DiscountEntity, QQueryProperty> {
  QueryBuilder<DiscountEntity, double?, QQueryOperations> amountProperty() {
    return addPropertyNameInternal('amount');
  }

  QueryBuilder<DiscountEntity, String, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<DiscountEntity, String, QQueryOperations>
      discountCodeProperty() {
    return addPropertyNameInternal('discountCode');
  }

  QueryBuilder<DiscountEntity, String?, QQueryOperations>
      discountGroupCodeProperty() {
    return addPropertyNameInternal('discountGroupCode');
  }

  QueryBuilder<DiscountEntity, String, QQueryOperations> discountIdProperty() {
    return addPropertyNameInternal('discountId');
  }

  QueryBuilder<DiscountEntity, String, QQueryOperations>
      discountTypeProperty() {
    return addPropertyNameInternal('discountType');
  }

  QueryBuilder<DiscountEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<DiscountEntity, double?, QQueryOperations> percentProperty() {
    return addPropertyNameInternal('percent');
  }
}
