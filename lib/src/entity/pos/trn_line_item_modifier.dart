import 'package:isar/isar.dart';

import 'entity.dart';

part 'trn_line_item_modifier.g.dart';

@Collection()
class TransactionLineItemModifierEntity {
  @Id()
  final int? id;

  @Index(composite: [CompositeIndex("transSeq"), CompositeIndex("lineItemSeq")])
  final int storeId;
  final DateTime businessDate;
  final int posId;
  final int transSeq;
  final int lineItemSeq;
  final int lineItemModSeq;

  double amount;
  double extendedAmount;
  String? notes;

  double? percent;
  String priceModifierReasonCode;

  String? description;
  String? promotionId;
  String? dealId;
  String? discountCode;
  String? groupDiscountId;
  String? discountReasonCode;

  @Backlink(to: 'lineModifiers')
  final lineItem = IsarLink<TransactionLineItemEntity>();

  TransactionLineItemModifierEntity({
    this.id,
    required this.storeId,
    required this.businessDate,
    required this.posId,
    required this.transSeq,
    required this.lineItemSeq,
    required this.lineItemModSeq,
    required this.amount,
    required this.extendedAmount,
    this.notes,
    this.percent,
    required this.priceModifierReasonCode,
    this.description,
    this.promotionId,
    this.dealId,
    this.discountCode,
    this.groupDiscountId,
    this.discountReasonCode,
  });
}
