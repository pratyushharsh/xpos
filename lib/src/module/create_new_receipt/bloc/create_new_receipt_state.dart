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

enum CustomerSearchState { initial, searching, selected }

class CreateNewReceiptState extends Equatable {
  final int transSeq;
  final List<SaleLine> lineItem;
  final List<TenderLineItem> tenderLine;
  final ContactEntity? selectedCustomer;
  final CreateNewReceiptStatus status;
  final List<ContactEntity> customerSuggestion;
  final List<ContactEntity> phoneContactSuggestion;
  final CustomerSearchState customerSearchState;

  const CreateNewReceiptState(
      {this.lineItem = const [],
        this.tenderLine = const [],
      this.transSeq = -1,
      required this.status,
      this.selectedCustomer,
      this.customerSearchState = CustomerSearchState.initial,
      this.phoneContactSuggestion = const [],
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
      String? customerName,
      ContactEntity? selectedCustomer,
      CustomerSearchState? customerSearchState,
      List<ContactEntity>? customerSuggestion,
      List<ContactEntity>? phoneContactSuggestion}) {
    return CreateNewReceiptState(
        lineItem: lineItem ?? this.lineItem,
        transSeq: transSeq ?? this.transSeq,
        status: status ?? this.status,
        selectedCustomer: selectedCustomer ?? this.selectedCustomer,
        customerSearchState: customerSearchState ?? this.customerSearchState,
        customerSuggestion: customerSuggestion ?? this.customerSuggestion,
        phoneContactSuggestion:
            phoneContactSuggestion ?? this.phoneContactSuggestion);
  }

  @override
  List<Object?> get props => [
        lineItem,
        transSeq,
        status,
        customerSuggestion,
        selectedCustomer,
        phoneContactSuggestion,
        customerSearchState
      ];
}
