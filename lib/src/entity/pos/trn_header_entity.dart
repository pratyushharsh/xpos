import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

part 'trn_header_entity.g.dart';

@Collection()
class TransactionHeaderEntity {
  @Id()
  final int transId;

  final int storeId;
  final String transactionType;
  final DateTime businessDate;
  final DateTime beginDatetime;
  final DateTime? endDateTime;
  final double total;
  final double taxTotal;
  final double subtotal;
  final double discountTotal;
  final double roundTotal;
  final String status;

  @Index()
  final String? customerId;

  @Index()
  final String? customerPhone;
  final String? shippingAddress;
  final String? billingAddress;
  final String? customerName;
  final int syncState;

  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastChangedAt;
  late int version;

  final lineItems = IsarLinks<TransactionLineItemEntity>();
  final paymentLineItems = IsarLinks<TransactionPaymentLineItemEntity>();

  TransactionHeaderEntity(
      {required this.transId,
      required this.storeId,
      required this.businessDate,
      required this.beginDatetime,
      required this.transactionType,
      this.endDateTime,
      required this.total,
      required this.taxTotal,
      required this.subtotal,
      required this.roundTotal,
      required this.discountTotal,
      required this.status,
      this.customerId,
      this.customerPhone,
      this.shippingAddress,
      this.billingAddress,
      this.customerName,
      required this.createTime,
      this.version = 1,
      this.lastChangedAt,
      this.syncState = 100,
      this.updateTime});
}
