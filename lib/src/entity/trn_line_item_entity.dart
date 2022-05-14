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
  final String? brand;
  final String productId;
  final String? itemId;
  final String? hsn;
  final String productDescription;
  final double qty;
  final String uom;
  final double amount;
  final double salePrice;
  final double listPrice;
  final double itemDiscount;
  final double orderDiscount;
  final String taxClass;
  final double taxRate;
  final double taxAmount;
  final String? shipmentId;

  TransactionLineItemEntity(
      {required this.transId,
      required this.transSeq,
      this.brand,
      required this.productId,
      this.itemId,
      this.hsn,
      required this.productDescription,
      required this.qty,
      required this.uom,
      required this.amount,
      required this.salePrice,
      required this.listPrice,
      required this.itemDiscount,
      required this.orderDiscount,
      required this.taxClass,
      required this.taxRate,
      required this.taxAmount, this.shipmentId});

  @override
  Map<String, dynamic> toMap() {
    return {
      'transId': transId,
      'transSeq': transSeq,
      'brand': brand,
      'productId': productId,
      'itemId': itemId,
      'hsn': hsn,
      'productDescription': productDescription,
      'qty': qty,
      'uom': uom,
      'amount': amount,
      'salePrice': salePrice,
      'listPrice': listPrice,
      'itemDiscount': itemDiscount,
      'orderDiscount': orderDiscount,
      'taxClass': taxClass,
      'taxRate': taxRate,
      'taxAmount': taxAmount,
      'shipmentId': shipmentId,
    };
  }

  factory TransactionLineItemEntity.fromMap(Map<String, dynamic> map) {
    return TransactionLineItemEntity(
      transId: map['transId'] as int,
      transSeq: map['transSeq'] as int,
      brand: map['brand'] as String,
      productId: map['productId'] as String,
      itemId: map['itemId'] as String,
      hsn: map['hsn'] as String,
      productDescription: map['productDescription'] as String,
      qty: map['qty'] as double,
      uom: map['uom'] as String,
      amount: map['amount'] as double,
      salePrice: map['salePrice'] as double,
      listPrice: map['listPrice'] as double,
      itemDiscount: map['itemDiscount'] as double,
      orderDiscount: map['orderDiscount'] as double,
      taxClass: map['taxClass'] as String,
      taxRate: map['taxRate'] as double,
      taxAmount: map['taxAmount'] as double,
      shipmentId: map['shipmentId'] as String,
    );
  }
}
