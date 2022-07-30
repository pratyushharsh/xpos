import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

import 'trn_line_item_tax.dart';

part 'trn_line_item_entity.g.dart';

@Collection()
class TransactionLineItemEntity {
  @Id()
  final int? id;

  @Index()
  final int storeId;
  final DateTime businessDate;
  final int posId;
  final int transSeq;
  final int lineItemSeq;
  final String? category;
  final String itemId;
  final String itemDescription;
  double quantity;
  double unitPrice;
  double extendedAmount;
  final bool returnFlag;
  final String itemIdEntryMethod;
  final String priceEntryMethod;
  double netAmount;
  double grossAmount;
  final String? serialNumber;
  double taxAmount;
  double discountAmount;
  final String uom;

  /// Price Override Reason
  bool priceOverride;
  double? priceOverrideAmount;
  String? priceOverrideReason;

  /// Return Parameters
  double? returnedQuantity;

  bool isVoid;

  @Index()
  final int? originalPosId;

  @Index()
  final int? originalTransSeq;
  final int? originalLineItemSeq;
  final DateTime? originalBusinessDate;
  final String? returnReasonCode;
  final String? returnComment;
  final String? returnTypeCode;

  final bool nonReturnableFlag;
  final bool nonExchangeableFlag;

  /// For DropShipping Items
  final String? vendorId;
  final double? shippingWeight;

  @Backlink(to: 'lineItems')
  final header = IsarLink<TransactionHeaderEntity>();

  final lineModifiers = IsarLinks<TransactionLineItemModifierEntity>();

  final taxModifiers = IsarLinks<TransactionLineItemTaxModifier>();

  TransactionLineItemEntity(
      {this.id,
      required this.storeId,
      required this.businessDate,
      required this.posId,
      required this.transSeq,
      required this.lineItemSeq,
      this.priceOverride = false,
      this.priceOverrideAmount,
      this.priceOverrideReason,
      this.category,
      required this.itemId,
      required this.itemDescription,
      required this.quantity,
      required this.unitPrice,
      required this.extendedAmount,
      this.discountAmount = 0.00,
      this.returnFlag = false,
      required this.itemIdEntryMethod,
      required this.priceEntryMethod,
      required this.netAmount,
      required this.grossAmount,
      this.serialNumber,
      required this.taxAmount,
      required this.uom,
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
      this.shippingWeight});
}

class ItemIdEntryMethod extends EntryMethod {}

class EntryMethod {
  static const keyboard = "KEYBOARD";
}
