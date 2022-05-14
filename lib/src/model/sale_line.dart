import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/model/model.dart';

class SaleLine {
  final int seq;
  final ProductModel product;
  final double qty;
  final double price;
  final double discount;

  get tax {
    return (price - discount) * (product.tax ?? 0) * qty;
  }

  SaleLine(
      {required this.seq,
      required this.product,
      this.qty = 1,
      required this.price,
      this.discount = 0.0});

  double get amount {
    return price * qty - discount;
  }

  SaleLine copyWith(
      {int? seq,
      ProductModel? product,
      double? qty,
      double? price,
      double? discount}) {
    return SaleLine(
        seq: seq ?? this.seq,
        product: product ?? this.product,
        qty: qty ?? this.qty,
        price: price ?? this.price,
        discount: discount ?? this.discount);
  }

  TransactionLineItemEntity toEntity(int transId) {
    return TransactionLineItemEntity(
      transId: transId,
      transSeq: seq,
      productId: product.skuCode ?? product.productId.toString(),
      hsn: product.hsn,
      productDescription: product.description,
      qty: qty,
      amount: 0,
      itemDiscount: 0,
      orderDiscount: 0,
      listPrice: product.listPrice??price,
      salePrice: product.salePrice??price,
      taxAmount: 0,
      taxClass: "IGST",
      taxRate: product.tax??0.0,
      uom: product.uom,
    );
  }

  // static SaleLine fromEntity(TransactionLineItemEntity lineItem) {
  //   return SaleLine(seq: lineItem.transSeq, product: product, price: lineItem.price);
  // }
}
