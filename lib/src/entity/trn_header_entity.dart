import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/types.dart';

import 'base_entity.dart';

@Entity(tableName: 'trn_header')
class TransactionHeaderEntity extends BaseEntity {
  @PrimaryKey(autoGenerate: true)
  final int transId;

  final String storeId;
  final String transactionType;
  final int businessDate;
  final int beginDatetime;
  final int? endDateTime;
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

  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastChangedAt;
  late int version;

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
    return storeId;
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

  TransactionHeaderEntity copyWith({
    int? transId,
    String? storeId,
    String? transactionType,
    int? businessDate,
    int? beginDatetime,
    int? endDateTime,
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
      createTime: createTime ?? this.createTime,
      updateTime: updateTime ?? this.updateTime,
      lastChangedAt: lastChangedAt ?? this.lastChangedAt,
      version: version ?? this.version,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'transId': transId,
      'storeId': storeId,
      'transactionType': transactionType,
      'businessDate': businessDate,
      'beginDatetime': beginDatetime,
      'endDateTime': endDateTime,
      'total': total,
      'taxTotal': taxTotal,
      'subtotal': subtotal,
      'roundTotal': roundTotal,
      'status': status,
      'customerId': customerId,
      'customerPhone': customerPhone,
      'shippingAddress': shippingAddress,
      'billingAddress': billingAddress,
      'customerName': customerName,
      'createTime': createTime,
      'updateTime': updateTime,
      'lastChangedAt': lastChangedAt,
      'version': version,
    };
  }

  factory TransactionHeaderEntity.fromMap(Map<String, dynamic> map) {
    return TransactionHeaderEntity(
      transId: map['transId'] as int,
      storeId: map['storeId'] as String,
      transactionType: map['transactionType'] as String,
      businessDate: map['businessDate'] as int,
      beginDatetime: map['beginDatetime'] as int,
      endDateTime: map['endDateTime'] as int,
      total: map['total'] as double,
      taxTotal: map['taxTotal'] as double,
      subtotal: map['subtotal'] as double,
      roundTotal: map['roundTotal'] as double,
      status: map['status'] as String,
      customerId: map['customerId'] as String,
      customerPhone: map['customerPhone'] as String,
      shippingAddress: map['shippingAddress'] as String,
      billingAddress: map['billingAddress'] as String,
      customerName: map['customerName'] as String,
      createTime: map['createTime'] as DateTime,
      updateTime: map['updateTime'] as DateTime,
      lastChangedAt: map['lastChangedAt'] as DateTime,
      version: map['version'] as int,
    );
  }
}

// Status
// Total Detail
//
