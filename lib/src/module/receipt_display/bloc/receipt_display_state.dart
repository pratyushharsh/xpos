part of 'receipt_display_bloc.dart';

enum ReceiptDisplayStatus { initial, loading, success, failure }

class ReceiptDisplayState extends Equatable {
  final ReceiptDisplayStatus status;
  final TransactionHeaderEntity? header;
  final List<TransactionLineItemEntity>? lineItems;

  const ReceiptDisplayState({this.status = ReceiptDisplayStatus.initial, this.header, this.lineItems});

  ReceiptDisplayState copyWith({ReceiptDisplayStatus? status, TransactionHeaderEntity? header, List<TransactionLineItemEntity>? lineItems}) {
    return ReceiptDisplayState(
      status: status ?? this.status,
      header: header ?? this.header,
      lineItems: lineItems ?? this.lineItems
    );
  }

  @override
  List<Object?> get props => [status, header, lineItems];
}

