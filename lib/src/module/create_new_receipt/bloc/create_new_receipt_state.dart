part of 'create_new_receipt_bloc.dart';

enum CreateNewReceiptStatus {
  initial,
  created,
  saleComplete,
  paymentAwaiting,
  loading,
  success,
  error
}

class CreateNewReceiptState {
  final String? customerId;
  final String? customerPhone;
  final String? customerAddress;
  final String? customerName;
  final List<SaleLine> lineItem;
  final int transSeq;
  final CreateNewReceiptStatus status;
  final List<ContactEntity> customerSuggestion;

  CreateNewReceiptState(
      {this.lineItem = const [],
      this.transSeq = -1,
      required this.status,
      this.customerId,
      this.customerPhone,
      this.customerAddress,
      this.customerName,
      this.customerSuggestion = const []});

  double get subTotal {
    return lineItem.fold(
        0.0, (previousValue, element) => previousValue + element.amount);
  }

  double get discount {
    return lineItem.fold(
        0.0, (previousValue, element) => previousValue + element.discount);
  }

  double get tax {
    return lineItem.fold(
        0.0, (previousValue, element) => previousValue + element.tax);
  }

  double get grandTotal {
    return subTotal - discount + tax;
  }

  CreateNewReceiptState copyWith(
      {List<SaleLine>? lineItem,
      int? transSeq,
      CreateNewReceiptStatus? status,
      String? customerId,
      String? customerPhone,
      String? customerAddress,
      String? customerName, List<ContactEntity>? customerSuggestion}) {
    return CreateNewReceiptState(
        lineItem: lineItem ?? this.lineItem,
        transSeq: transSeq ?? this.transSeq,
        status: status ?? this.status,
        customerId: customerId ?? this.customerId,
        customerPhone: customerPhone ?? this.customerPhone,
        customerAddress: customerAddress ?? this.customerAddress,
        customerName: customerName ?? this.customerName,
    customerSuggestion: customerSuggestion ?? this.customerSuggestion);
  }

  @override
  String toString() {
    return 'CreateNewReceiptState{customerId: $customerId, customerPhone: $customerPhone, customerAddress: $customerAddress, customerName: $customerName, transSeq: $transSeq, status: $status}';
  }
}
