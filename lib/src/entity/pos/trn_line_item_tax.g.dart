// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trn_line_item_tax.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTransactionLineItemTaxModifierCollection on Isar {
  IsarCollection<TransactionLineItemTaxModifier>
      get transactionLineItemTaxModifiers => getCollection();
}

const TransactionLineItemTaxModifierSchema = CollectionSchema(
  name: 'TransactionLineItemTaxModifier',
  schema:
      '{"name":"TransactionLineItemTaxModifier","idName":"id","properties":[{"name":"authorityId","type":"String"},{"name":"authorityName","type":"String"},{"name":"authorityType","type":"String"},{"name":"originalTaxableAmount","type":"Double"},{"name":"rawTaxAmount","type":"Double"},{"name":"rawTaxPercentage","type":"Double"},{"name":"taxAmount","type":"Double"},{"name":"taxGroupId","type":"String"},{"name":"taxLocationId","type":"String"},{"name":"taxOverride","type":"Bool"},{"name":"taxOverrideAmount","type":"Double"},{"name":"taxOverridePercent","type":"Double"},{"name":"taxOverrideReasonCode","type":"String"},{"name":"taxPercent","type":"Double"},{"name":"taxRuleId","type":"String"},{"name":"taxRuleName","type":"String"},{"name":"taxableAmount","type":"Double"},{"name":"transLineItemSeq","type":"Long"},{"name":"transSeq","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'authorityId': 0,
    'authorityName': 1,
    'authorityType': 2,
    'originalTaxableAmount': 3,
    'rawTaxAmount': 4,
    'rawTaxPercentage': 5,
    'taxAmount': 6,
    'taxGroupId': 7,
    'taxLocationId': 8,
    'taxOverride': 9,
    'taxOverrideAmount': 10,
    'taxOverridePercent': 11,
    'taxOverrideReasonCode': 12,
    'taxPercent': 13,
    'taxRuleId': 14,
    'taxRuleName': 15,
    'taxableAmount': 16,
    'transLineItemSeq': 17,
    'transSeq': 18
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _transactionLineItemTaxModifierGetId,
  getLinks: _transactionLineItemTaxModifierGetLinks,
  attachLinks: _transactionLineItemTaxModifierAttachLinks,
  serializeNative: _transactionLineItemTaxModifierSerializeNative,
  deserializeNative: _transactionLineItemTaxModifierDeserializeNative,
  deserializePropNative: _transactionLineItemTaxModifierDeserializePropNative,
  serializeWeb: _transactionLineItemTaxModifierSerializeWeb,
  deserializeWeb: _transactionLineItemTaxModifierDeserializeWeb,
  deserializePropWeb: _transactionLineItemTaxModifierDeserializePropWeb,
  version: 3,
);

int? _transactionLineItemTaxModifierGetId(
    TransactionLineItemTaxModifier object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _transactionLineItemTaxModifierGetLinks(
    TransactionLineItemTaxModifier object) {
  return [];
}

void _transactionLineItemTaxModifierSerializeNative(
    IsarCollection<TransactionLineItemTaxModifier> collection,
    IsarRawObject rawObj,
    TransactionLineItemTaxModifier object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.authorityId;
  final _authorityId = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_authorityId.length) as int;
  final value1 = object.authorityName;
  final _authorityName = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_authorityName.length) as int;
  final value2 = object.authorityType;
  final _authorityType = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_authorityType.length) as int;
  final value3 = object.originalTaxableAmount;
  final _originalTaxableAmount = value3;
  final value4 = object.rawTaxAmount;
  final _rawTaxAmount = value4;
  final value5 = object.rawTaxPercentage;
  final _rawTaxPercentage = value5;
  final value6 = object.taxAmount;
  final _taxAmount = value6;
  final value7 = object.taxGroupId;
  final _taxGroupId = IsarBinaryWriter.utf8Encoder.convert(value7);
  dynamicSize += (_taxGroupId.length) as int;
  final value8 = object.taxLocationId;
  IsarUint8List? _taxLocationId;
  if (value8 != null) {
    _taxLocationId = IsarBinaryWriter.utf8Encoder.convert(value8);
  }
  dynamicSize += (_taxLocationId?.length ?? 0) as int;
  final value9 = object.taxOverride;
  final _taxOverride = value9;
  final value10 = object.taxOverrideAmount;
  final _taxOverrideAmount = value10;
  final value11 = object.taxOverridePercent;
  final _taxOverridePercent = value11;
  final value12 = object.taxOverrideReasonCode;
  IsarUint8List? _taxOverrideReasonCode;
  if (value12 != null) {
    _taxOverrideReasonCode = IsarBinaryWriter.utf8Encoder.convert(value12);
  }
  dynamicSize += (_taxOverrideReasonCode?.length ?? 0) as int;
  final value13 = object.taxPercent;
  final _taxPercent = value13;
  final value14 = object.taxRuleId;
  final _taxRuleId = IsarBinaryWriter.utf8Encoder.convert(value14);
  dynamicSize += (_taxRuleId.length) as int;
  final value15 = object.taxRuleName;
  final _taxRuleName = IsarBinaryWriter.utf8Encoder.convert(value15);
  dynamicSize += (_taxRuleName.length) as int;
  final value16 = object.taxableAmount;
  final _taxableAmount = value16;
  final value17 = object.lineItemSeq;
  final _transLineItemSeq = value17;
  final value18 = object.transSeq;
  final _transSeq = value18;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _authorityId);
  writer.writeBytes(offsets[1], _authorityName);
  writer.writeBytes(offsets[2], _authorityType);
  writer.writeDouble(offsets[3], _originalTaxableAmount);
  writer.writeDouble(offsets[4], _rawTaxAmount);
  writer.writeDouble(offsets[5], _rawTaxPercentage);
  writer.writeDouble(offsets[6], _taxAmount);
  writer.writeBytes(offsets[7], _taxGroupId);
  writer.writeBytes(offsets[8], _taxLocationId);
  writer.writeBool(offsets[9], _taxOverride);
  writer.writeDouble(offsets[10], _taxOverrideAmount);
  writer.writeDouble(offsets[11], _taxOverridePercent);
  writer.writeBytes(offsets[12], _taxOverrideReasonCode);
  writer.writeDouble(offsets[13], _taxPercent);
  writer.writeBytes(offsets[14], _taxRuleId);
  writer.writeBytes(offsets[15], _taxRuleName);
  writer.writeDouble(offsets[16], _taxableAmount);
  writer.writeLong(offsets[17], _transLineItemSeq);
  writer.writeLong(offsets[18], _transSeq);
}

TransactionLineItemTaxModifier _transactionLineItemTaxModifierDeserializeNative(
    IsarCollection<TransactionLineItemTaxModifier> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = TransactionLineItemTaxModifier(
    authorityId: reader.readString(offsets[0]),
    authorityName: reader.readString(offsets[1]),
    authorityType: reader.readString(offsets[2]),
    id: id,
    originalTaxableAmount: reader.readDouble(offsets[3]),
    rawTaxAmount: reader.readDouble(offsets[4]),
    rawTaxPercentage: reader.readDouble(offsets[5]),
    taxAmount: reader.readDouble(offsets[6]),
    taxGroupId: reader.readString(offsets[7]),
    taxLocationId: reader.readStringOrNull(offsets[8]),
    taxOverride: reader.readBool(offsets[9]),
    taxOverrideAmount: reader.readDoubleOrNull(offsets[10]),
    taxOverridePercent: reader.readDoubleOrNull(offsets[11]),
    taxOverrideReasonCode: reader.readStringOrNull(offsets[12]),
    taxPercent: reader.readDouble(offsets[13]),
    taxRuleId: reader.readString(offsets[14]),
    taxRuleName: reader.readString(offsets[15]),
    taxableAmount: reader.readDouble(offsets[16]),
    lineItemSeq: reader.readLong(offsets[17]),
    transSeq: reader.readLong(offsets[18]),
  );
  return object;
}

P _transactionLineItemTaxModifierDeserializePropNative<P>(
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
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readDouble(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    case 18:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _transactionLineItemTaxModifierSerializeWeb(
    IsarCollection<TransactionLineItemTaxModifier> collection,
    TransactionLineItemTaxModifier object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'authorityId', object.authorityId);
  IsarNative.jsObjectSet(jsObj, 'authorityName', object.authorityName);
  IsarNative.jsObjectSet(jsObj, 'authorityType', object.authorityType);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(
      jsObj, 'originalTaxableAmount', object.originalTaxableAmount);
  IsarNative.jsObjectSet(jsObj, 'rawTaxAmount', object.rawTaxAmount);
  IsarNative.jsObjectSet(jsObj, 'rawTaxPercentage', object.rawTaxPercentage);
  IsarNative.jsObjectSet(jsObj, 'taxAmount', object.taxAmount);
  IsarNative.jsObjectSet(jsObj, 'taxGroupId', object.taxGroupId);
  IsarNative.jsObjectSet(jsObj, 'taxLocationId', object.taxLocationId);
  IsarNative.jsObjectSet(jsObj, 'taxOverride', object.taxOverride);
  IsarNative.jsObjectSet(jsObj, 'taxOverrideAmount', object.taxOverrideAmount);
  IsarNative.jsObjectSet(
      jsObj, 'taxOverridePercent', object.taxOverridePercent);
  IsarNative.jsObjectSet(
      jsObj, 'taxOverrideReasonCode', object.taxOverrideReasonCode);
  IsarNative.jsObjectSet(jsObj, 'taxPercent', object.taxPercent);
  IsarNative.jsObjectSet(jsObj, 'taxRuleId', object.taxRuleId);
  IsarNative.jsObjectSet(jsObj, 'taxRuleName', object.taxRuleName);
  IsarNative.jsObjectSet(jsObj, 'taxableAmount', object.taxableAmount);
  IsarNative.jsObjectSet(jsObj, 'transLineItemSeq', object.lineItemSeq);
  IsarNative.jsObjectSet(jsObj, 'transSeq', object.transSeq);
  return jsObj;
}

TransactionLineItemTaxModifier _transactionLineItemTaxModifierDeserializeWeb(
    IsarCollection<TransactionLineItemTaxModifier> collection, dynamic jsObj) {
  final object = TransactionLineItemTaxModifier(
    authorityId: IsarNative.jsObjectGet(jsObj, 'authorityId') ?? '',
    authorityName: IsarNative.jsObjectGet(jsObj, 'authorityName') ?? '',
    authorityType: IsarNative.jsObjectGet(jsObj, 'authorityType') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    originalTaxableAmount:
        IsarNative.jsObjectGet(jsObj, 'originalTaxableAmount') ??
            double.negativeInfinity,
    rawTaxAmount: IsarNative.jsObjectGet(jsObj, 'rawTaxAmount') ??
        double.negativeInfinity,
    rawTaxPercentage: IsarNative.jsObjectGet(jsObj, 'rawTaxPercentage') ??
        double.negativeInfinity,
    taxAmount:
        IsarNative.jsObjectGet(jsObj, 'taxAmount') ?? double.negativeInfinity,
    taxGroupId: IsarNative.jsObjectGet(jsObj, 'taxGroupId') ?? '',
    taxLocationId: IsarNative.jsObjectGet(jsObj, 'taxLocationId'),
    taxOverride: IsarNative.jsObjectGet(jsObj, 'taxOverride') ?? false,
    taxOverrideAmount: IsarNative.jsObjectGet(jsObj, 'taxOverrideAmount'),
    taxOverridePercent: IsarNative.jsObjectGet(jsObj, 'taxOverridePercent'),
    taxOverrideReasonCode:
        IsarNative.jsObjectGet(jsObj, 'taxOverrideReasonCode'),
    taxPercent:
        IsarNative.jsObjectGet(jsObj, 'taxPercent') ?? double.negativeInfinity,
    taxRuleId: IsarNative.jsObjectGet(jsObj, 'taxRuleId') ?? '',
    taxRuleName: IsarNative.jsObjectGet(jsObj, 'taxRuleName') ?? '',
    taxableAmount: IsarNative.jsObjectGet(jsObj, 'taxableAmount') ??
        double.negativeInfinity,
    lineItemSeq: IsarNative.jsObjectGet(jsObj, 'transLineItemSeq') ??
        double.negativeInfinity,
    transSeq:
        IsarNative.jsObjectGet(jsObj, 'transSeq') ?? double.negativeInfinity,
  );
  return object;
}

P _transactionLineItemTaxModifierDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'authorityId':
      return (IsarNative.jsObjectGet(jsObj, 'authorityId') ?? '') as P;
    case 'authorityName':
      return (IsarNative.jsObjectGet(jsObj, 'authorityName') ?? '') as P;
    case 'authorityType':
      return (IsarNative.jsObjectGet(jsObj, 'authorityType') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'originalTaxableAmount':
      return (IsarNative.jsObjectGet(jsObj, 'originalTaxableAmount') ??
          double.negativeInfinity) as P;
    case 'rawTaxAmount':
      return (IsarNative.jsObjectGet(jsObj, 'rawTaxAmount') ??
          double.negativeInfinity) as P;
    case 'rawTaxPercentage':
      return (IsarNative.jsObjectGet(jsObj, 'rawTaxPercentage') ??
          double.negativeInfinity) as P;
    case 'taxAmount':
      return (IsarNative.jsObjectGet(jsObj, 'taxAmount') ??
          double.negativeInfinity) as P;
    case 'taxGroupId':
      return (IsarNative.jsObjectGet(jsObj, 'taxGroupId') ?? '') as P;
    case 'taxLocationId':
      return (IsarNative.jsObjectGet(jsObj, 'taxLocationId')) as P;
    case 'taxOverride':
      return (IsarNative.jsObjectGet(jsObj, 'taxOverride') ?? false) as P;
    case 'taxOverrideAmount':
      return (IsarNative.jsObjectGet(jsObj, 'taxOverrideAmount')) as P;
    case 'taxOverridePercent':
      return (IsarNative.jsObjectGet(jsObj, 'taxOverridePercent')) as P;
    case 'taxOverrideReasonCode':
      return (IsarNative.jsObjectGet(jsObj, 'taxOverrideReasonCode')) as P;
    case 'taxPercent':
      return (IsarNative.jsObjectGet(jsObj, 'taxPercent') ??
          double.negativeInfinity) as P;
    case 'taxRuleId':
      return (IsarNative.jsObjectGet(jsObj, 'taxRuleId') ?? '') as P;
    case 'taxRuleName':
      return (IsarNative.jsObjectGet(jsObj, 'taxRuleName') ?? '') as P;
    case 'taxableAmount':
      return (IsarNative.jsObjectGet(jsObj, 'taxableAmount') ??
          double.negativeInfinity) as P;
    case 'transLineItemSeq':
      return (IsarNative.jsObjectGet(jsObj, 'transLineItemSeq') ??
          double.negativeInfinity) as P;
    case 'transSeq':
      return (IsarNative.jsObjectGet(jsObj, 'transSeq') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _transactionLineItemTaxModifierAttachLinks(
    IsarCollection col, int id, TransactionLineItemTaxModifier object) {}

extension TransactionLineItemTaxModifierQueryWhereSort on QueryBuilder<
    TransactionLineItemTaxModifier, TransactionLineItemTaxModifier, QWhere> {
  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension TransactionLineItemTaxModifierQueryWhere on QueryBuilder<
    TransactionLineItemTaxModifier,
    TransactionLineItemTaxModifier,
    QWhereClause> {
  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterWhereClause> idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterWhereClause> idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterWhereClause> idBetween(
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
}

extension TransactionLineItemTaxModifierQueryFilter on QueryBuilder<
    TransactionLineItemTaxModifier,
    TransactionLineItemTaxModifier,
    QFilterCondition> {
  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'authorityId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'authorityId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'authorityId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'authorityId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'authorityId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'authorityId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      authorityIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'authorityId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      authorityIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'authorityId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'authorityName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'authorityName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'authorityName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'authorityName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'authorityName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'authorityName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      authorityNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'authorityName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      authorityNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'authorityName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'authorityType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityTypeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'authorityType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityTypeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'authorityType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityTypeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'authorityType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'authorityType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> authorityTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'authorityType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      authorityTypeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'authorityType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      authorityTypeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'authorityType',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> originalTaxableAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'originalTaxableAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> originalTaxableAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'originalTaxableAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      originalTaxableAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'originalTaxableAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> rawTaxAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'rawTaxAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> rawTaxAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'rawTaxAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> rawTaxAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'rawTaxAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> rawTaxPercentageGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'rawTaxPercentage',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> rawTaxPercentageLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'rawTaxPercentage',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      rawTaxPercentageBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'rawTaxPercentage',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxGroupIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxGroupIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxGroupIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxGroupIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxGroupId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxGroupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxGroupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxGroupIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'taxGroupId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'taxGroupId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxLocationIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'taxLocationId',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxLocationIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'taxLocationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxLocationIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'taxLocationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxLocationIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'taxLocationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxLocationIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxLocationId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxLocationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'taxLocationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxLocationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'taxLocationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxLocationIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'taxLocationId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxLocationIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'taxLocationId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'taxOverride',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideAmountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'taxOverrideAmount',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideAmountGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxOverrideAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideAmountLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxOverrideAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxOverrideAmountBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxOverrideAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverridePercentIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'taxOverridePercent',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverridePercentGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxOverridePercent',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverridePercentLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxOverridePercent',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxOverridePercentBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxOverridePercent',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideReasonCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'taxOverrideReasonCode',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideReasonCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'taxOverrideReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideReasonCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'taxOverrideReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideReasonCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'taxOverrideReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideReasonCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxOverrideReasonCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideReasonCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'taxOverrideReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxOverrideReasonCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'taxOverrideReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxOverrideReasonCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'taxOverrideReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxOverrideReasonCodeMatches(String pattern,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'taxOverrideReasonCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxPercentGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxPercent',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxPercentLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxPercent',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxPercentBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxPercent',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'taxRuleId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'taxRuleId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'taxRuleId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxRuleId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'taxRuleId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'taxRuleId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxRuleIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'taxRuleId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxRuleIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'taxRuleId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'taxRuleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'taxRuleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'taxRuleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxRuleName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'taxRuleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxRuleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'taxRuleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxRuleNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'taxRuleName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
          QAfterFilterCondition>
      taxRuleNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'taxRuleName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxableAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxableAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxableAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxableAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> taxableAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxableAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> transLineItemSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transLineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> transLineItemSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'transLineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> transLineItemSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'transLineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> transLineItemSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'transLineItemSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> transSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> transSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'transSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> transSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'transSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterFilterCondition> transSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'transSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension TransactionLineItemTaxModifierQueryLinks on QueryBuilder<
    TransactionLineItemTaxModifier,
    TransactionLineItemTaxModifier,
    QFilterCondition> {}

extension TransactionLineItemTaxModifierQueryWhereSortBy on QueryBuilder<
    TransactionLineItemTaxModifier, TransactionLineItemTaxModifier, QSortBy> {
  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByAuthorityId() {
    return addSortByInternal('authorityId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByAuthorityIdDesc() {
    return addSortByInternal('authorityId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByAuthorityName() {
    return addSortByInternal('authorityName', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByAuthorityNameDesc() {
    return addSortByInternal('authorityName', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByAuthorityType() {
    return addSortByInternal('authorityType', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByAuthorityTypeDesc() {
    return addSortByInternal('authorityType', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByOriginalTaxableAmount() {
    return addSortByInternal('originalTaxableAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByOriginalTaxableAmountDesc() {
    return addSortByInternal('originalTaxableAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByRawTaxAmount() {
    return addSortByInternal('rawTaxAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByRawTaxAmountDesc() {
    return addSortByInternal('rawTaxAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByRawTaxPercentage() {
    return addSortByInternal('rawTaxPercentage', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByRawTaxPercentageDesc() {
    return addSortByInternal('rawTaxPercentage', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxAmount() {
    return addSortByInternal('taxAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxAmountDesc() {
    return addSortByInternal('taxAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxGroupId() {
    return addSortByInternal('taxGroupId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxGroupIdDesc() {
    return addSortByInternal('taxGroupId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxLocationId() {
    return addSortByInternal('taxLocationId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxLocationIdDesc() {
    return addSortByInternal('taxLocationId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxOverride() {
    return addSortByInternal('taxOverride', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxOverrideDesc() {
    return addSortByInternal('taxOverride', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxOverrideAmount() {
    return addSortByInternal('taxOverrideAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxOverrideAmountDesc() {
    return addSortByInternal('taxOverrideAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxOverridePercent() {
    return addSortByInternal('taxOverridePercent', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxOverridePercentDesc() {
    return addSortByInternal('taxOverridePercent', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxOverrideReasonCode() {
    return addSortByInternal('taxOverrideReasonCode', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxOverrideReasonCodeDesc() {
    return addSortByInternal('taxOverrideReasonCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxPercent() {
    return addSortByInternal('taxPercent', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxPercentDesc() {
    return addSortByInternal('taxPercent', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxRuleId() {
    return addSortByInternal('taxRuleId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxRuleIdDesc() {
    return addSortByInternal('taxRuleId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxRuleName() {
    return addSortByInternal('taxRuleName', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxRuleNameDesc() {
    return addSortByInternal('taxRuleName', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxableAmount() {
    return addSortByInternal('taxableAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTaxableAmountDesc() {
    return addSortByInternal('taxableAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTransLineItemSeq() {
    return addSortByInternal('transLineItemSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTransLineItemSeqDesc() {
    return addSortByInternal('transLineItemSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTransSeq() {
    return addSortByInternal('transSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> sortByTransSeqDesc() {
    return addSortByInternal('transSeq', Sort.desc);
  }
}

extension TransactionLineItemTaxModifierQueryWhereSortThenBy on QueryBuilder<
    TransactionLineItemTaxModifier,
    TransactionLineItemTaxModifier,
    QSortThenBy> {
  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByAuthorityId() {
    return addSortByInternal('authorityId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByAuthorityIdDesc() {
    return addSortByInternal('authorityId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByAuthorityName() {
    return addSortByInternal('authorityName', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByAuthorityNameDesc() {
    return addSortByInternal('authorityName', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByAuthorityType() {
    return addSortByInternal('authorityType', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByAuthorityTypeDesc() {
    return addSortByInternal('authorityType', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByOriginalTaxableAmount() {
    return addSortByInternal('originalTaxableAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByOriginalTaxableAmountDesc() {
    return addSortByInternal('originalTaxableAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByRawTaxAmount() {
    return addSortByInternal('rawTaxAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByRawTaxAmountDesc() {
    return addSortByInternal('rawTaxAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByRawTaxPercentage() {
    return addSortByInternal('rawTaxPercentage', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByRawTaxPercentageDesc() {
    return addSortByInternal('rawTaxPercentage', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxAmount() {
    return addSortByInternal('taxAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxAmountDesc() {
    return addSortByInternal('taxAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxGroupId() {
    return addSortByInternal('taxGroupId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxGroupIdDesc() {
    return addSortByInternal('taxGroupId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxLocationId() {
    return addSortByInternal('taxLocationId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxLocationIdDesc() {
    return addSortByInternal('taxLocationId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxOverride() {
    return addSortByInternal('taxOverride', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxOverrideDesc() {
    return addSortByInternal('taxOverride', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxOverrideAmount() {
    return addSortByInternal('taxOverrideAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxOverrideAmountDesc() {
    return addSortByInternal('taxOverrideAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxOverridePercent() {
    return addSortByInternal('taxOverridePercent', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxOverridePercentDesc() {
    return addSortByInternal('taxOverridePercent', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxOverrideReasonCode() {
    return addSortByInternal('taxOverrideReasonCode', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxOverrideReasonCodeDesc() {
    return addSortByInternal('taxOverrideReasonCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxPercent() {
    return addSortByInternal('taxPercent', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxPercentDesc() {
    return addSortByInternal('taxPercent', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxRuleId() {
    return addSortByInternal('taxRuleId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxRuleIdDesc() {
    return addSortByInternal('taxRuleId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxRuleName() {
    return addSortByInternal('taxRuleName', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxRuleNameDesc() {
    return addSortByInternal('taxRuleName', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxableAmount() {
    return addSortByInternal('taxableAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTaxableAmountDesc() {
    return addSortByInternal('taxableAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTransLineItemSeq() {
    return addSortByInternal('transLineItemSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTransLineItemSeqDesc() {
    return addSortByInternal('transLineItemSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTransSeq() {
    return addSortByInternal('transSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QAfterSortBy> thenByTransSeqDesc() {
    return addSortByInternal('transSeq', Sort.desc);
  }
}

extension TransactionLineItemTaxModifierQueryWhereDistinct on QueryBuilder<
    TransactionLineItemTaxModifier, TransactionLineItemTaxModifier, QDistinct> {
  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByAuthorityId({bool caseSensitive = true}) {
    return addDistinctByInternal('authorityId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByAuthorityName({bool caseSensitive = true}) {
    return addDistinctByInternal('authorityName', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByAuthorityType({bool caseSensitive = true}) {
    return addDistinctByInternal('authorityType', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByOriginalTaxableAmount() {
    return addDistinctByInternal('originalTaxableAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByRawTaxAmount() {
    return addDistinctByInternal('rawTaxAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByRawTaxPercentage() {
    return addDistinctByInternal('rawTaxPercentage');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxAmount() {
    return addDistinctByInternal('taxAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxGroupId({bool caseSensitive = true}) {
    return addDistinctByInternal('taxGroupId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxLocationId({bool caseSensitive = true}) {
    return addDistinctByInternal('taxLocationId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxOverride() {
    return addDistinctByInternal('taxOverride');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxOverrideAmount() {
    return addDistinctByInternal('taxOverrideAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxOverridePercent() {
    return addDistinctByInternal('taxOverridePercent');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxOverrideReasonCode({bool caseSensitive = true}) {
    return addDistinctByInternal('taxOverrideReasonCode',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxPercent() {
    return addDistinctByInternal('taxPercent');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxRuleId({bool caseSensitive = true}) {
    return addDistinctByInternal('taxRuleId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxRuleName({bool caseSensitive = true}) {
    return addDistinctByInternal('taxRuleName', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTaxableAmount() {
    return addDistinctByInternal('taxableAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTransLineItemSeq() {
    return addDistinctByInternal('transLineItemSeq');
  }

  QueryBuilder<TransactionLineItemTaxModifier, TransactionLineItemTaxModifier,
      QDistinct> distinctByTransSeq() {
    return addDistinctByInternal('transSeq');
  }
}

extension TransactionLineItemTaxModifierQueryProperty on QueryBuilder<
    TransactionLineItemTaxModifier,
    TransactionLineItemTaxModifier,
    QQueryProperty> {
  QueryBuilder<TransactionLineItemTaxModifier, String, QQueryOperations>
      authorityIdProperty() {
    return addPropertyNameInternal('authorityId');
  }

  QueryBuilder<TransactionLineItemTaxModifier, String, QQueryOperations>
      authorityNameProperty() {
    return addPropertyNameInternal('authorityName');
  }

  QueryBuilder<TransactionLineItemTaxModifier, String, QQueryOperations>
      authorityTypeProperty() {
    return addPropertyNameInternal('authorityType');
  }

  QueryBuilder<TransactionLineItemTaxModifier, int?, QQueryOperations>
      idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TransactionLineItemTaxModifier, double, QQueryOperations>
      originalTaxableAmountProperty() {
    return addPropertyNameInternal('originalTaxableAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, double, QQueryOperations>
      rawTaxAmountProperty() {
    return addPropertyNameInternal('rawTaxAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, double, QQueryOperations>
      rawTaxPercentageProperty() {
    return addPropertyNameInternal('rawTaxPercentage');
  }

  QueryBuilder<TransactionLineItemTaxModifier, double, QQueryOperations>
      taxAmountProperty() {
    return addPropertyNameInternal('taxAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, String, QQueryOperations>
      taxGroupIdProperty() {
    return addPropertyNameInternal('taxGroupId');
  }

  QueryBuilder<TransactionLineItemTaxModifier, String?, QQueryOperations>
      taxLocationIdProperty() {
    return addPropertyNameInternal('taxLocationId');
  }

  QueryBuilder<TransactionLineItemTaxModifier, bool, QQueryOperations>
      taxOverrideProperty() {
    return addPropertyNameInternal('taxOverride');
  }

  QueryBuilder<TransactionLineItemTaxModifier, double?, QQueryOperations>
      taxOverrideAmountProperty() {
    return addPropertyNameInternal('taxOverrideAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, double?, QQueryOperations>
      taxOverridePercentProperty() {
    return addPropertyNameInternal('taxOverridePercent');
  }

  QueryBuilder<TransactionLineItemTaxModifier, String?, QQueryOperations>
      taxOverrideReasonCodeProperty() {
    return addPropertyNameInternal('taxOverrideReasonCode');
  }

  QueryBuilder<TransactionLineItemTaxModifier, double, QQueryOperations>
      taxPercentProperty() {
    return addPropertyNameInternal('taxPercent');
  }

  QueryBuilder<TransactionLineItemTaxModifier, String, QQueryOperations>
      taxRuleIdProperty() {
    return addPropertyNameInternal('taxRuleId');
  }

  QueryBuilder<TransactionLineItemTaxModifier, String, QQueryOperations>
      taxRuleNameProperty() {
    return addPropertyNameInternal('taxRuleName');
  }

  QueryBuilder<TransactionLineItemTaxModifier, double, QQueryOperations>
      taxableAmountProperty() {
    return addPropertyNameInternal('taxableAmount');
  }

  QueryBuilder<TransactionLineItemTaxModifier, int, QQueryOperations>
      transLineItemSeqProperty() {
    return addPropertyNameInternal('transLineItemSeq');
  }

  QueryBuilder<TransactionLineItemTaxModifier, int, QQueryOperations>
      transSeqProperty() {
    return addPropertyNameInternal('transSeq');
  }
}
