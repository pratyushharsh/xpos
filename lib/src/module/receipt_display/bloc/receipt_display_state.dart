part of 'receipt_display_bloc.dart';

enum ReceiptDisplayStatus { initial, loading, success, failure }

class ReceiptDisplayState extends Equatable {
  final ReceiptDisplayStatus status;
  final TransactionHeaderEntity? header;
  final ReceiptSettingsModel? receiptSettings;
  final List<TransactionLineItemEntity>? lineItems;

  const ReceiptDisplayState({this.status = ReceiptDisplayStatus.initial, this.header, this.lineItems, this.receiptSettings});

  @override
  List<Object?> get props => [status, header, lineItems, receiptSettings];

  ReceiptDisplayState copyWith({
    ReceiptDisplayStatus? status,
    TransactionHeaderEntity? header,
    ReceiptSettingsModel? receiptSettings,
    List<TransactionLineItemEntity>? lineItems,
  }) {
    return ReceiptDisplayState(
      status: status ?? this.status,
      header: header ?? this.header,
      receiptSettings: receiptSettings ?? this.receiptSettings,
      lineItems: lineItems ?? this.lineItems,
    );
  }
}

