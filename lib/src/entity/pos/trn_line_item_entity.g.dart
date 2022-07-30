// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trn_line_item_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTransactionLineItemEntityCollection on Isar {
  IsarCollection<TransactionLineItemEntity> get transactionLineItemEntitys =>
      getCollection();
}

const TransactionLineItemEntitySchema = CollectionSchema(
  name: 'TransactionLineItemEntity',
  schema:
      '{"name":"TransactionLineItemEntity","idName":"id","properties":[{"name":"businessDate","type":"Long"},{"name":"category","type":"String"},{"name":"discountAmount","type":"Double"},{"name":"extendedAmount","type":"Double"},{"name":"grossAmount","type":"Double"},{"name":"isVoid","type":"Bool"},{"name":"itemDescription","type":"String"},{"name":"itemId","type":"String"},{"name":"itemIdEntryMethod","type":"String"},{"name":"lineItemSeq","type":"Long"},{"name":"netAmount","type":"Double"},{"name":"nonExchangeableFlag","type":"Bool"},{"name":"nonReturnableFlag","type":"Bool"},{"name":"originalBusinessDate","type":"Long"},{"name":"originalLineItemSeq","type":"Long"},{"name":"originalPosId","type":"Long"},{"name":"originalTransSeq","type":"Long"},{"name":"posId","type":"Long"},{"name":"priceEntryMethod","type":"String"},{"name":"priceOverride","type":"Bool"},{"name":"priceOverrideAmount","type":"Double"},{"name":"priceOverrideReason","type":"String"},{"name":"quantity","type":"Double"},{"name":"returnComment","type":"String"},{"name":"returnFlag","type":"Bool"},{"name":"returnReasonCode","type":"String"},{"name":"returnTypeCode","type":"String"},{"name":"returnedQuantity","type":"Double"},{"name":"serialNumber","type":"String"},{"name":"shippingWeight","type":"Double"},{"name":"storeId","type":"Long"},{"name":"taxAmount","type":"Double"},{"name":"transSeq","type":"Long"},{"name":"unitPrice","type":"Double"},{"name":"uom","type":"String"},{"name":"vendorId","type":"String"}],"indexes":[{"name":"originalPosId","unique":false,"properties":[{"name":"originalPosId","type":"Value","caseSensitive":false}]},{"name":"originalTransSeq","unique":false,"properties":[{"name":"originalTransSeq","type":"Value","caseSensitive":false}]},{"name":"storeId","unique":false,"properties":[{"name":"storeId","type":"Value","caseSensitive":false}]}],"links":[{"name":"lineModifiers","target":"TransactionLineItemModifierEntity"},{"name":"taxModifiers","target":"TransactionLineItemTaxModifier"}]}',
  idName: 'id',
  propertyIds: {
    'businessDate': 0,
    'category': 1,
    'discountAmount': 2,
    'extendedAmount': 3,
    'grossAmount': 4,
    'isVoid': 5,
    'itemDescription': 6,
    'itemId': 7,
    'itemIdEntryMethod': 8,
    'lineItemSeq': 9,
    'netAmount': 10,
    'nonExchangeableFlag': 11,
    'nonReturnableFlag': 12,
    'originalBusinessDate': 13,
    'originalLineItemSeq': 14,
    'originalPosId': 15,
    'originalTransSeq': 16,
    'posId': 17,
    'priceEntryMethod': 18,
    'priceOverride': 19,
    'priceOverrideAmount': 20,
    'priceOverrideReason': 21,
    'quantity': 22,
    'returnComment': 23,
    'returnFlag': 24,
    'returnReasonCode': 25,
    'returnTypeCode': 26,
    'returnedQuantity': 27,
    'serialNumber': 28,
    'shippingWeight': 29,
    'storeId': 30,
    'taxAmount': 31,
    'transSeq': 32,
    'unitPrice': 33,
    'uom': 34,
    'vendorId': 35
  },
  listProperties: {},
  indexIds: {'originalPosId': 0, 'originalTransSeq': 1, 'storeId': 2},
  indexValueTypes: {
    'originalPosId': [
      IndexValueType.long,
    ],
    'originalTransSeq': [
      IndexValueType.long,
    ],
    'storeId': [
      IndexValueType.long,
    ]
  },
  linkIds: {'lineModifiers': 0, 'taxModifiers': 1, 'header': 2},
  backlinkLinkNames: {'header': 'lineItems'},
  getId: _transactionLineItemEntityGetId,
  getLinks: _transactionLineItemEntityGetLinks,
  attachLinks: _transactionLineItemEntityAttachLinks,
  serializeNative: _transactionLineItemEntitySerializeNative,
  deserializeNative: _transactionLineItemEntityDeserializeNative,
  deserializePropNative: _transactionLineItemEntityDeserializePropNative,
  serializeWeb: _transactionLineItemEntitySerializeWeb,
  deserializeWeb: _transactionLineItemEntityDeserializeWeb,
  deserializePropWeb: _transactionLineItemEntityDeserializePropWeb,
  version: 3,
);

int? _transactionLineItemEntityGetId(TransactionLineItemEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _transactionLineItemEntityGetLinks(
    TransactionLineItemEntity object) {
  return [object.lineModifiers, object.taxModifiers, object.header];
}

void _transactionLineItemEntitySerializeNative(
    IsarCollection<TransactionLineItemEntity> collection,
    IsarRawObject rawObj,
    TransactionLineItemEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.businessDate;
  final _businessDate = value0;
  final value1 = object.category;
  IsarUint8List? _category;
  if (value1 != null) {
    _category = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_category?.length ?? 0) as int;
  final value2 = object.discountAmount;
  final _discountAmount = value2;
  final value3 = object.extendedAmount;
  final _extendedAmount = value3;
  final value4 = object.grossAmount;
  final _grossAmount = value4;
  final value5 = object.isVoid;
  final _isVoid = value5;
  final value6 = object.itemDescription;
  final _itemDescription = IsarBinaryWriter.utf8Encoder.convert(value6);
  dynamicSize += (_itemDescription.length) as int;
  final value7 = object.itemId;
  final _itemId = IsarBinaryWriter.utf8Encoder.convert(value7);
  dynamicSize += (_itemId.length) as int;
  final value8 = object.itemIdEntryMethod;
  final _itemIdEntryMethod = IsarBinaryWriter.utf8Encoder.convert(value8);
  dynamicSize += (_itemIdEntryMethod.length) as int;
  final value9 = object.lineItemSeq;
  final _lineItemSeq = value9;
  final value10 = object.netAmount;
  final _netAmount = value10;
  final value11 = object.nonExchangeableFlag;
  final _nonExchangeableFlag = value11;
  final value12 = object.nonReturnableFlag;
  final _nonReturnableFlag = value12;
  final value13 = object.originalBusinessDate;
  final _originalBusinessDate = value13;
  final value14 = object.originalLineItemSeq;
  final _originalLineItemSeq = value14;
  final value15 = object.originalPosId;
  final _originalPosId = value15;
  final value16 = object.originalTransSeq;
  final _originalTransSeq = value16;
  final value17 = object.posId;
  final _posId = value17;
  final value18 = object.priceEntryMethod;
  final _priceEntryMethod = IsarBinaryWriter.utf8Encoder.convert(value18);
  dynamicSize += (_priceEntryMethod.length) as int;
  final value19 = object.priceOverride;
  final _priceOverride = value19;
  final value20 = object.priceOverrideAmount;
  final _priceOverrideAmount = value20;
  final value21 = object.priceOverrideReason;
  IsarUint8List? _priceOverrideReason;
  if (value21 != null) {
    _priceOverrideReason = IsarBinaryWriter.utf8Encoder.convert(value21);
  }
  dynamicSize += (_priceOverrideReason?.length ?? 0) as int;
  final value22 = object.quantity;
  final _quantity = value22;
  final value23 = object.returnComment;
  IsarUint8List? _returnComment;
  if (value23 != null) {
    _returnComment = IsarBinaryWriter.utf8Encoder.convert(value23);
  }
  dynamicSize += (_returnComment?.length ?? 0) as int;
  final value24 = object.returnFlag;
  final _returnFlag = value24;
  final value25 = object.returnReasonCode;
  IsarUint8List? _returnReasonCode;
  if (value25 != null) {
    _returnReasonCode = IsarBinaryWriter.utf8Encoder.convert(value25);
  }
  dynamicSize += (_returnReasonCode?.length ?? 0) as int;
  final value26 = object.returnTypeCode;
  IsarUint8List? _returnTypeCode;
  if (value26 != null) {
    _returnTypeCode = IsarBinaryWriter.utf8Encoder.convert(value26);
  }
  dynamicSize += (_returnTypeCode?.length ?? 0) as int;
  final value27 = object.returnedQuantity;
  final _returnedQuantity = value27;
  final value28 = object.serialNumber;
  IsarUint8List? _serialNumber;
  if (value28 != null) {
    _serialNumber = IsarBinaryWriter.utf8Encoder.convert(value28);
  }
  dynamicSize += (_serialNumber?.length ?? 0) as int;
  final value29 = object.shippingWeight;
  final _shippingWeight = value29;
  final value30 = object.storeId;
  final _storeId = value30;
  final value31 = object.taxAmount;
  final _taxAmount = value31;
  final value32 = object.transSeq;
  final _transSeq = value32;
  final value33 = object.unitPrice;
  final _unitPrice = value33;
  final value34 = object.uom;
  final _uom = IsarBinaryWriter.utf8Encoder.convert(value34);
  dynamicSize += (_uom.length) as int;
  final value35 = object.vendorId;
  IsarUint8List? _vendorId;
  if (value35 != null) {
    _vendorId = IsarBinaryWriter.utf8Encoder.convert(value35);
  }
  dynamicSize += (_vendorId?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _businessDate);
  writer.writeBytes(offsets[1], _category);
  writer.writeDouble(offsets[2], _discountAmount);
  writer.writeDouble(offsets[3], _extendedAmount);
  writer.writeDouble(offsets[4], _grossAmount);
  writer.writeBool(offsets[5], _isVoid);
  writer.writeBytes(offsets[6], _itemDescription);
  writer.writeBytes(offsets[7], _itemId);
  writer.writeBytes(offsets[8], _itemIdEntryMethod);
  writer.writeLong(offsets[9], _lineItemSeq);
  writer.writeDouble(offsets[10], _netAmount);
  writer.writeBool(offsets[11], _nonExchangeableFlag);
  writer.writeBool(offsets[12], _nonReturnableFlag);
  writer.writeDateTime(offsets[13], _originalBusinessDate);
  writer.writeLong(offsets[14], _originalLineItemSeq);
  writer.writeLong(offsets[15], _originalPosId);
  writer.writeLong(offsets[16], _originalTransSeq);
  writer.writeLong(offsets[17], _posId);
  writer.writeBytes(offsets[18], _priceEntryMethod);
  writer.writeBool(offsets[19], _priceOverride);
  writer.writeDouble(offsets[20], _priceOverrideAmount);
  writer.writeBytes(offsets[21], _priceOverrideReason);
  writer.writeDouble(offsets[22], _quantity);
  writer.writeBytes(offsets[23], _returnComment);
  writer.writeBool(offsets[24], _returnFlag);
  writer.writeBytes(offsets[25], _returnReasonCode);
  writer.writeBytes(offsets[26], _returnTypeCode);
  writer.writeDouble(offsets[27], _returnedQuantity);
  writer.writeBytes(offsets[28], _serialNumber);
  writer.writeDouble(offsets[29], _shippingWeight);
  writer.writeLong(offsets[30], _storeId);
  writer.writeDouble(offsets[31], _taxAmount);
  writer.writeLong(offsets[32], _transSeq);
  writer.writeDouble(offsets[33], _unitPrice);
  writer.writeBytes(offsets[34], _uom);
  writer.writeBytes(offsets[35], _vendorId);
}

TransactionLineItemEntity _transactionLineItemEntityDeserializeNative(
    IsarCollection<TransactionLineItemEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = TransactionLineItemEntity(
    businessDate: reader.readDateTime(offsets[0]),
    category: reader.readStringOrNull(offsets[1]),
    discountAmount: reader.readDouble(offsets[2]),
    extendedAmount: reader.readDouble(offsets[3]),
    grossAmount: reader.readDouble(offsets[4]),
    id: id,
    isVoid: reader.readBool(offsets[5]),
    itemDescription: reader.readString(offsets[6]),
    itemId: reader.readString(offsets[7]),
    itemIdEntryMethod: reader.readString(offsets[8]),
    lineItemSeq: reader.readLong(offsets[9]),
    netAmount: reader.readDouble(offsets[10]),
    nonExchangeableFlag: reader.readBool(offsets[11]),
    nonReturnableFlag: reader.readBool(offsets[12]),
    originalBusinessDate: reader.readDateTimeOrNull(offsets[13]),
    originalLineItemSeq: reader.readLongOrNull(offsets[14]),
    originalPosId: reader.readLongOrNull(offsets[15]),
    originalTransSeq: reader.readLongOrNull(offsets[16]),
    posId: reader.readLong(offsets[17]),
    priceEntryMethod: reader.readString(offsets[18]),
    priceOverride: reader.readBool(offsets[19]),
    priceOverrideAmount: reader.readDoubleOrNull(offsets[20]),
    priceOverrideReason: reader.readStringOrNull(offsets[21]),
    quantity: reader.readDouble(offsets[22]),
    returnComment: reader.readStringOrNull(offsets[23]),
    returnFlag: reader.readBool(offsets[24]),
    returnReasonCode: reader.readStringOrNull(offsets[25]),
    returnTypeCode: reader.readStringOrNull(offsets[26]),
    returnedQuantity: reader.readDoubleOrNull(offsets[27]),
    serialNumber: reader.readStringOrNull(offsets[28]),
    shippingWeight: reader.readDoubleOrNull(offsets[29]),
    storeId: reader.readLong(offsets[30]),
    taxAmount: reader.readDouble(offsets[31]),
    transSeq: reader.readLong(offsets[32]),
    unitPrice: reader.readDouble(offsets[33]),
    uom: reader.readString(offsets[34]),
    vendorId: reader.readStringOrNull(offsets[35]),
  );
  _transactionLineItemEntityAttachLinks(collection, id, object);
  return object;
}

P _transactionLineItemEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readBool(offset)) as P;
    case 20:
      return (reader.readDoubleOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readDouble(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readBool(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readDoubleOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readDoubleOrNull(offset)) as P;
    case 30:
      return (reader.readLong(offset)) as P;
    case 31:
      return (reader.readDouble(offset)) as P;
    case 32:
      return (reader.readLong(offset)) as P;
    case 33:
      return (reader.readDouble(offset)) as P;
    case 34:
      return (reader.readString(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _transactionLineItemEntitySerializeWeb(
    IsarCollection<TransactionLineItemEntity> collection,
    TransactionLineItemEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'businessDate',
      object.businessDate.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'category', object.category);
  IsarNative.jsObjectSet(jsObj, 'discountAmount', object.discountAmount);
  IsarNative.jsObjectSet(jsObj, 'extendedAmount', object.extendedAmount);
  IsarNative.jsObjectSet(jsObj, 'grossAmount', object.grossAmount);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isVoid', object.isVoid);
  IsarNative.jsObjectSet(jsObj, 'itemDescription', object.itemDescription);
  IsarNative.jsObjectSet(jsObj, 'itemId', object.itemId);
  IsarNative.jsObjectSet(jsObj, 'itemIdEntryMethod', object.itemIdEntryMethod);
  IsarNative.jsObjectSet(jsObj, 'lineItemSeq', object.lineItemSeq);
  IsarNative.jsObjectSet(jsObj, 'netAmount', object.netAmount);
  IsarNative.jsObjectSet(
      jsObj, 'nonExchangeableFlag', object.nonExchangeableFlag);
  IsarNative.jsObjectSet(jsObj, 'nonReturnableFlag', object.nonReturnableFlag);
  IsarNative.jsObjectSet(jsObj, 'originalBusinessDate',
      object.originalBusinessDate?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(
      jsObj, 'originalLineItemSeq', object.originalLineItemSeq);
  IsarNative.jsObjectSet(jsObj, 'originalPosId', object.originalPosId);
  IsarNative.jsObjectSet(jsObj, 'originalTransSeq', object.originalTransSeq);
  IsarNative.jsObjectSet(jsObj, 'posId', object.posId);
  IsarNative.jsObjectSet(jsObj, 'priceEntryMethod', object.priceEntryMethod);
  IsarNative.jsObjectSet(jsObj, 'priceOverride', object.priceOverride);
  IsarNative.jsObjectSet(
      jsObj, 'priceOverrideAmount', object.priceOverrideAmount);
  IsarNative.jsObjectSet(
      jsObj, 'priceOverrideReason', object.priceOverrideReason);
  IsarNative.jsObjectSet(jsObj, 'quantity', object.quantity);
  IsarNative.jsObjectSet(jsObj, 'returnComment', object.returnComment);
  IsarNative.jsObjectSet(jsObj, 'returnFlag', object.returnFlag);
  IsarNative.jsObjectSet(jsObj, 'returnReasonCode', object.returnReasonCode);
  IsarNative.jsObjectSet(jsObj, 'returnTypeCode', object.returnTypeCode);
  IsarNative.jsObjectSet(jsObj, 'returnedQuantity', object.returnedQuantity);
  IsarNative.jsObjectSet(jsObj, 'serialNumber', object.serialNumber);
  IsarNative.jsObjectSet(jsObj, 'shippingWeight', object.shippingWeight);
  IsarNative.jsObjectSet(jsObj, 'storeId', object.storeId);
  IsarNative.jsObjectSet(jsObj, 'taxAmount', object.taxAmount);
  IsarNative.jsObjectSet(jsObj, 'transSeq', object.transSeq);
  IsarNative.jsObjectSet(jsObj, 'unitPrice', object.unitPrice);
  IsarNative.jsObjectSet(jsObj, 'uom', object.uom);
  IsarNative.jsObjectSet(jsObj, 'vendorId', object.vendorId);
  return jsObj;
}

TransactionLineItemEntity _transactionLineItemEntityDeserializeWeb(
    IsarCollection<TransactionLineItemEntity> collection, dynamic jsObj) {
  final object = TransactionLineItemEntity(
    businessDate: IsarNative.jsObjectGet(jsObj, 'businessDate') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'businessDate'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    category: IsarNative.jsObjectGet(jsObj, 'category'),
    discountAmount: IsarNative.jsObjectGet(jsObj, 'discountAmount') ??
        double.negativeInfinity,
    extendedAmount: IsarNative.jsObjectGet(jsObj, 'extendedAmount') ??
        double.negativeInfinity,
    grossAmount:
        IsarNative.jsObjectGet(jsObj, 'grossAmount') ?? double.negativeInfinity,
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    isVoid: IsarNative.jsObjectGet(jsObj, 'isVoid') ?? false,
    itemDescription: IsarNative.jsObjectGet(jsObj, 'itemDescription') ?? '',
    itemId: IsarNative.jsObjectGet(jsObj, 'itemId') ?? '',
    itemIdEntryMethod: IsarNative.jsObjectGet(jsObj, 'itemIdEntryMethod') ?? '',
    lineItemSeq:
        IsarNative.jsObjectGet(jsObj, 'lineItemSeq') ?? double.negativeInfinity,
    netAmount:
        IsarNative.jsObjectGet(jsObj, 'netAmount') ?? double.negativeInfinity,
    nonExchangeableFlag:
        IsarNative.jsObjectGet(jsObj, 'nonExchangeableFlag') ?? false,
    nonReturnableFlag:
        IsarNative.jsObjectGet(jsObj, 'nonReturnableFlag') ?? false,
    originalBusinessDate:
        IsarNative.jsObjectGet(jsObj, 'originalBusinessDate') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'originalBusinessDate'),
                    isUtc: true)
                .toLocal()
            : null,
    originalLineItemSeq: IsarNative.jsObjectGet(jsObj, 'originalLineItemSeq'),
    originalPosId: IsarNative.jsObjectGet(jsObj, 'originalPosId'),
    originalTransSeq: IsarNative.jsObjectGet(jsObj, 'originalTransSeq'),
    posId: IsarNative.jsObjectGet(jsObj, 'posId') ?? double.negativeInfinity,
    priceEntryMethod: IsarNative.jsObjectGet(jsObj, 'priceEntryMethod') ?? '',
    priceOverride: IsarNative.jsObjectGet(jsObj, 'priceOverride') ?? false,
    priceOverrideAmount: IsarNative.jsObjectGet(jsObj, 'priceOverrideAmount'),
    priceOverrideReason: IsarNative.jsObjectGet(jsObj, 'priceOverrideReason'),
    quantity:
        IsarNative.jsObjectGet(jsObj, 'quantity') ?? double.negativeInfinity,
    returnComment: IsarNative.jsObjectGet(jsObj, 'returnComment'),
    returnFlag: IsarNative.jsObjectGet(jsObj, 'returnFlag') ?? false,
    returnReasonCode: IsarNative.jsObjectGet(jsObj, 'returnReasonCode'),
    returnTypeCode: IsarNative.jsObjectGet(jsObj, 'returnTypeCode'),
    returnedQuantity: IsarNative.jsObjectGet(jsObj, 'returnedQuantity'),
    serialNumber: IsarNative.jsObjectGet(jsObj, 'serialNumber'),
    shippingWeight: IsarNative.jsObjectGet(jsObj, 'shippingWeight'),
    storeId:
        IsarNative.jsObjectGet(jsObj, 'storeId') ?? double.negativeInfinity,
    taxAmount:
        IsarNative.jsObjectGet(jsObj, 'taxAmount') ?? double.negativeInfinity,
    transSeq:
        IsarNative.jsObjectGet(jsObj, 'transSeq') ?? double.negativeInfinity,
    unitPrice:
        IsarNative.jsObjectGet(jsObj, 'unitPrice') ?? double.negativeInfinity,
    uom: IsarNative.jsObjectGet(jsObj, 'uom') ?? '',
    vendorId: IsarNative.jsObjectGet(jsObj, 'vendorId'),
  );
  _transactionLineItemEntityAttachLinks(
      collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _transactionLineItemEntityDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'businessDate':
      return (IsarNative.jsObjectGet(jsObj, 'businessDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'businessDate'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'category':
      return (IsarNative.jsObjectGet(jsObj, 'category')) as P;
    case 'discountAmount':
      return (IsarNative.jsObjectGet(jsObj, 'discountAmount') ??
          double.negativeInfinity) as P;
    case 'extendedAmount':
      return (IsarNative.jsObjectGet(jsObj, 'extendedAmount') ??
          double.negativeInfinity) as P;
    case 'grossAmount':
      return (IsarNative.jsObjectGet(jsObj, 'grossAmount') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isVoid':
      return (IsarNative.jsObjectGet(jsObj, 'isVoid') ?? false) as P;
    case 'itemDescription':
      return (IsarNative.jsObjectGet(jsObj, 'itemDescription') ?? '') as P;
    case 'itemId':
      return (IsarNative.jsObjectGet(jsObj, 'itemId') ?? '') as P;
    case 'itemIdEntryMethod':
      return (IsarNative.jsObjectGet(jsObj, 'itemIdEntryMethod') ?? '') as P;
    case 'lineItemSeq':
      return (IsarNative.jsObjectGet(jsObj, 'lineItemSeq') ??
          double.negativeInfinity) as P;
    case 'netAmount':
      return (IsarNative.jsObjectGet(jsObj, 'netAmount') ??
          double.negativeInfinity) as P;
    case 'nonExchangeableFlag':
      return (IsarNative.jsObjectGet(jsObj, 'nonExchangeableFlag') ?? false)
          as P;
    case 'nonReturnableFlag':
      return (IsarNative.jsObjectGet(jsObj, 'nonReturnableFlag') ?? false) as P;
    case 'originalBusinessDate':
      return (IsarNative.jsObjectGet(jsObj, 'originalBusinessDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'originalBusinessDate'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'originalLineItemSeq':
      return (IsarNative.jsObjectGet(jsObj, 'originalLineItemSeq')) as P;
    case 'originalPosId':
      return (IsarNative.jsObjectGet(jsObj, 'originalPosId')) as P;
    case 'originalTransSeq':
      return (IsarNative.jsObjectGet(jsObj, 'originalTransSeq')) as P;
    case 'posId':
      return (IsarNative.jsObjectGet(jsObj, 'posId') ?? double.negativeInfinity)
          as P;
    case 'priceEntryMethod':
      return (IsarNative.jsObjectGet(jsObj, 'priceEntryMethod') ?? '') as P;
    case 'priceOverride':
      return (IsarNative.jsObjectGet(jsObj, 'priceOverride') ?? false) as P;
    case 'priceOverrideAmount':
      return (IsarNative.jsObjectGet(jsObj, 'priceOverrideAmount')) as P;
    case 'priceOverrideReason':
      return (IsarNative.jsObjectGet(jsObj, 'priceOverrideReason')) as P;
    case 'quantity':
      return (IsarNative.jsObjectGet(jsObj, 'quantity') ??
          double.negativeInfinity) as P;
    case 'returnComment':
      return (IsarNative.jsObjectGet(jsObj, 'returnComment')) as P;
    case 'returnFlag':
      return (IsarNative.jsObjectGet(jsObj, 'returnFlag') ?? false) as P;
    case 'returnReasonCode':
      return (IsarNative.jsObjectGet(jsObj, 'returnReasonCode')) as P;
    case 'returnTypeCode':
      return (IsarNative.jsObjectGet(jsObj, 'returnTypeCode')) as P;
    case 'returnedQuantity':
      return (IsarNative.jsObjectGet(jsObj, 'returnedQuantity')) as P;
    case 'serialNumber':
      return (IsarNative.jsObjectGet(jsObj, 'serialNumber')) as P;
    case 'shippingWeight':
      return (IsarNative.jsObjectGet(jsObj, 'shippingWeight')) as P;
    case 'storeId':
      return (IsarNative.jsObjectGet(jsObj, 'storeId') ??
          double.negativeInfinity) as P;
    case 'taxAmount':
      return (IsarNative.jsObjectGet(jsObj, 'taxAmount') ??
          double.negativeInfinity) as P;
    case 'transSeq':
      return (IsarNative.jsObjectGet(jsObj, 'transSeq') ??
          double.negativeInfinity) as P;
    case 'unitPrice':
      return (IsarNative.jsObjectGet(jsObj, 'unitPrice') ??
          double.negativeInfinity) as P;
    case 'uom':
      return (IsarNative.jsObjectGet(jsObj, 'uom') ?? '') as P;
    case 'vendorId':
      return (IsarNative.jsObjectGet(jsObj, 'vendorId')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _transactionLineItemEntityAttachLinks(
    IsarCollection col, int id, TransactionLineItemEntity object) {
  object.lineModifiers.attach(
      col, col.isar.transactionLineItemModifierEntitys, 'lineModifiers', id);
  object.taxModifiers.attach(
      col, col.isar.transactionLineItemTaxModifiers, 'taxModifiers', id);
  object.header.attach(col, col.isar.transactionHeaderEntitys, 'header', id);
}

extension TransactionLineItemEntityQueryWhereSort on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QWhere> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhere> anyOriginalPosId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'originalPosId'));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhere> anyOriginalTransSeq() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'originalTransSeq'));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhere> anyStoreId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'storeId'));
  }
}

extension TransactionLineItemEntityQueryWhere on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QWhereClause> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalPosIdEqualTo(int? originalPosId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'originalPosId',
      value: [originalPosId],
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalPosIdNotEqualTo(int? originalPosId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'originalPosId',
        upper: [originalPosId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'originalPosId',
        lower: [originalPosId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'originalPosId',
        lower: [originalPosId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'originalPosId',
        upper: [originalPosId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalPosIdIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'originalPosId',
      value: [null],
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalPosIdIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'originalPosId',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalPosIdGreaterThan(
    int? originalPosId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'originalPosId',
      lower: [originalPosId],
      includeLower: include,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalPosIdLessThan(
    int? originalPosId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'originalPosId',
      upper: [originalPosId],
      includeUpper: include,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalPosIdBetween(
    int? lowerOriginalPosId,
    int? upperOriginalPosId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'originalPosId',
      lower: [lowerOriginalPosId],
      includeLower: includeLower,
      upper: [upperOriginalPosId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalTransSeqEqualTo(int? originalTransSeq) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'originalTransSeq',
      value: [originalTransSeq],
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalTransSeqNotEqualTo(int? originalTransSeq) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'originalTransSeq',
        upper: [originalTransSeq],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'originalTransSeq',
        lower: [originalTransSeq],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'originalTransSeq',
        lower: [originalTransSeq],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'originalTransSeq',
        upper: [originalTransSeq],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalTransSeqIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'originalTransSeq',
      value: [null],
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalTransSeqIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'originalTransSeq',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalTransSeqGreaterThan(
    int? originalTransSeq, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'originalTransSeq',
      lower: [originalTransSeq],
      includeLower: include,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalTransSeqLessThan(
    int? originalTransSeq, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'originalTransSeq',
      upper: [originalTransSeq],
      includeUpper: include,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> originalTransSeqBetween(
    int? lowerOriginalTransSeq,
    int? upperOriginalTransSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'originalTransSeq',
      lower: [lowerOriginalTransSeq],
      includeLower: includeLower,
      upper: [upperOriginalTransSeq],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> storeIdEqualTo(int storeId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'storeId',
      value: [storeId],
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> storeIdNotEqualTo(int storeId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'storeId',
        upper: [storeId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'storeId',
        lower: [storeId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'storeId',
        lower: [storeId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'storeId',
        upper: [storeId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> storeIdGreaterThan(
    int storeId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'storeId',
      lower: [storeId],
      includeLower: include,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> storeIdLessThan(
    int storeId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'storeId',
      upper: [storeId],
      includeUpper: include,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterWhereClause> storeIdBetween(
    int lowerStoreId,
    int upperStoreId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'storeId',
      lower: [lowerStoreId],
      includeLower: includeLower,
      upper: [upperStoreId],
      includeUpper: includeUpper,
    ));
  }
}

extension TransactionLineItemEntityQueryFilter on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QFilterCondition> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'businessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'businessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'businessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> businessDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'businessDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'category',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'category',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'category',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'discountAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'discountAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> discountAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discountAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'extendedAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'extendedAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> extendedAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'extendedAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'grossAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'grossAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> grossAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'grossAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> isVoidEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isVoid',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'itemDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'itemDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'itemDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'itemDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'itemDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemDescriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'itemDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'itemDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'itemId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'itemIdEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'itemIdEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'itemIdEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemIdEntryMethod',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'itemIdEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> itemIdEntryMethodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'itemIdEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdEntryMethodContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'itemIdEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      itemIdEntryMethodMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'itemIdEntryMethod',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> lineItemSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lineItemSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'netAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'netAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> netAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'netAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> nonExchangeableFlagEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nonExchangeableFlag',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> nonReturnableFlagEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nonReturnableFlag',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'originalBusinessDate',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'originalBusinessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'originalBusinessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'originalBusinessDate',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalBusinessDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'originalBusinessDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'originalLineItemSeq',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'originalLineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'originalLineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'originalLineItemSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalLineItemSeqBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'originalLineItemSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'originalPosId',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'originalPosId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'originalPosId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'originalPosId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalPosIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'originalPosId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'originalTransSeq',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'originalTransSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'originalTransSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'originalTransSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> originalTransSeqBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'originalTransSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'posId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'posId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'posId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> posIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'posId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'priceEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'priceEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'priceEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priceEntryMethod',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'priceEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceEntryMethodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'priceEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceEntryMethodContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'priceEntryMethod',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceEntryMethodMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'priceEntryMethod',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'priceOverride',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'priceOverrideAmount',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'priceOverrideAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideAmountLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'priceOverrideAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceOverrideAmountBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priceOverrideAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'priceOverrideReason',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'priceOverrideReason',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'priceOverrideReason',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'priceOverrideReason',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priceOverrideReason',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'priceOverrideReason',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> priceOverrideReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'priceOverrideReason',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceOverrideReasonContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'priceOverrideReason',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      priceOverrideReasonMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'priceOverrideReason',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'quantity',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'quantity',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> quantityBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'quantity',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'returnComment',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'returnComment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'returnComment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'returnComment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'returnComment',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'returnComment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnCommentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'returnComment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnCommentContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'returnComment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnCommentMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'returnComment',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnFlagEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'returnFlag',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'returnReasonCode',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'returnReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'returnReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'returnReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'returnReasonCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'returnReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnReasonCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'returnReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnReasonCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'returnReasonCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnReasonCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'returnReasonCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'returnTypeCode',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'returnTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'returnTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'returnTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'returnTypeCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'returnTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnTypeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'returnTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnTypeCodeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'returnTypeCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnTypeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'returnTypeCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'returnedQuantity',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'returnedQuantity',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> returnedQuantityLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'returnedQuantity',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      returnedQuantityBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'returnedQuantity',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'serialNumber',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'serialNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'serialNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'serialNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'serialNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'serialNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> serialNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'serialNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      serialNumberContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'serialNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      serialNumberMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'serialNumber',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'shippingWeight',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'shippingWeight',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> shippingWeightLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'shippingWeight',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      shippingWeightBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'shippingWeight',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeId',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> storeIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taxAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taxAmount',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> taxAmountBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxAmount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> transSeqEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'transSeq',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
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

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'unitPrice',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'unitPrice',
      value: value,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> unitPriceBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'unitPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'uom',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> uomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      uomContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'uom',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      uomMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'uom',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'vendorId',
      value: null,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'vendorId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'vendorId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'vendorId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'vendorId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'vendorId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> vendorIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'vendorId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      vendorIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'vendorId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      vendorIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'vendorId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension TransactionLineItemEntityQueryLinks on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QFilterCondition> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      lineModifiers(FilterQuery<TransactionLineItemModifierEntity> q) {
    return linkInternal(
      isar.transactionLineItemModifierEntitys,
      q,
      'lineModifiers',
    );
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
          QAfterFilterCondition>
      taxModifiers(FilterQuery<TransactionLineItemTaxModifier> q) {
    return linkInternal(
      isar.transactionLineItemTaxModifiers,
      q,
      'taxModifiers',
    );
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterFilterCondition> header(FilterQuery<TransactionHeaderEntity> q) {
    return linkInternal(
      isar.transactionHeaderEntitys,
      q,
      'header',
    );
  }
}

extension TransactionLineItemEntityQueryWhereSortBy on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QSortBy> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByBusinessDate() {
    return addSortByInternal('businessDate', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByBusinessDateDesc() {
    return addSortByInternal('businessDate', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByDiscountAmount() {
    return addSortByInternal('discountAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByDiscountAmountDesc() {
    return addSortByInternal('discountAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByExtendedAmount() {
    return addSortByInternal('extendedAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByExtendedAmountDesc() {
    return addSortByInternal('extendedAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByGrossAmount() {
    return addSortByInternal('grossAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByGrossAmountDesc() {
    return addSortByInternal('grossAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByIsVoid() {
    return addSortByInternal('isVoid', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByIsVoidDesc() {
    return addSortByInternal('isVoid', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemDescription() {
    return addSortByInternal('itemDescription', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemDescriptionDesc() {
    return addSortByInternal('itemDescription', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemId() {
    return addSortByInternal('itemId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemIdDesc() {
    return addSortByInternal('itemId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemIdEntryMethod() {
    return addSortByInternal('itemIdEntryMethod', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByItemIdEntryMethodDesc() {
    return addSortByInternal('itemIdEntryMethod', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByLineItemSeq() {
    return addSortByInternal('lineItemSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByLineItemSeqDesc() {
    return addSortByInternal('lineItemSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByNetAmount() {
    return addSortByInternal('netAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByNetAmountDesc() {
    return addSortByInternal('netAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByNonExchangeableFlag() {
    return addSortByInternal('nonExchangeableFlag', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByNonExchangeableFlagDesc() {
    return addSortByInternal('nonExchangeableFlag', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByNonReturnableFlag() {
    return addSortByInternal('nonReturnableFlag', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByNonReturnableFlagDesc() {
    return addSortByInternal('nonReturnableFlag', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOriginalBusinessDate() {
    return addSortByInternal('originalBusinessDate', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOriginalBusinessDateDesc() {
    return addSortByInternal('originalBusinessDate', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOriginalLineItemSeq() {
    return addSortByInternal('originalLineItemSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOriginalLineItemSeqDesc() {
    return addSortByInternal('originalLineItemSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOriginalPosId() {
    return addSortByInternal('originalPosId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOriginalPosIdDesc() {
    return addSortByInternal('originalPosId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOriginalTransSeq() {
    return addSortByInternal('originalTransSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByOriginalTransSeqDesc() {
    return addSortByInternal('originalTransSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPosId() {
    return addSortByInternal('posId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPosIdDesc() {
    return addSortByInternal('posId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPriceEntryMethod() {
    return addSortByInternal('priceEntryMethod', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPriceEntryMethodDesc() {
    return addSortByInternal('priceEntryMethod', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPriceOverride() {
    return addSortByInternal('priceOverride', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPriceOverrideDesc() {
    return addSortByInternal('priceOverride', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPriceOverrideAmount() {
    return addSortByInternal('priceOverrideAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPriceOverrideAmountDesc() {
    return addSortByInternal('priceOverrideAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPriceOverrideReason() {
    return addSortByInternal('priceOverrideReason', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByPriceOverrideReasonDesc() {
    return addSortByInternal('priceOverrideReason', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByQuantity() {
    return addSortByInternal('quantity', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByQuantityDesc() {
    return addSortByInternal('quantity', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnComment() {
    return addSortByInternal('returnComment', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnCommentDesc() {
    return addSortByInternal('returnComment', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnFlag() {
    return addSortByInternal('returnFlag', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnFlagDesc() {
    return addSortByInternal('returnFlag', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnReasonCode() {
    return addSortByInternal('returnReasonCode', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnReasonCodeDesc() {
    return addSortByInternal('returnReasonCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnTypeCode() {
    return addSortByInternal('returnTypeCode', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnTypeCodeDesc() {
    return addSortByInternal('returnTypeCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnedQuantity() {
    return addSortByInternal('returnedQuantity', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByReturnedQuantityDesc() {
    return addSortByInternal('returnedQuantity', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortBySerialNumber() {
    return addSortByInternal('serialNumber', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortBySerialNumberDesc() {
    return addSortByInternal('serialNumber', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByShippingWeight() {
    return addSortByInternal('shippingWeight', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByShippingWeightDesc() {
    return addSortByInternal('shippingWeight', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTaxAmount() {
    return addSortByInternal('taxAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTaxAmountDesc() {
    return addSortByInternal('taxAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTransSeq() {
    return addSortByInternal('transSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByTransSeqDesc() {
    return addSortByInternal('transSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByUnitPrice() {
    return addSortByInternal('unitPrice', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByUnitPriceDesc() {
    return addSortByInternal('unitPrice', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByUom() {
    return addSortByInternal('uom', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByUomDesc() {
    return addSortByInternal('uom', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByVendorId() {
    return addSortByInternal('vendorId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> sortByVendorIdDesc() {
    return addSortByInternal('vendorId', Sort.desc);
  }
}

extension TransactionLineItemEntityQueryWhereSortThenBy on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QSortThenBy> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByBusinessDate() {
    return addSortByInternal('businessDate', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByBusinessDateDesc() {
    return addSortByInternal('businessDate', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByDiscountAmount() {
    return addSortByInternal('discountAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByDiscountAmountDesc() {
    return addSortByInternal('discountAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByExtendedAmount() {
    return addSortByInternal('extendedAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByExtendedAmountDesc() {
    return addSortByInternal('extendedAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByGrossAmount() {
    return addSortByInternal('grossAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByGrossAmountDesc() {
    return addSortByInternal('grossAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByIsVoid() {
    return addSortByInternal('isVoid', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByIsVoidDesc() {
    return addSortByInternal('isVoid', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemDescription() {
    return addSortByInternal('itemDescription', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemDescriptionDesc() {
    return addSortByInternal('itemDescription', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemId() {
    return addSortByInternal('itemId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemIdDesc() {
    return addSortByInternal('itemId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemIdEntryMethod() {
    return addSortByInternal('itemIdEntryMethod', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByItemIdEntryMethodDesc() {
    return addSortByInternal('itemIdEntryMethod', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByLineItemSeq() {
    return addSortByInternal('lineItemSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByLineItemSeqDesc() {
    return addSortByInternal('lineItemSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByNetAmount() {
    return addSortByInternal('netAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByNetAmountDesc() {
    return addSortByInternal('netAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByNonExchangeableFlag() {
    return addSortByInternal('nonExchangeableFlag', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByNonExchangeableFlagDesc() {
    return addSortByInternal('nonExchangeableFlag', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByNonReturnableFlag() {
    return addSortByInternal('nonReturnableFlag', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByNonReturnableFlagDesc() {
    return addSortByInternal('nonReturnableFlag', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOriginalBusinessDate() {
    return addSortByInternal('originalBusinessDate', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOriginalBusinessDateDesc() {
    return addSortByInternal('originalBusinessDate', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOriginalLineItemSeq() {
    return addSortByInternal('originalLineItemSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOriginalLineItemSeqDesc() {
    return addSortByInternal('originalLineItemSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOriginalPosId() {
    return addSortByInternal('originalPosId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOriginalPosIdDesc() {
    return addSortByInternal('originalPosId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOriginalTransSeq() {
    return addSortByInternal('originalTransSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByOriginalTransSeqDesc() {
    return addSortByInternal('originalTransSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPosId() {
    return addSortByInternal('posId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPosIdDesc() {
    return addSortByInternal('posId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPriceEntryMethod() {
    return addSortByInternal('priceEntryMethod', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPriceEntryMethodDesc() {
    return addSortByInternal('priceEntryMethod', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPriceOverride() {
    return addSortByInternal('priceOverride', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPriceOverrideDesc() {
    return addSortByInternal('priceOverride', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPriceOverrideAmount() {
    return addSortByInternal('priceOverrideAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPriceOverrideAmountDesc() {
    return addSortByInternal('priceOverrideAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPriceOverrideReason() {
    return addSortByInternal('priceOverrideReason', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByPriceOverrideReasonDesc() {
    return addSortByInternal('priceOverrideReason', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByQuantity() {
    return addSortByInternal('quantity', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByQuantityDesc() {
    return addSortByInternal('quantity', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnComment() {
    return addSortByInternal('returnComment', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnCommentDesc() {
    return addSortByInternal('returnComment', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnFlag() {
    return addSortByInternal('returnFlag', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnFlagDesc() {
    return addSortByInternal('returnFlag', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnReasonCode() {
    return addSortByInternal('returnReasonCode', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnReasonCodeDesc() {
    return addSortByInternal('returnReasonCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnTypeCode() {
    return addSortByInternal('returnTypeCode', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnTypeCodeDesc() {
    return addSortByInternal('returnTypeCode', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnedQuantity() {
    return addSortByInternal('returnedQuantity', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByReturnedQuantityDesc() {
    return addSortByInternal('returnedQuantity', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenBySerialNumber() {
    return addSortByInternal('serialNumber', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenBySerialNumberDesc() {
    return addSortByInternal('serialNumber', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByShippingWeight() {
    return addSortByInternal('shippingWeight', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByShippingWeightDesc() {
    return addSortByInternal('shippingWeight', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTaxAmount() {
    return addSortByInternal('taxAmount', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTaxAmountDesc() {
    return addSortByInternal('taxAmount', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTransSeq() {
    return addSortByInternal('transSeq', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByTransSeqDesc() {
    return addSortByInternal('transSeq', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByUnitPrice() {
    return addSortByInternal('unitPrice', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByUnitPriceDesc() {
    return addSortByInternal('unitPrice', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByUom() {
    return addSortByInternal('uom', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByUomDesc() {
    return addSortByInternal('uom', Sort.desc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByVendorId() {
    return addSortByInternal('vendorId', Sort.asc);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity,
      QAfterSortBy> thenByVendorIdDesc() {
    return addSortByInternal('vendorId', Sort.desc);
  }
}

extension TransactionLineItemEntityQueryWhereDistinct on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QDistinct> {
  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByBusinessDate() {
    return addDistinctByInternal('businessDate');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByCategory({bool caseSensitive = true}) {
    return addDistinctByInternal('category', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByDiscountAmount() {
    return addDistinctByInternal('discountAmount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByExtendedAmount() {
    return addDistinctByInternal('extendedAmount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByGrossAmount() {
    return addDistinctByInternal('grossAmount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByIsVoid() {
    return addDistinctByInternal('isVoid');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByItemDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('itemDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByItemId({bool caseSensitive = true}) {
    return addDistinctByInternal('itemId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByItemIdEntryMethod({bool caseSensitive = true}) {
    return addDistinctByInternal('itemIdEntryMethod',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByLineItemSeq() {
    return addDistinctByInternal('lineItemSeq');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByNetAmount() {
    return addDistinctByInternal('netAmount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByNonExchangeableFlag() {
    return addDistinctByInternal('nonExchangeableFlag');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByNonReturnableFlag() {
    return addDistinctByInternal('nonReturnableFlag');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByOriginalBusinessDate() {
    return addDistinctByInternal('originalBusinessDate');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByOriginalLineItemSeq() {
    return addDistinctByInternal('originalLineItemSeq');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByOriginalPosId() {
    return addDistinctByInternal('originalPosId');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByOriginalTransSeq() {
    return addDistinctByInternal('originalTransSeq');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByPosId() {
    return addDistinctByInternal('posId');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByPriceEntryMethod({bool caseSensitive = true}) {
    return addDistinctByInternal('priceEntryMethod',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByPriceOverride() {
    return addDistinctByInternal('priceOverride');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByPriceOverrideAmount() {
    return addDistinctByInternal('priceOverrideAmount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByPriceOverrideReason({bool caseSensitive = true}) {
    return addDistinctByInternal('priceOverrideReason',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByQuantity() {
    return addDistinctByInternal('quantity');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByReturnComment({bool caseSensitive = true}) {
    return addDistinctByInternal('returnComment', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByReturnFlag() {
    return addDistinctByInternal('returnFlag');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByReturnReasonCode({bool caseSensitive = true}) {
    return addDistinctByInternal('returnReasonCode',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByReturnTypeCode({bool caseSensitive = true}) {
    return addDistinctByInternal('returnTypeCode',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByReturnedQuantity() {
    return addDistinctByInternal('returnedQuantity');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctBySerialNumber({bool caseSensitive = true}) {
    return addDistinctByInternal('serialNumber', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByShippingWeight() {
    return addDistinctByInternal('shippingWeight');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByStoreId() {
    return addDistinctByInternal('storeId');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByTaxAmount() {
    return addDistinctByInternal('taxAmount');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByTransSeq() {
    return addDistinctByInternal('transSeq');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByUnitPrice() {
    return addDistinctByInternal('unitPrice');
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByUom({bool caseSensitive = true}) {
    return addDistinctByInternal('uom', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionLineItemEntity, TransactionLineItemEntity, QDistinct>
      distinctByVendorId({bool caseSensitive = true}) {
    return addDistinctByInternal('vendorId', caseSensitive: caseSensitive);
  }
}

extension TransactionLineItemEntityQueryProperty on QueryBuilder<
    TransactionLineItemEntity, TransactionLineItemEntity, QQueryProperty> {
  QueryBuilder<TransactionLineItemEntity, DateTime, QQueryOperations>
      businessDateProperty() {
    return addPropertyNameInternal('businessDate');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      categoryProperty() {
    return addPropertyNameInternal('category');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      discountAmountProperty() {
    return addPropertyNameInternal('discountAmount');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      extendedAmountProperty() {
    return addPropertyNameInternal('extendedAmount');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      grossAmountProperty() {
    return addPropertyNameInternal('grossAmount');
  }

  QueryBuilder<TransactionLineItemEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TransactionLineItemEntity, bool, QQueryOperations>
      isVoidProperty() {
    return addPropertyNameInternal('isVoid');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      itemDescriptionProperty() {
    return addPropertyNameInternal('itemDescription');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      itemIdProperty() {
    return addPropertyNameInternal('itemId');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      itemIdEntryMethodProperty() {
    return addPropertyNameInternal('itemIdEntryMethod');
  }

  QueryBuilder<TransactionLineItemEntity, int, QQueryOperations>
      lineItemSeqProperty() {
    return addPropertyNameInternal('lineItemSeq');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      netAmountProperty() {
    return addPropertyNameInternal('netAmount');
  }

  QueryBuilder<TransactionLineItemEntity, bool, QQueryOperations>
      nonExchangeableFlagProperty() {
    return addPropertyNameInternal('nonExchangeableFlag');
  }

  QueryBuilder<TransactionLineItemEntity, bool, QQueryOperations>
      nonReturnableFlagProperty() {
    return addPropertyNameInternal('nonReturnableFlag');
  }

  QueryBuilder<TransactionLineItemEntity, DateTime?, QQueryOperations>
      originalBusinessDateProperty() {
    return addPropertyNameInternal('originalBusinessDate');
  }

  QueryBuilder<TransactionLineItemEntity, int?, QQueryOperations>
      originalLineItemSeqProperty() {
    return addPropertyNameInternal('originalLineItemSeq');
  }

  QueryBuilder<TransactionLineItemEntity, int?, QQueryOperations>
      originalPosIdProperty() {
    return addPropertyNameInternal('originalPosId');
  }

  QueryBuilder<TransactionLineItemEntity, int?, QQueryOperations>
      originalTransSeqProperty() {
    return addPropertyNameInternal('originalTransSeq');
  }

  QueryBuilder<TransactionLineItemEntity, int, QQueryOperations>
      posIdProperty() {
    return addPropertyNameInternal('posId');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      priceEntryMethodProperty() {
    return addPropertyNameInternal('priceEntryMethod');
  }

  QueryBuilder<TransactionLineItemEntity, bool, QQueryOperations>
      priceOverrideProperty() {
    return addPropertyNameInternal('priceOverride');
  }

  QueryBuilder<TransactionLineItemEntity, double?, QQueryOperations>
      priceOverrideAmountProperty() {
    return addPropertyNameInternal('priceOverrideAmount');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      priceOverrideReasonProperty() {
    return addPropertyNameInternal('priceOverrideReason');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      quantityProperty() {
    return addPropertyNameInternal('quantity');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      returnCommentProperty() {
    return addPropertyNameInternal('returnComment');
  }

  QueryBuilder<TransactionLineItemEntity, bool, QQueryOperations>
      returnFlagProperty() {
    return addPropertyNameInternal('returnFlag');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      returnReasonCodeProperty() {
    return addPropertyNameInternal('returnReasonCode');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      returnTypeCodeProperty() {
    return addPropertyNameInternal('returnTypeCode');
  }

  QueryBuilder<TransactionLineItemEntity, double?, QQueryOperations>
      returnedQuantityProperty() {
    return addPropertyNameInternal('returnedQuantity');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      serialNumberProperty() {
    return addPropertyNameInternal('serialNumber');
  }

  QueryBuilder<TransactionLineItemEntity, double?, QQueryOperations>
      shippingWeightProperty() {
    return addPropertyNameInternal('shippingWeight');
  }

  QueryBuilder<TransactionLineItemEntity, int, QQueryOperations>
      storeIdProperty() {
    return addPropertyNameInternal('storeId');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      taxAmountProperty() {
    return addPropertyNameInternal('taxAmount');
  }

  QueryBuilder<TransactionLineItemEntity, int, QQueryOperations>
      transSeqProperty() {
    return addPropertyNameInternal('transSeq');
  }

  QueryBuilder<TransactionLineItemEntity, double, QQueryOperations>
      unitPriceProperty() {
    return addPropertyNameInternal('unitPrice');
  }

  QueryBuilder<TransactionLineItemEntity, String, QQueryOperations>
      uomProperty() {
    return addPropertyNameInternal('uom');
  }

  QueryBuilder<TransactionLineItemEntity, String?, QQueryOperations>
      vendorIdProperty() {
    return addPropertyNameInternal('vendorId');
  }
}
