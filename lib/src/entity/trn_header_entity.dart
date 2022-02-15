import 'package:floor/floor.dart';

@Entity(tableName: 'trn_header')
class TransactionHeaderEntity {
  @PrimaryKey(autoGenerate: true)
  final int transId;

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
  final String? customerAddress;
  final String? customerName;

  TransactionHeaderEntity(
      {required this.transId,
      required this.businessDate,
      required this.beginDatetime,
      this.endDateTime,
      required this.total,
      required this.taxTotal,
      required this.subtotal,
      required this.roundTotal,
      required this.status,
      this.customerId,
      this.customerPhone,
      this.customerAddress,
      this.customerName});

  TransactionHeaderEntity copyWith(
      {double? total,
      double? taxTotal,
      double? subtotal,
      double? roundTotal,
      int? endDateTime,
      String? status}) {
    return TransactionHeaderEntity(
        transId: transId,
        businessDate: businessDate,
        beginDatetime: beginDatetime,
        total: total ?? this.total,
        taxTotal: taxTotal ?? this.taxTotal,
        subtotal: subtotal ?? this.subtotal,
        roundTotal: roundTotal ?? this.roundTotal,
        status: status ?? this.status,
        customerAddress: customerAddress,
        customerName: customerName,
        customerPhone: customerPhone,
        customerId: customerId,
        endDateTime: endDateTime ?? this.endDateTime);
  }
}

// Status
// Total Detail
//
