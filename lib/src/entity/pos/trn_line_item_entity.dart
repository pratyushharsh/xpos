import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

import 'trn_line_item_tax.dart';

part 'trn_line_item_entity.g.dart';

@embedded
class TransactionLineItemEntity {
  int? storeId;
  DateTime? businessDate;
  int? posId;
  int? transSeq;
  int? lineItemSeq;
  String? category;
  String? itemId;
  String? itemDescription;
  double? quantity; // Quantity of the item
  double?
      unitPrice; // Unit price of the item for the transaction it will be overridden in case of price override
  double? unitCost; // Unit Cost At which item is sold.
  double? baseUnitPrice; // Unit price before any discount
  double? extendedAmount; // Unit Price * Quantity
  bool returnFlag;
  String? itemIdEntryMethod;
  String? priceEntryMethod;
  double? netAmount; // Item on which tax is calculated
  double? grossAmount; // Item paid for this line item.
  String? serialNumber;
  double? taxAmount; // Tax amount of the item
  double? discountAmount; // Discount amount on the item
  String? uom;

  /// Price Override Reason
  bool priceOverride;
  double? priceOverrideAmount; // Deprecate
  String? priceOverrideReason;

  /// Return Parameters
  double? returnedQuantity;

  bool isVoid;

  final int? originalPosId;

  int? originalTransSeq;
  int? originalLineItemSeq;
  DateTime? originalBusinessDate;
  String? returnReasonCode;
  String? returnComment;
  String? returnTypeCode;

  bool nonReturnableFlag;
  bool nonExchangeableFlag;

  /// For DropShipping Items
  String? vendorId;
  double? shippingWeight;

  // @Backlink(to: 'lineItems')
  // final header = IsarLink<TransactionHeaderEntity>();
  List<TransactionLineItemModifierEntity> lineModifiers;
  List<TransactionLineItemTaxModifier> taxModifiers;

  // final lineModifiers = IsarLinks<TransactionLineItemModifierEntity>();

  // final taxModifiers = IsarLinks<TransactionLineItemTaxModifier>();

  TransactionLineItemEntity({
    this.storeId,
    this.businessDate,
    this.posId,
    this.transSeq,
    this.lineItemSeq,
    this.priceOverride = false,
    this.priceOverrideAmount,
    this.priceOverrideReason,
    this.category,
    this.baseUnitPrice,
    this.itemId,
    this.itemDescription,
    this.quantity,
    this.unitPrice,
    this.unitCost,
    this.extendedAmount,
    this.discountAmount = 0.00,
    this.returnFlag = false,
    this.itemIdEntryMethod,
    this.priceEntryMethod,
    this.netAmount,
    this.grossAmount,
    this.serialNumber,
    this.taxAmount,
    this.uom,
    this.returnedQuantity,
    this.originalPosId,
    this.originalTransSeq,
    this.originalLineItemSeq,
    this.originalBusinessDate,
    this.returnReasonCode,
    this.returnComment,
    this.returnTypeCode,
    this.isVoid = false,
    this.nonReturnableFlag = false,
    this.nonExchangeableFlag = false,
    this.vendorId,
    this.shippingWeight,
    this.lineModifiers = const [],
    this.taxModifiers = const [],
  });
}

class ItemIdEntryMethod extends EntryMethod {}

class EntryMethod {
  static const keyboard = "KEYBOARD";
}
