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

  final String category;
  final double amount;
  final String description;

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
      required this.category,
      required this.amount,
      required this.description});
}
