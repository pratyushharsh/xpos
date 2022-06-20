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

enum CreateSaleStep { item, payment, customer, complete, confirmed }

class CreateNewReceiptState extends Equatable {
  final int transSeq;
  final List<SaleLine> lineItem;
  final List<TenderLineItem> tenderLine;
  final ContactEntity? selectedCustomer;
  final CreateNewReceiptStatus status;
  final CreateSaleStep step;
  final List<ContactEntity> customerSuggestion;
  final List<ContactEntity> phoneContactSuggestion;
  final CustomerSearchState customerSearchState;

  const CreateNewReceiptState(
      {this.lineItem = const [],
      this.tenderLine = const [],
      this.transSeq = -1,
      required this.status,
      this.step = CreateSaleStep.item,
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

  double get items {
    return lineItem.fold(
        0.0, (previousValue, element) => previousValue + element.qty);
  }

  double get paidAmount {
    return tenderLine.fold(
        0.0, (previousValue, element) => previousValue + element.amount);
  }

  double get amountDue {
    return grandTotal - paidAmount;
  }

  CreateNewReceiptState copyWith({
    int? transSeq,
    List<SaleLine>? lineItem,
    List<TenderLineItem>? tenderLine,
    ContactEntity? selectedCustomer,
    CreateNewReceiptStatus? status,
    CreateSaleStep? step,
    List<ContactEntity>? customerSuggestion,
    List<ContactEntity>? phoneContactSuggestion,
    CustomerSearchState? customerSearchState,
  }) {
    return CreateNewReceiptState(
      transSeq: transSeq ?? this.transSeq,
      lineItem: lineItem ?? this.lineItem,
      tenderLine: tenderLine ?? this.tenderLine,
      selectedCustomer: selectedCustomer ?? this.selectedCustomer,
      status: status ?? this.status,
      step: step ?? this.step,
      customerSuggestion: customerSuggestion ?? this.customerSuggestion,
      phoneContactSuggestion:
          phoneContactSuggestion ?? this.phoneContactSuggestion,
      customerSearchState: customerSearchState ?? this.customerSearchState,
    );
  }

  @override
  List<Object?> get props => [
        lineItem,
        transSeq,
        status,
        step,
    tenderLine,
        customerSuggestion,
        selectedCustomer,
        phoneContactSuggestion,
        customerSearchState
      ];
}
