import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/trn_header_entity.dart';

@Entity(
  tableName: 'trn_payment_line_item',
  primaryKeys: ['transId', 'paymentSeq'],
  foreignKeys: [
    ForeignKey(
      childColumns: ['transId'],
      parentColumns: ['transId'],
      entity: TransactionHeaderEntity,
    )
  ],
)
class TransactionPaymentLineItemEntity {
  final int? transId;
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