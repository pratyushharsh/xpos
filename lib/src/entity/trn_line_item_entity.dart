import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/trn_header_entity.dart';

@Entity(
  tableName: 'trn_line_item',
  primaryKeys: ['transId', 'transSeq'],
  foreignKeys: [
    ForeignKey(
      childColumns: ['transId'],
      parentColumns: ['transId'],
      entity: TransactionHeaderEntity,
    )
  ],
)
class TransactionLineItemEntity {
  final int? transId;
  final int transSeq;
  final String productId;
  final String productDescription;
  final double qty;
  final double price;
  final double amount;
  final double discount;
  final int createDate;
  final int updateDate;

  TransactionLineItemEntity(
      {this.transId,
      required this.transSeq,
      required this.productId,
      required this.productDescription,
      required this.qty,
      required this.price,
      required this.amount,
      required this.discount,
      required this.createDate,
      required this.updateDate});
}
