import 'package:isar/isar.dart';

part 'trn_payment_line_item.g.dart';

@Collection()
class TransactionPaymentLineItemEntity {
  final int? transId;
  @Id()
  final int paymentSeq;
  final String productId;
  final String productDescription;
  final double qty;
  final double price;
  final double amount;
  final double discount;

  TransactionPaymentLineItemEntity(
      {this.transId,
        required this.paymentSeq,
        required this.productId,
        required this.productDescription,
        required this.qty,
        required this.price,
        required this.amount,
        required this.discount,});
}