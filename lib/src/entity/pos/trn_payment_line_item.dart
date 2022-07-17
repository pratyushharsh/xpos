import 'package:isar/isar.dart';

import 'entity.dart';

part 'trn_payment_line_item.g.dart';

@Collection()
class TransactionPaymentLineItemEntity {
  @Id()
  final int? id;

  final int transId;
  final int paymentSeq;
  final double amount;
  final DateTime beginDate;
  final DateTime? endDate;
  final String currencyId;
  final String tenderId;
  final String tenderStatusCode;
  final String? authCode;

  @Backlink(to: 'paymentLineItems')
  final header = IsarLink<TransactionHeaderEntity>();

  TransactionPaymentLineItemEntity(
      {this.id,
      required this.transId,
      required this.paymentSeq,
      required this.amount,
      required this.beginDate,
      this.endDate,
      required this.currencyId,
      required this.tenderId,
      required this.tenderStatusCode,
      this.authCode});
}
