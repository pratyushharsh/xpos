import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/base_entity.dart';
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
class TransactionLineItemEntity extends DynamoEntity {
  final int? transId;
  final int transSeq;
  final String productId;
  final String productDescription;
  final double qty;
  final double price;
  final double amount;
  final double discount;

  TransactionLineItemEntity(
      {this.transId,
      required this.transSeq,
      required this.productId,
      required this.productDescription,
      required this.qty,
      required this.price,
      required this.amount,
      required this.discount,});

  @override
  Map<String, dynamic> toMap() {
    return {
      'trans_id': transId,
      'trans_seq': transSeq,
      'product_id': productId,
      'product_description': productDescription,
      'qty': qty,
      'price': price,
      'amount': amount,
      'discount': discount,
    };
  }

  factory TransactionLineItemEntity.fromMap(Map<String, dynamic> map) {
    return TransactionLineItemEntity(
      transId: map['trans_id'] as int,
      transSeq: map['trans_seq'] as int,
      productId: map['product_id'] as String,
      productDescription: map['product_description'] as String,
      qty: double.parse(map['qty'].toString()),
      price: double.parse(map['price'].toString()),
      amount: double.parse(map['amount'].toString()),
      discount: double.parse(map['discount'].toString()),
    );
  }
}
