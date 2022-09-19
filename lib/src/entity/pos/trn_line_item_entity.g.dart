// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trn_line_item_entity.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_localså

const TransactionLineItemEntitySchema = Schema(
  name: r'TransactionLineItemEntity',
  id: 2685623274292399999,
  properties: {
    r'baseUnitPrice': PropertySchema(
      id: 0,
      name: r'baseUnitPrice',
      type: IsarType.double,
    ),
    r'businessDate': PropertySchema(
      id: 1,
      name: r'businessDate',
      type: IsarType.dateTime,
    ),
    r'category': PropertySchema(
      id: 2,
      name: r'category',
      type: IsarType.string,
    ),
    r'discountAmount': PropertySchema(
      id: 3,
      name: r'discountAmount',
      type: IsarType.double,
    ),
    r'extendedAmount': PropertySchema(
      id: 4,
      name: r'extendedAmount',
      type: IsarType.double,
    ),
    r'grossAmount': PropertySchema(
      id: 5,
      name: r'grossAmount',
      type: IsarType.double,
    ),
    r'isVoid': PropertySchema(
      id: 6,
      name: r'isVoid',
      type: IsarType.bool,
    ),
    r'itemDescription': PropertySchema(
      id: 7,
      name: r'itemDescription',
      type: IsarType.string,
    ),
    r'itemId': PropertySchema(
      id: 8,
      name: r'itemId',
      type: IsarType.string,
    ),
    r'itemIdEntryMethod': PropertySchema(
      id: 9,
      name: r'itemIdEntryMethod',
      type: IsarType.string,
    ),
    r'lineItemSeq': PropertySchema(
      id: 10,
      name: r'lineItemSeq',
      type: IsarType.long,
    ),
    r'lineModifiers': PropertySchema(
      id: 11,
      name: r'lineModifiers',
      type: IsarType.objectList,
      target: r'TransactionLineItemModifierEntity',
    ),
    r'netAmount': PropertySchema(
      id: 12,
      name: r'netAmount',
      type: IsarType.double,
    ),
    r'nonExchangeableFlag': PropertySchema(
      id: 13,
      name: r'nonExchangeableFlag',
      type: IsarType.bool,
    ),
    r'nonReturnableFlag': PropertySchema(
      id: 14,
      name: r'nonReturnableFlag',
      type: IsarType.bool,
    ),
    r'originalBusinessDate': PropertySchema(
      id: 15,
      name: r'originalBusinessDate',
      type: IsarType.dateTime,
    ),
    r'originalLineItemSeq': PropertySchema(
      id: 16,
      name: r'originalLineItemSeq',
      type: IsarType.long,
    ),
    r'originalPosId': PropertySchema(
      id: 17,
      name: r'originalPosId',
      type: IsarType.long,
    ),
    r'originalTransSeq': PropertySchema(
      id: 18,
      name: r'originalTransSeq',
      type: IsarType.long,
    ),
    r'posId': PropertySchema(
      id: 19,
      name: r'posId',
      type: IsarType.long,
    ),
    r'priceEntryMethod': PropertySchema(
      id: 20,
      name: r'priceEntryMethod',
      type: IsarType.string,
    ),
    r'priceOverride': PropertySchema(
      id: 21,
      name: r'priceOverride',
      type: IsarType.bool,
    ),
    r'priceOverrideAmount': PropertySchema(
      id: 22,
      name: r'priceOverrideAmount',
      type: IsarType.double,
    ),
    r'priceOverrideReason': PropertySchema(
      id: 23,
      name: r'priceOverrideReason',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 24,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'returnComment': PropertySchema(
      id: 25,
      name: r'returnComment',
      type: IsarType.string,
    ),
    r'returnFlag': PropertySchema(
      id: 26,
      name: r'returnFlag',
      type: IsarType.bool,
    ),
    r'returnReasonCode': PropertySchema(
      id: 27,
      name: r'returnReasonCode',
      type: IsarType.string,
    ),
    r'returnTypeCode': PropertySchema(
      id: 28,
      name: r'returnTypeCode',
      type: IsarType.string,
    ),
    r'returnedQuantity': PropertySchema(
      id: 29,
      name: r'returnedQuantity',
      type: IsarType.double,
    ),
    r'serialNumber': PropertySchema(
      id: 30,
      name: r'serialNumber',
      type: IsarType.string,
    ),
    r'shippingWeight': PropertySchema(
      id: 31,
      name: r'shippingWeight',
      type: IsarType.double,
    ),
    r'storeId': PropertySchema(
      id: 32,
      name: r'storeId',
      type: IsarType.long,
    ),
    r'taxAmount': PropertySchema(
      id: 33,
      name: r'taxAmount',
      type: IsarType.double,
    ),
    r'taxModifiers': PropertySchema(
      id: 34,
      name: r'taxModifiers',
      type: IsarType.objectList,
      target: r'TransactionLineItemTaxModifier',
    ),
    r'transSeq': PropertySchema(
      id: 35,
      name: r'transSeq',
      type: IsarType.long,
    ),
    r'unitCost': PropertySchema(
      id: 36,
      name: r'unitCost',
      type: IsarType.double,
    ),
    r'unitPrice': PropertySchema(
      id: 37,
      name: r'unitPrice',
      type: IsarType.double,
    ),
    r'uom': PropertySchema(
      id: 38,
      name: r'uom',
      type: IsarType.string,
    ),
    r'vendorId': PropertySchema(
      id: 39,
      name: r'vendorId',
      type: IsarType.string,
    )
  },
  estimateSize: _transactionLineItemEntityEstimateSize,
  serializeNative: _transactionLineItemEntitySerializeNative,
  deserializeNative: _transactionLineItemEntityDeserializeNative,
  deserializePropNative: _transactionLineItemEntityDeserializePropNative,
  serializeWeb: _transactionLineItemEntitySerializeWeb,
  deserializeWeb: _transactionLineItemEntityDeserializeWeb,
  deserializePropWeb: _transactionLineItemEntityDeserializePropWeb,
);

int _transactionLineItemEntityEstimateSize(
  TransactionLineItemEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.category;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemIdEntryMethod;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.lineModifiers.length * 3;
  {
    final offsets = allOffsets[TransactionLineItemModifierEntity]!;
    for (var i = 0; i < object.lineModifiers.length; i++) {
      final value = object.lineModifiers[i];
      bytesCount += TransactionLineItemModifierEntitySchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  {
    final value = object.priceEntryMethod;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.priceOverrideReason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.returnComment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.returnReasonCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.returnTypeCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.serialNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.taxModifiers.length * 3;
  {
    final offsets = allOffsets[TransactionLineItemTaxModifier]!;
    for (var i = 0; i < object.taxModifiers.length; i++) {
      final value = object.taxModifiers[i];
      bytesCount += TransactionLineItemTaxModifierSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  {
    final value = object.uom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.vendorId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

int _transactionLineItemEntitySerializeNative(
  TransactionLineItemEntity object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.baseUnitPrice);
  writer.writeDateTime(offsets[1], object.businessDate);
  writer.writeString(offsets[2], object.category);
  writer.writeDouble(offsets[3], object.discountAmount);
  writer.writeDouble(offsets[4], object.extendedAmount);
  writer.writeDouble(offsets[5], object.grossAmount);
  writer.writeBool(offsets[6], object.isVoid);
  writer.writeString(offsets[7], object.itemDescription);
  writer.writeString(offsets[8], object.itemId);
  writer.writeString(offsets[9], object.itemIdEntryMethod);
  writer.writeLong(offsets[10], object.lineItemSeq);
  writer.writeObjectList<TransactionLineItemModifierEntity>(
    offsets[11],
    allOffsets,
    TransactionLineItemModifierEntitySchema.serializeNative,
    object.lineModifiers,
  );
  writer.writeDouble(offsets[12], object.netAmount);
  writer.writeBool(offsets[13], object.nonExchangeableFlag);
  writer.writeBool(offsets[14], object.nonReturnableFlag);
  writer.writeDateTime(offsets[15], object.originalBusinessDate);
  writer.writeLong(offsets[16], object.originalLineItemSeq);
  writer.writeLong(offsets[17], object.originalPosId);
  writer.writeLong(offsets[18], object.originalTransSeq);
  writer.writeLong(offsets[19], object.posId);
  writer.writeString(offsets[20], object.priceEntryMethod);
  writer.writeBool(offsets[21], object.priceOverride);
  writer.writeDouble(offsets[22], object.priceOverrideAmount);
  writer.writeString(offsets[23], object.priceOverrideReason);
  writer.writeDouble(offsets[24], object.quantity);
  writer.writeString(offsets[25], object.returnComment);
  writer.writeBool(offsets[26], object.returnFlag);
  writer.writeString(offsets[27], object.returnReasonCode);
  writer.writeString(offsets[28], object.returnTypeCode);
  writer.writeDouble(offsets[29], object.returnedQuantity);
  writer.writeString(offsets[30], object.serialNumber);
  writer.writeDouble(offsets[31], object.shippingWeight);
  writer.writeLong(offsets[32], object.storeId);
  writer.writeDouble(offsets[33], object.taxAmount);
  writer.writeObjectList<TransactionLineItemTaxModifier>(
    offsets[34],
    allOffsets,
    TransactionLineItemTaxModifierSchema.serializeNative,
    object.taxModifiers,
  );
  writer.writeLong(offsets[35], object.transSeq);
  writer.writeDouble(offsets[36], object.unitCost);
  writer.writeDouble(offsets[37], object.unitPrice);
  writer.writeString(offsets[38], object.uom);
  writer.writeString(offsets[39], object.vendorId);
  return writer.usedBytes;
}

TransactionLineItemEntity _transactionLineItemEntityDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TransactionLineItemEntity(
    baseUnitPrice: reader.readDoubleOrNull(offsets[0]),
    businessDate: reader.readDateTimeOrNull(offsets[1]),
    category: reader.readStringOrNull(offsets[2]),
    discountAmount: reader.readDoubleOrNull(offsets[3]),
    extendedAmount: reader.readDoubleOrNull(offsets[4]),
    grossAmount: reader.readDoubleOrNull(offsets[5]),
    isVoid: reader.readBoolOrNull(offsets[6]) ?? false,
    itemDescription: reader.readStringOrNull(offsets[7]),
    itemId: reader.readStringOrNull(offsets[8]),
    itemIdEntryMethod: reader.readStringOrNull(offsets[9]),
    lineItemSeq: reader.readLongOrNull(offsets[10]),
    lineModifiers: reader.readObjectList<TransactionLineItemModifierEntity>(
          offsets[11],
          TransactionLineItemModifierEntitySchema.deserializeNative,
          allOffsets,
          TransactionLineItemModifierEntity(),
        ) ??
        const [],
    netAmount: reader.readDoubleOrNull(offsets[12]),
    nonExchangeableFlag: reader.readBoolOrNull(offsets[13]) ?? false,
    nonReturnableFlag: reader.readBoolOrNull(offsets[14]) ?? false,
    originalBusinessDate: reader.readDateTimeOrNull(offsets[15]),
    originalLineItemSeq: reader.readLongOrNull(offsets[16]),
    originalPosId: reader.readLongOrNull(offsets[17]),
    originalTransSeq: reader.readLongOrNull(offsets[18]),
    posId: reader.readLongOrNull(offsets[19]),
    priceEntryMethod: reader.readStringOrNull(offsets[20]),
    priceOverride: reader.readBoolOrNull(offsets[21]) ?? false,
    priceOverrideAmount: reader.readDoubleOrNull(offsets[22]),
    priceOverrideReason: reader.readStringOrNull(offsets[23]),
    quantity: reader.readDoubleOrNull(offsets[24]),
    returnComment: reader.readStringOrNull(offsets[25]),
    returnFlag: reader.readBoolOrNull(offsets[26]) ?? false,
    returnReasonCode: reader.readStringOrNull(offsets[27]),
    returnTypeCode: reader.readStringOrNull(offsets[28]),
    returnedQuantity: reader.readDoubleOrNull(offsets[29]),
    serialNumber: reader.readStringOrNull(offsets[30]),
    shippingWeight: reader.readDoubleOrNull(offsets[31]),
    storeId: reader.readLongOrNull(offsets[32]),
    taxAmount: reader.readDoubleOrNull(offsets[33]),
    taxModifiers: reader.readObjectList<TransactionLineItemTaxModifier>(
          offsets[34],
          TransactionLineItemTaxModifierSchema.deserializeNative,
          allOffsets,
          TransactionLineItemTaxModifier(),
        ) ??
        const [],
    transSeq: reader.readLongOrNull(offsets[35]),
    unitCost: reader.readDoubleOrNull(offsets[36]),
    unitPrice: reader.readDoubleOrNull(offsets[37]),
    uom: reader.readStringOrNull(offsets[38]),
    vendorId: reader.readStringOrNull(offsets[39]),
  );
  return object;
}

P _transactionLineItemEntityDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readObjectList<TransactionLineItemModifierEntity>(
            offset,
            TransactionLineItemModifierEntitySchema.deserializeNative,
            allOffsets,
            TransactionLineItemModifierEntity(),
          ) ??
          const []) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 14:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    case 18:
      return (reader.readLongOrNull(offset)) as P;
    case 19:
      return (reader.readLongOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readDoubleOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readDoubleOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readDoubleOrNull(offset)) as P;
    case 32:
      return (reader.readLongOrNull(offset)) as P;
    case 33:
      return (reader.readDoubleOrNull(offset)) as P;
    case 34:
      return (reader.readObjectList<TransactionLineItemTaxModifier>(
            offset,
            TransactionLineItemTaxModifierSchema.deserializeNative,
            allOffsets,
            TransactionLineItemTaxModifier(),
          ) ??
          const []) as P;
    case 35:
      return (reader.readLongOrNull(offset)) as P;
    case 36:
      return (reader.readDoubleOrNull(offset)) as P;
    case 37:
      return (reader.readDoubleOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _transactionLineItemEntitySerializeWeb(
    IsarCollection<TransactionLineItemEntity> collection,
    TransactionLineItemEntity object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

TransactionLineItemEntity _transactionLineItemEntityDeserializeWeb(
    IsarCollection<TransactionLineItemEntity> collection, Object jsObj) {
  /*final object = TransactionLineItemEntity(baseUnitPrice: IsarNative.jsObjectGet(jsObj, r'baseUnitPrice') ,businessDate: IsarNative.jsObjectGet(jsObj, r'businessDate') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'businessDate') as int, isUtc: true).toLocal() : null,category: IsarNative.jsObjectGet(jsObj, r'category') ,discountAmount: IsarNative.jsObjectGet(jsObj, r'discountAmount') ,extendedAmount: IsarNative.jsObjectGet(jsObj, r'extendedAmount') ,grossAmount: IsarNative.jsObjectGet(jsObj, r'grossAmount') ,isVoid: IsarNative.jsObjectGet(jsObj, r'isVoid') ?? false,itemDescription: IsarNative.jsObjectGet(jsObj, r'itemDescription') ,itemId: IsarNative.jsObjectGet(jsObj, r'itemId') ,itemIdEntryMethod: IsarNative.jsObjectGet(jsObj, r'itemIdEntryMethod') ,lineItemSeq: IsarNative.jsObjectGet(jsObj, r'lineItemSeq') ,lineModifiers: (IsarNative.jsObjectGet(jsObj, r'lineModifiers') as List?)?.map((e) => e ?? TransactionLineItemModifierEntity()).toList().cast<TransactionLineItemModifierEntity>() ?? [],netAmount: IsarNative.jsObjectGet(jsObj, r'netAmount') ,nonExchangeableFlag: IsarNative.jsObjectGet(jsObj, r'nonExchangeableFlag') ?? false,nonReturnableFlag: IsarNative.jsObjectGet(jsObj, r'nonReturnableFlag') ?? false,originalBusinessDate: IsarNative.jsObjectGet(jsObj, r'originalBusinessDate') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'originalBusinessDate') as int, isUtc: true).toLocal() : null,originalLineItemSeq: IsarNative.jsObjectGet(jsObj, r'originalLineItemSeq') ,originalPosId: IsarNative.jsObjectGet(jsObj, r'originalPosId') ,originalTransSeq: IsarNative.jsObjectGet(jsObj, r'originalTransSeq') ,posId: IsarNative.jsObjectGet(jsObj, r'posId') ,priceEntryMethod: IsarNative.jsObjectGet(jsObj, r'priceEntryMethod') ,priceOverride: IsarNative.jsObjectGet(jsObj, r'priceOverride') ?? false,priceOverrideAmount: IsarNative.jsObjectGet(jsObj, r'priceOverrideAmount') ,priceOverrideReason: IsarNative.jsObjectGet(jsObj, r'priceOverrideReason') ,quantity: IsarNative.jsObjectGet(jsObj, r'quantity') ,returnComment: IsarNative.jsObjectGet(jsObj, r'returnComment') ,returnFlag: IsarNative.jsObjectGet(jsObj, r'returnFlag') ?? false,returnReasonCode: IsarNative.jsObjectGet(jsObj, r'returnReasonCode') ,returnTypeCode: IsarNative.jsObjectGet(jsObj, r'returnTypeCode') ,returnedQuantity: IsarNative.jsObjectGet(jsObj, r'returnedQuantity') ,serialNumber: IsarNative.jsObjectGet(jsObj, r'serialNumber') ,shippingWeight: IsarNative.jsObjectGet(jsObj, r'shippingWeight') ,storeId: IsarNative.jsObjectGet(jsObj, r'storeId') ,taxAmount: IsarNative.jsObjectGet(jsObj, r'taxAmount') ,taxModifiers: (IsarNative.jsObjectGet(jsObj, r'taxModifiers') as List?)?.map((e) => e ?? TransactionLineItemTaxModifier()).toList().cast<TransactionLineItemTaxModifier>() ?? [],transSeq: IsarNative.jsObjectGet(jsObj, r'transSeq') ,unitCost: IsarNative.jsObjectGet(jsObj, r'unitCost') ,unitPrice: IsarNative.jsObjectGet(jsObj, r'unitPrice') ,uom: IsarNative.jsObjectGet(jsObj, r'uom') ,vendorId: IsarNative.jsObjectGet(jsObj, r'vendorId') ,);*/
  //return object;
  throw UnimplementedError();
}

P _transactionLineItemEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

extension TransactionLineItemEntityQueryFilter on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QFilterCondition> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> baseUnitPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'baseUnitPrice',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> baseUnitPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'baseUnitPrice',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> baseUnitPriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseUnitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> baseUnitPriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'baseUnitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> baseUnitPriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'baseUnitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> baseUnitPriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'baseUnitPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'businessDate',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'businessDate',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'businessDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'businessDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'businessDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'discountAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'discountAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'extendedAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'extendedAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extendedAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'extendedAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'extendedAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'extendedAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grossAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grossAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grossAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grossAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grossAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grossAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> isVoidEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isVoid',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemDescription',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemDescription',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemId',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemIdEntryMethod',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemIdEntryMethod',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemIdEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemIdEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemIdEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemIdEntryMethod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemIdEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemIdEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdEntryMethodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemIdEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdEntryMethodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemIdEntryMethod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemIdEntryMethod',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemIdEntryMethod',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lineItemSeq',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lineItemSeq',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lineItemSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lineItemSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lineItemSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lineItemSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineModifiersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineModifiers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineModifiersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineModifiers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineModifiersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineModifiers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineModifiersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineModifiers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineModifiersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineModifiers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineModifiersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineModifiers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'netAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'netAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'netAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'netAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'netAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'netAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> nonExchangeableFlagEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nonExchangeableFlag',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> nonReturnableFlagEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nonReturnableFlag',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'originalBusinessDate',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'originalBusinessDate',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalBusinessDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalBusinessDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalBusinessDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalBusinessDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'originalLineItemSeq',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'originalLineItemSeq',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalLineItemSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalLineItemSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalLineItemSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalLineItemSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'originalPosId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'originalPosId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalPosId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalPosId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalPosId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalPosId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'originalTransSeq',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'originalTransSeq',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalTransSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalTransSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalTransSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalTransSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'posId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'posId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'posId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'posId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'posId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceEntryMethod',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceEntryMethod',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceEntryMethod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'priceEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'priceEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceEntryMethodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priceEntryMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceEntryMethodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priceEntryMethod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceEntryMethod',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priceEntryMethod',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceOverride',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceOverrideAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceOverrideAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceOverrideAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceOverrideAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceOverrideAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceOverrideAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceOverrideReason',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceOverrideReason',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceOverrideReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceOverrideReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceOverrideReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceOverrideReason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'priceOverrideReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'priceOverrideReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceOverrideReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priceOverrideReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceOverrideReasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priceOverrideReason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceOverrideReason',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priceOverrideReason',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'returnComment',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'returnComment',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'returnComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'returnComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'returnComment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'returnComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'returnComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnCommentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'returnComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnCommentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'returnComment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnComment',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'returnComment',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnFlagEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnFlag',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'returnReasonCode',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'returnReasonCode',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnReasonCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'returnReasonCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'returnReasonCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'returnReasonCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'returnReasonCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'returnReasonCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnReasonCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'returnReasonCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnReasonCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'returnReasonCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnReasonCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'returnReasonCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'returnTypeCode',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'returnTypeCode',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'returnTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'returnTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'returnTypeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'returnTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'returnTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnTypeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'returnTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnTypeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'returnTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'returnTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'returnedQuantity',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'returnedQuantity',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnedQuantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'returnedQuantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'returnedQuantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'returnedQuantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serialNumber',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serialNumber',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serialNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      serialNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      serialNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serialNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serialNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serialNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shippingWeight',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shippingWeight',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shippingWeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shippingWeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shippingWeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shippingWeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxAmount',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxModifiersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taxModifiers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxModifiersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taxModifiers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxModifiersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taxModifiers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxModifiersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taxModifiers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxModifiersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taxModifiers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxModifiersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taxModifiers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transSeq',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transSeq',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitCostIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unitCost',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitCostIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unitCost',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitCostEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitCostGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitCostLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitCostBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitCost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unitPrice',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unitPrice',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uom',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uom',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      uomContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      uomMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uom',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uom',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vendorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      vendorIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      vendorIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vendorId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vendorId',
        value: '',
      ));
    });
  }
}

extension TransactionLineItemEntityQueryObject on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QFilterCondition> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      lineModifiersElement(FilterQuery<TransactionLineItemModifierEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lineModifiers');
    });
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      taxModifiersElement(FilterQuery<TransactionLineItemTaxModifier> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'taxModifiers');
    });
  }
}
