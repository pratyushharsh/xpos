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

enum CreateSaleStep { item, payment, customer, complete, confirmed }

class CreateNewReceiptState extends Equatable {
  final int transSeq;
  final List<TransactionLineItemEntity> lineItem;
  final List<TransactionPaymentLineItemEntity> tenderLine;
  final Map<String, ProductModel> productMap;
  final ContactEntity? customer;
  final CreateNewReceiptStatus status;
  final CreateSaleStep step;

  const CreateNewReceiptState({
    this.lineItem = const [],
    this.tenderLine = const [],
    this.transSeq = -1,
    this.productMap = const {},
    required this.status,
    this.step = CreateSaleStep.item,
    this.customer,
  });

  double get subTotal {
    return lineItem.fold(0.0,
        (previousValue, element) => previousValue + element.extendedAmount);
  }

  double get discount {
    return lineItem.fold(0.0, (previousValue, element) => previousValue + 0.0);
  }

  double get tax {
    return lineItem.fold(
        0.0, (previousValue, element) => previousValue + element.taxAmount);
  }

  double get grandTotal {
    return subTotal - discount + tax;
  }

  double get items {
    return lineItem.fold(
        0.0, (previousValue, element) => previousValue + element.quantity);
  }

  double get paidAmount {
    return tenderLine.fold(
        0.0, (previousValue, element) => previousValue + element.amount);
  }

  double get amountDue {
    return grandTotal - paidAmount;
  }

  @override
  List<Object?> get props => [
        lineItem,
        transSeq,
        status,
        productMap,
        step,
        tenderLine,
        customer,
      ];

  CreateNewReceiptState copyWith({
    int? transSeq,
    List<TransactionLineItemEntity>? lineItem,
    List<TransactionPaymentLineItemEntity>? tenderLine,
    ContactEntity? customer,
    Map<String, ProductModel>? productMap,
    CreateNewReceiptStatus? status,
    CreateSaleStep? step,
  }) {
    return CreateNewReceiptState(
      transSeq: transSeq ?? this.transSeq,
      lineItem: lineItem ?? this.lineItem,
      tenderLine: tenderLine ?? this.tenderLine,
      productMap: productMap ?? this.productMap,
      customer: customer ?? this.customer,
      status: status ?? this.status,
      step: step ?? this.step,
    );
  }
}
