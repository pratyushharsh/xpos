import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

part 'trn_header_entity.g.dart';

@Collection()
class TransactionHeaderEntity extends BaseEntity {
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
  final double roundTotal;
  final String status;
  final String? customerId;
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

  @override
  String getPK() {
    return "STORE#$storeId";
  }

  @override
  String getSK() {
    return "TRN#$transId";
  }

  @override
  String getStoreId() {
    return '$storeId';
  }

  @override
  String lastUpdatedAtISOString() {
    DateTime lastUpdate = updateTime ?? DateTime.now();
    return lastUpdate.toIso8601String();
  }

  @override
  EntityType type() {
    return EntityType.transaction;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'trans_id': transId,
      'store_id': storeId,
      'transaction_type': transactionType,
      'business_date': businessDate.toUtc().toIso8601String(),
      'begin_timestamp': beginDatetime.toUtc().toIso8601String(),
      'end_timestamp': endDateTime?.toUtc().toIso8601String(),
      'total': total,
      'tax_total': taxTotal,
      'subtotal': subtotal,
      'round_total': roundTotal,
      'status': status,
      'customer_id': customerId,
      'customer_phone': customerPhone,
      'shipping_address': shippingAddress,
      'billing_address': billingAddress,
      'customer_name': customerName,
      'create_time': createTime.toUtc().toIso8601String(),
      'update_time': updateTime?.toUtc().toIso8601String(),
      'last_changed_at': lastChangedAt?.toUtc().toIso8601String(),
      'version': version
    };
  }

  factory TransactionHeaderEntity.fromMap(Map<String, dynamic> map) {
    return TransactionHeaderEntity(
      transId: map['trans_id'] as int,
      storeId: map['store_id'] as int,
      transactionType: map['transaction_type'] as String,
      businessDate: DateTime.tryParse(map['business_date']??"") ?? DateTime.now(),
      beginDatetime: DateTime.tryParse(map['begin_timestamp']??"") ?? DateTime.now(),
      endDateTime: DateTime.tryParse(map['end_timestamp']??""),
      total: double.parse(map['total'].toString()),
      taxTotal: double.parse(map['tax_total'].toString()),
      subtotal: double.parse(map['subtotal'].toString()),
      roundTotal: double.parse(map['round_total'].toString()),
      status: map['status'] as String,
      customerId: map['customer_id'] as String?,
      customerPhone: map['customer_phone'] as String?,
      shippingAddress: map['shipping_address'] as String?,
      billingAddress: map['billing_address'] as String?,
      customerName: map['customer_name'] as String?,
      createTime: DateTime.tryParse(map['create_time']??"") ?? DateTime.now(),
      updateTime: DateTime.tryParse(map['update_time']??""),
      lastChangedAt: DateTime.tryParse(map['last_changed_at']??""),
      version: map['version'] as int,
      syncState: 300
    );
  }

  TransactionHeaderEntity copyWith({
    int? transId,
    int? storeId,
    String? transactionType,
    DateTime? businessDate,
    DateTime? beginDatetime,
    DateTime? endDateTime,
    double? total,
    double? taxTotal,
    double? subtotal,
    double? roundTotal,
    String? status,
    String? customerId,
    String? customerPhone,
    String? shippingAddress,
    String? billingAddress,
    String? customerName,
    int? syncState,
    DateTime? createTime,
    DateTime? updateTime,
    DateTime? lastChangedAt,
    int? version,
    DateTime? lastUpdate,
  }) {
    return TransactionHeaderEntity(
      transId: transId ?? this.transId,
      storeId: storeId ?? this.storeId,
      transactionType: transactionType ?? this.transactionType,
      businessDate: businessDate ?? this.businessDate,
      beginDatetime: beginDatetime ?? this.beginDatetime,
      endDateTime: endDateTime ?? this.endDateTime,
      total: total ?? this.total,
      taxTotal: taxTotal ?? this.taxTotal,
      subtotal: subtotal ?? this.subtotal,
      roundTotal: roundTotal ?? this.roundTotal,
      status: status ?? this.status,
      customerId: customerId ?? this.customerId,
      customerPhone: customerPhone ?? this.customerPhone,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      billingAddress: billingAddress ?? this.billingAddress,
      customerName: customerName ?? this.customerName,
      syncState: syncState ?? this.syncState,
      createTime: createTime ?? this.createTime,
      updateTime: updateTime ?? this.updateTime,
      lastChangedAt: lastChangedAt ?? this.lastChangedAt,
      version: version ?? this.version,
    );
  }
}
