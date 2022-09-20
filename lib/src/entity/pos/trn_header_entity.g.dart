// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trn_header_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetTransactionHeaderEntityCollection on Isar {
  IsarCollection<TransactionHeaderEntity> get transactionHeaderEntitys =>
      this.collection();
}

const TransactionHeaderEntitySchema = CollectionSchema(
  name: r'TransactionHeaderEntity',
  id: -2037456124358543318,
  properties: {
    r'associateId': PropertySchema(
      id: 0,
      name: r'associateId',
      type: IsarType.string,
    ),
    r'associateName': PropertySchema(
      id: 1,
      name: r'associateName',
      type: IsarType.string,
    ),
    r'beginDatetime': PropertySchema(
      id: 2,
      name: r'beginDatetime',
      type: IsarType.dateTime,
    ),
    r'billingAddress': PropertySchema(
      id: 3,
      name: r'billingAddress',
      type: IsarType.object,
      target: r'Address',
    ),
    r'businessDate': PropertySchema(
      id: 4,
      name: r'businessDate',
      type: IsarType.dateTime,
    ),
    r'createTime': PropertySchema(
      id: 5,
      name: r'createTime',
      type: IsarType.dateTime,
    ),
    r'customerId': PropertySchema(
      id: 6,
      name: r'customerId',
      type: IsarType.string,
    ),
    r'customerName': PropertySchema(
      id: 7,
      name: r'customerName',
      type: IsarType.string,
    ),
    r'customerPhone': PropertySchema(
      id: 8,
      name: r'customerPhone',
      type: IsarType.string,
    ),
    r'discountTotal': PropertySchema(
      id: 9,
      name: r'discountTotal',
      type: IsarType.double,
    ),
    r'endDateTime': PropertySchema(
      id: 10,
      name: r'endDateTime',
      type: IsarType.dateTime,
    ),
    r'lastChangedAt': PropertySchema(
      id: 11,
      name: r'lastChangedAt',
      type: IsarType.dateTime,
    ),
    r'lineItems': PropertySchema(
      id: 12,
      name: r'lineItems',
      type: IsarType.objectList,
      target: r'TransactionLineItemEntity',
    ),
    r'paymentLineItems': PropertySchema(
      id: 13,
      name: r'paymentLineItems',
      type: IsarType.objectList,
      target: r'TransactionPaymentLineItemEntity',
    ),
    r'roundTotal': PropertySchema(
      id: 14,
      name: r'roundTotal',
      type: IsarType.double,
    ),
    r'shippingAddress': PropertySchema(
      id: 15,
      name: r'shippingAddress',
      type: IsarType.object,
      target: r'Address',
    ),
    r'status': PropertySchema(
      id: 16,
      name: r'status',
      type: IsarType.string,
    ),
    r'storeId': PropertySchema(
      id: 17,
      name: r'storeId',
      type: IsarType.long,
    ),
    r'subtotal': PropertySchema(
      id: 18,
      name: r'subtotal',
      type: IsarType.double,
    ),
    r'syncState': PropertySchema(
      id: 19,
      name: r'syncState',
      type: IsarType.long,
    ),
    r'taxTotal': PropertySchema(
      id: 20,
      name: r'taxTotal',
      type: IsarType.double,
    ),
    r'total': PropertySchema(
      id: 21,
      name: r'total',
      type: IsarType.double,
    ),
    r'transactionType': PropertySchema(
      id: 22,
      name: r'transactionType',
      type: IsarType.string,
    ),
    r'updateTime': PropertySchema(
      id: 23,
      name: r'updateTime',
      type: IsarType.dateTime,
    ),
    r'version': PropertySchema(
      id: 24,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _transactionHeaderEntityEstimateSize,
  serializeNative: _transactionHeaderEntitySerializeNative,
  deserializeNative: _transactionHeaderEntityDeserializeNative,
  deserializePropNative: _transactionHeaderEntityDeserializePropNative,
  serializeWeb: _transactionHeaderEntitySerializeWeb,
  deserializeWeb: _transactionHeaderEntityDeserializeWeb,
  deserializePropWeb: _transactionHeaderEntityDeserializePropWeb,
  idName: r'transId',
  indexes: {
    r'customerId': IndexSchema(
      id: 1498639901530368639,
      name: r'customerId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'customerId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'customerPhone': IndexSchema(
      id: -8632026876438867685,
      name: r'customerPhone',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'customerPhone',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'Address': AddressSchema,
    r'TransactionLineItemEntity': TransactionLineItemEntitySchema,
    r'TransactionLineItemModifierEntity':
        TransactionLineItemModifierEntitySchema,
    r'TransactionLineItemTaxModifier': TransactionLineItemTaxModifierSchema,
    r'TransactionPaymentLineItemEntity': TransactionPaymentLineItemEntitySchema
  },
  getId: _transactionHeaderEntityGetId,
  getLinks: _transactionHeaderEntityGetLinks,
  attach: _transactionHeaderEntityAttach,
  version: '3.0.0-dev.14',
);

int _transactionHeaderEntityEstimateSize(
  TransactionHeaderEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.associateId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.associateName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.billingAddress;
    if (value != null) {
      bytesCount += 3 +
          AddressSchema.estimateSize(value, allOffsets[Address]!, allOffsets);
    }
  }
  {
    final value = object.customerId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerPhone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.lineItems.length * 3;
  {
    final offsets = allOffsets[TransactionLineItemEntity]!;
    for (var i = 0; i < object.lineItems.length; i++) {
      final value = object.lineItems[i];
      bytesCount += TransactionLineItemEntitySchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.paymentLineItems.length * 3;
  {
    final offsets = allOffsets[TransactionPaymentLineItemEntity]!;
    for (var i = 0; i < object.paymentLineItems.length; i++) {
      final value = object.paymentLineItems[i];
      bytesCount += TransactionPaymentLineItemEntitySchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  {
    final value = object.shippingAddress;
    if (value != null) {
      bytesCount += 3 +
          AddressSchema.estimateSize(value, allOffsets[Address]!, allOffsets);
    }
  }
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.transactionType.length * 3;
  return bytesCount;
}

int _transactionHeaderEntitySerializeNative(
  TransactionHeaderEntity object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.associateId);
  writer.writeString(offsets[1], object.associateName);
  writer.writeDateTime(offsets[2], object.beginDatetime);
  writer.writeObject<Address>(
    offsets[3],
    allOffsets,
    AddressSchema.serializeNative,
    object.billingAddress,
  );
  writer.writeDateTime(offsets[4], object.businessDate);
  writer.writeDateTime(offsets[5], object.createTime);
  writer.writeString(offsets[6], object.customerId);
  writer.writeString(offsets[7], object.customerName);
  writer.writeString(offsets[8], object.customerPhone);
  writer.writeDouble(offsets[9], object.discountTotal);
  writer.writeDateTime(offsets[10], object.endDateTime);
  writer.writeDateTime(offsets[11], object.lastChangedAt);
  writer.writeObjectList<TransactionLineItemEntity>(
    offsets[12],
    allOffsets,
    TransactionLineItemEntitySchema.serializeNative,
    object.lineItems,
  );
  writer.writeObjectList<TransactionPaymentLineItemEntity>(
    offsets[13],
    allOffsets,
    TransactionPaymentLineItemEntitySchema.serializeNative,
    object.paymentLineItems,
  );
  writer.writeDouble(offsets[14], object.roundTotal);
  writer.writeObject<Address>(
    offsets[15],
    allOffsets,
    AddressSchema.serializeNative,
    object.shippingAddress,
  );
  writer.writeString(offsets[16], object.status);
  writer.writeLong(offsets[17], object.storeId);
  writer.writeDouble(offsets[18], object.subtotal);
  writer.writeLong(offsets[19], object.syncState);
  writer.writeDouble(offsets[20], object.taxTotal);
  writer.writeDouble(offsets[21], object.total);
  writer.writeString(offsets[22], object.transactionType);
  writer.writeDateTime(offsets[23], object.updateTime);
  writer.writeLong(offsets[24], object.version);
  return writer.usedBytes;
}

TransactionHeaderEntity _transactionHeaderEntityDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TransactionHeaderEntity(
    associateId: reader.readStringOrNull(offsets[0]),
    associateName: reader.readStringOrNull(offsets[1]),
    beginDatetime: reader.readDateTime(offsets[2]),
    billingAddress: reader.readObjectOrNull<Address>(
      offsets[3],
      AddressSchema.deserializeNative,
      allOffsets,
    ),
    businessDate: reader.readDateTime(offsets[4]),
    createTime: reader.readDateTime(offsets[5]),
    customerId: reader.readStringOrNull(offsets[6]),
    customerName: reader.readStringOrNull(offsets[7]),
    customerPhone: reader.readStringOrNull(offsets[8]),
    discountTotal: reader.readDouble(offsets[9]),
    endDateTime: reader.readDateTimeOrNull(offsets[10]),
    lastChangedAt: reader.readDateTimeOrNull(offsets[11]),
    lineItems: reader.readObjectList<TransactionLineItemEntity>(
          offsets[12],
          TransactionLineItemEntitySchema.deserializeNative,
          allOffsets,
          TransactionLineItemEntity(),
        ) ??
        const [],
    paymentLineItems: reader.readObjectList<TransactionPaymentLineItemEntity>(
          offsets[13],
          TransactionPaymentLineItemEntitySchema.deserializeNative,
          allOffsets,
          TransactionPaymentLineItemEntity(),
        ) ??
        const [],
    roundTotal: reader.readDouble(offsets[14]),
    shippingAddress: reader.readObjectOrNull<Address>(
      offsets[15],
      AddressSchema.deserializeNative,
      allOffsets,
    ),
    status: reader.readString(offsets[16]),
    storeId: reader.readLong(offsets[17]),
    subtotal: reader.readDouble(offsets[18]),
    syncState: reader.readLongOrNull(offsets[19]) ?? 100,
    taxTotal: reader.readDouble(offsets[20]),
    total: reader.readDouble(offsets[21]),
    transId: id,
    transactionType: reader.readString(offsets[22]),
    updateTime: reader.readDateTimeOrNull(offsets[23]),
    version: reader.readLongOrNull(offsets[24]) ?? 1,
  );
  return object;
}

P _transactionHeaderEntityDeserializePropNative<P>(
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
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<Address>(
        offset,
        AddressSchema.deserializeNative,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readObjectList<TransactionLineItemEntity>(
            offset,
            TransactionLineItemEntitySchema.deserializeNative,
            allOffsets,
            TransactionLineItemEntity(),
          ) ??
          const []) as P;
    case 13:
      return (reader.readObjectList<TransactionPaymentLineItemEntity>(
            offset,
            TransactionPaymentLineItemEntitySchema.deserializeNative,
            allOffsets,
            TransactionPaymentLineItemEntity(),
          ) ??
          const []) as P;
    case 14:
      return (reader.readDouble(offset)) as P;
    case 15:
      return (reader.readObjectOrNull<Address>(
        offset,
        AddressSchema.deserializeNative,
        allOffsets,
      )) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    case 18:
      return (reader.readDouble(offset)) as P;
    case 19:
      return (reader.readLongOrNull(offset) ?? 100) as P;
    case 20:
      return (reader.readDouble(offset)) as P;
    case 21:
      return (reader.readDouble(offset)) as P;
    case 22:
      return (reader.readString(offset)) as P;
    case 23:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 24:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _transactionHeaderEntitySerializeWeb(
    IsarCollection<TransactionHeaderEntity> collection,
    TransactionHeaderEntity object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

TransactionHeaderEntity _transactionHeaderEntityDeserializeWeb(
    IsarCollection<TransactionHeaderEntity> collection, Object jsObj) {
  /*final object = TransactionHeaderEntity(associateId: IsarNative.jsObjectGet(jsObj, r'associateId') ,associateName: IsarNative.jsObjectGet(jsObj, r'associateName') ,beginDatetime: IsarNative.jsObjectGet(jsObj, r'beginDatetime') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'beginDatetime') as int, isUtc: true).toLocal() : DateTime.fromMillisecondsSinceEpoch(0),billingAddress: IsarNative.jsObjectGet(jsObj, r'billingAddress') ,businessDate: IsarNative.jsObjectGet(jsObj, r'businessDate') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'businessDate') as int, isUtc: true).toLocal() : DateTime.fromMillisecondsSinceEpoch(0),createTime: IsarNative.jsObjectGet(jsObj, r'createTime') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'createTime') as int, isUtc: true).toLocal() : DateTime.fromMillisecondsSinceEpoch(0),customerId: IsarNative.jsObjectGet(jsObj, r'customerId') ,customerName: IsarNative.jsObjectGet(jsObj, r'customerName') ,customerPhone: IsarNative.jsObjectGet(jsObj, r'customerPhone') ,discountTotal: IsarNative.jsObjectGet(jsObj, r'discountTotal') ?? double.negativeInfinity,endDateTime: IsarNative.jsObjectGet(jsObj, r'endDateTime') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'endDateTime') as int, isUtc: true).toLocal() : null,lastChangedAt: IsarNative.jsObjectGet(jsObj, r'lastChangedAt') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'lastChangedAt') as int, isUtc: true).toLocal() : null,lineItems: (IsarNative.jsObjectGet(jsObj, r'lineItems') as List?)?.map((e) => e ?? TransactionLineItemEntity()).toList().cast<TransactionLineItemEntity>() ?? [],paymentLineItems: (IsarNative.jsObjectGet(jsObj, r'paymentLineItems') as List?)?.map((e) => e ?? TransactionPaymentLineItemEntity()).toList().cast<TransactionPaymentLineItemEntity>() ?? [],roundTotal: IsarNative.jsObjectGet(jsObj, r'roundTotal') ?? double.negativeInfinity,shippingAddress: IsarNative.jsObjectGet(jsObj, r'shippingAddress') ,status: IsarNative.jsObjectGet(jsObj, r'status') ?? '',storeId: IsarNative.jsObjectGet(jsObj, r'storeId') ?? (double.negativeInfinity as int),subtotal: IsarNative.jsObjectGet(jsObj, r'subtotal') ?? double.negativeInfinity,syncState: IsarNative.jsObjectGet(jsObj, r'syncState') ?? (double.negativeInfinity as int),taxTotal: IsarNative.jsObjectGet(jsObj, r'taxTotal') ?? double.negativeInfinity,total: IsarNative.jsObjectGet(jsObj, r'total') ?? double.negativeInfinity,transId: IsarNative.jsObjectGet(jsObj, r'transId') ?? (double.negativeInfinity as int),transactionType: IsarNative.jsObjectGet(jsObj, r'transactionType') ?? '',updateTime: IsarNative.jsObjectGet(jsObj, r'updateTime') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'updateTime') as int, isUtc: true).toLocal() : null,version: IsarNative.jsObjectGet(jsObj, r'version') ?? (double.negativeInfinity as int),);*/
  //return object;
  throw UnimplementedError();
}

P _transactionHeaderEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _transactionHeaderEntityGetId(TransactionHeaderEntity object) {
  return object.transId;
}

List<IsarLinkBase<dynamic>> _transactionHeaderEntityGetLinks(
    TransactionHeaderEntity object) {
  return [];
}

void _transactionHeaderEntityAttach(
    IsarCollection<dynamic> col, Id id, TransactionHeaderEntity object) {}

extension TransactionHeaderEntityQueryWhereSort
    on QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QWhere> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterWhere>
      anyTransId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TransactionHeaderEntityQueryWhere on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QWhereClause> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> transIdEqualTo(int transId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: transId,
        upper: transId,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> transIdNotEqualTo(int transId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: transId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: transId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: transId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: transId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterWhereClause>
      transIdGreaterThan(int transId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: transId, includeLower: include),
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> transIdLessThan(int transId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: transId, includeUpper: include),
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> transIdBetween(
    int lowerTransId,
    int upperTransId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerTransId,
        includeLower: includeLower,
        upper: upperTransId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'customerId',
        value: [null],
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'customerId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerIdEqualTo(String? customerId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'customerId',
        value: [customerId],
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerIdNotEqualTo(String? customerId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerId',
              lower: [],
              upper: [customerId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerId',
              lower: [customerId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerId',
              lower: [customerId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerId',
              lower: [],
              upper: [customerId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'customerPhone',
        value: [null],
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerPhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'customerPhone',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerPhoneEqualTo(String? customerPhone) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'customerPhone',
        value: [customerPhone],
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterWhereClause> customerPhoneNotEqualTo(String? customerPhone) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerPhone',
              lower: [],
              upper: [customerPhone],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerPhone',
              lower: [customerPhone],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerPhone',
              lower: [customerPhone],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerPhone',
              lower: [],
              upper: [customerPhone],
              includeUpper: false,
            ));
      }
    });
  }
}

extension TransactionHeaderEntityQueryFilter on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QFilterCondition> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'associateId',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'associateId',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'associateId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      associateIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      associateIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'associateId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associateId',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'associateId',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'associateName',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'associateName',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'associateName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      associateNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      associateNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'associateName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associateName',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> associateNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'associateName',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> beginDatetimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'beginDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> beginDatetimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'beginDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> beginDatetimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'beginDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> beginDatetimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'beginDatetime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billingAddress',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billingAddress',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> businessDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> businessDateGreaterThan(
    DateTime value, {
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> businessDateLessThan(
    DateTime value, {
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> businessDateBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> createTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerPhone',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerPhone',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerPhone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerPhoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      customerPhoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerPhone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> customerPhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> discountTotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> discountTotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> discountTotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> discountTotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endDateTime',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endDateTime',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> endDateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lastChangedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastChangedAt',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lastChangedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastChangedAt',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lastChangedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastChangedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lineItemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineItems',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lineItemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineItems',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lineItemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineItems',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lineItemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineItems',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lineItemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineItems',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> lineItemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lineItems',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> paymentLineItemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentLineItems',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> paymentLineItemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentLineItems',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> paymentLineItemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentLineItems',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> paymentLineItemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentLineItems',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> paymentLineItemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentLineItems',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> paymentLineItemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentLineItems',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> roundTotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roundTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> roundTotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'roundTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> roundTotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'roundTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> roundTotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'roundTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shippingAddress',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shippingAddress',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> storeIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> storeIdGreaterThan(
    int value, {
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> storeIdLessThan(
    int value, {
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> storeIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> subtotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> subtotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> subtotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> subtotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> syncStateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> syncStateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> syncStateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> syncStateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncState',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> taxTotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> taxTotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> taxTotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> taxTotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> totalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> totalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> totalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> totalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'total',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transactionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      transactionTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      transactionTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transactionType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transactionType',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> transactionTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transactionType',
        value: '',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> updateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> updateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> updateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
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

extension TransactionHeaderEntityQueryObject on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QFilterCondition> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> billingAddress(FilterQuery<Address> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'billingAddress');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      lineItemsElement(FilterQuery<TransactionLineItemEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lineItems');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
          QAfterFilterCondition>
      paymentLineItemsElement(FilterQuery<TransactionPaymentLineItemEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'paymentLineItems');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity,
      QAfterFilterCondition> shippingAddress(FilterQuery<Address> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'shippingAddress');
    });
  }
}

extension TransactionHeaderEntityQueryLinks on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QFilterCondition> {}

extension TransactionHeaderEntityQuerySortBy
    on QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QSortBy> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByAssociateId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateId', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByAssociateIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateId', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByAssociateName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateName', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByAssociateNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateName', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBeginDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'beginDatetime', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBeginDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'beginDatetime', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBusinessDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessDate', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByBusinessDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessDate', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerPhone', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByCustomerPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerPhone', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByDiscountTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountTotal', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByDiscountTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountTotal', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByEndDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateTime', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByEndDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateTime', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByLastChangedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByRoundTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundTotal', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByRoundTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundTotal', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByStoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeId', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByStoreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeId', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortBySyncStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTaxTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxTotal', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTaxTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxTotal', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTransactionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionType', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByTransactionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionType', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension TransactionHeaderEntityQuerySortThenBy on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QSortThenBy> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByAssociateId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateId', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByAssociateIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateId', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByAssociateName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateName', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByAssociateNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateName', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBeginDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'beginDatetime', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBeginDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'beginDatetime', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBusinessDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessDate', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByBusinessDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessDate', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerPhone', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByCustomerPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerPhone', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByDiscountTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountTotal', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByDiscountTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountTotal', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByEndDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateTime', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByEndDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateTime', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByLastChangedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByRoundTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundTotal', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByRoundTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundTotal', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByStoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeId', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByStoreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeId', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenBySyncStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTaxTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxTotal', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTaxTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxTotal', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTransId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transId', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTransIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transId', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTransactionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionType', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByTransactionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionType', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension TransactionHeaderEntityQueryWhereDistinct on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QDistinct> {
  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByAssociateId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'associateId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByAssociateName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'associateName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByBeginDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'beginDatetime');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByBusinessDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessDate');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createTime');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByCustomerId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByCustomerName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByCustomerPhone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerPhone',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByDiscountTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountTotal');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByEndDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endDateTime');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastChangedAt');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByRoundTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roundTotal');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByStoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeId');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncState');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByTaxTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxTotal');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'total');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByTransactionType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transactionType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateTime');
    });
  }

  QueryBuilder<TransactionHeaderEntity, TransactionHeaderEntity, QDistinct>
      distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension TransactionHeaderEntityQueryProperty on QueryBuilder<
    TransactionHeaderEntity, TransactionHeaderEntity, QQueryProperty> {
  QueryBuilder<TransactionHeaderEntity, int, QQueryOperations>
      transIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transId');
    });
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      associateIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'associateId');
    });
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      associateNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'associateName');
    });
  }

  QueryBuilder<TransactionHeaderEntity, DateTime, QQueryOperations>
      beginDatetimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'beginDatetime');
    });
  }

  QueryBuilder<TransactionHeaderEntity, Address?, QQueryOperations>
      billingAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billingAddress');
    });
  }

  QueryBuilder<TransactionHeaderEntity, DateTime, QQueryOperations>
      businessDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'businessDate');
    });
  }

  QueryBuilder<TransactionHeaderEntity, DateTime, QQueryOperations>
      createTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createTime');
    });
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<TransactionHeaderEntity, String?, QQueryOperations>
      customerPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerPhone');
    });
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      discountTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountTotal');
    });
  }

  QueryBuilder<TransactionHeaderEntity, DateTime?, QQueryOperations>
      endDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endDateTime');
    });
  }

  QueryBuilder<TransactionHeaderEntity, DateTime?, QQueryOperations>
      lastChangedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastChangedAt');
    });
  }

  QueryBuilder<TransactionHeaderEntity, List<TransactionLineItemEntity>,
      QQueryOperations> lineItemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lineItems');
    });
  }

  QueryBuilder<TransactionHeaderEntity, List<TransactionPaymentLineItemEntity>,
      QQueryOperations> paymentLineItemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentLineItems');
    });
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      roundTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roundTotal');
    });
  }

  QueryBuilder<TransactionHeaderEntity, Address?, QQueryOperations>
      shippingAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shippingAddress');
    });
  }

  QueryBuilder<TransactionHeaderEntity, String, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<TransactionHeaderEntity, int, QQueryOperations>
      storeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeId');
    });
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
    });
  }

  QueryBuilder<TransactionHeaderEntity, int, QQueryOperations>
      syncStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncState');
    });
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      taxTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxTotal');
    });
  }

  QueryBuilder<TransactionHeaderEntity, double, QQueryOperations>
      totalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'total');
    });
  }

  QueryBuilder<TransactionHeaderEntity, String, QQueryOperations>
      transactionTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transactionType');
    });
  }

  QueryBuilder<TransactionHeaderEntity, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateTime');
    });
  }

  QueryBuilder<TransactionHeaderEntity, int, QQueryOperations>
      versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
