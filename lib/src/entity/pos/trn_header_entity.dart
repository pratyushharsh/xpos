import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

import 'address.dart';

part 'trn_header_entity.g.dart';

@Collection()
class TransactionHeaderEntity {
  final Id transId;

  final int storeId;
  final String transactionType;
  final DateTime businessDate;
  final DateTime beginDatetime;
  final DateTime? endDateTime;
  double total;
  double taxTotal;
  double subtotal;
  double discountTotal;
  final double roundTotal;
  final String status;

  @Index()
  final String? customerId;

  @Index()
  final String? customerPhone;

  final Address? shippingAddress;

  final Address? billingAddress;
  final String? customerName;
  final int syncState;

  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastChangedAt;
  late int version;

  final String? associateId;
  final String? associateName;
  final String? notes;

  List<TransactionLineItemEntity> lineItems;
  List<TransactionPaymentLineItemEntity> paymentLineItems;

  // final lineItems = IsarLinks<TransactionLineItemEntity>();
  // final paymentLineItems = IsarLinks<TransactionPaymentLineItemEntity>();

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
      this.lineItems = const [],
      this.paymentLineItems = const [],
      this.customerId,
      this.customerPhone,
      this.shippingAddress,
      this.billingAddress,
      this.customerName,
      this.notes,
      required this.createTime,
      this.version = 1,
      this.lastChangedAt,
      this.syncState = 100,
      this.updateTime,
      this.associateId,
      this.associateName});
}
