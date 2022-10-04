part of 'create_new_receipt_bloc.dart';

enum CreateNewReceiptStatus {
  initial,
  created,

  inProgress,

  saleError,
  saleComplete,
  paymentAwaiting,

  quantityUpdate,
  priceUpdate,
  discountUpdate,

  loading,
  success,
  error
}

enum CustomerAction { remove, add }

enum SaleStep { item, payment, customer, complete, printAndEmail, confirmed }

class CreateNewReceiptState extends Equatable {
  final int transSeq;
  final List<TransactionLineItemEntity> lineItem;
  final List<TransactionPaymentLineItemEntity> tenderLine;
  final Map<String, ProductEntity> productMap;
  final ContactEntity? customer;
  final CreateNewReceiptStatus status;
  final SaleStep step;

  const CreateNewReceiptState({
    this.lineItem = const [],
    this.tenderLine = const [],
    this.transSeq = -1,
    this.productMap = const {},
    required this.status,
    this.step = SaleStep.item,
    this.customer,
  });

  bool get isCustomerPresent {
    return customer != null;
  }

  double get total {
    return lineItem.fold(0.0,
                (previousValue, element) => previousValue + element.grossAmount!);
  }

  double get subTotal {
    return lineItem.fold(0.0,
            (previousValue, element) => previousValue + element.netAmount!);
  }

  double get discount {
    return lineItem.fold(0.0,
        (previousValue, element) => previousValue + element.discountAmount!);
  }

  double get tax {
    return lineItem.fold(
        0.0, (previousValue, element) => previousValue + element.taxAmount!);
  }

  double get items {
    return lineItem.fold(
        0.0, (previousValue, element) => previousValue + element.quantity!);
  }

  double get paidAmount {
    return tenderLine.fold(
        0.0, (previousValue, element) => previousValue + element.amount!);
  }

  double get amountDue {
    return total - paidAmount - roundedAmount;
  }

  double get roundedAmount {
    var rawAmount = total - paidAmount;
    var roundedAmount = (rawAmount * 100).roundToDouble() / 100;
    return (total - paidAmount) - roundedAmount;
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
    Map<String, ProductEntity>? productMap,
    CreateNewReceiptStatus? status,
    SaleStep? step,
    CustomerAction? customerAction,
  }) {
    return CreateNewReceiptState(
      transSeq: transSeq ?? this.transSeq,
      lineItem: lineItem ?? this.lineItem,
      tenderLine: tenderLine ?? this.tenderLine,
      productMap: productMap ?? this.productMap,
      customer: customerAction != null
          ? (CustomerAction.remove == customerAction
              ? null
              : (customer ?? this.customer))
          : (customer ?? this.customer),
      status: status ?? this.status,
      step: step ?? this.step,
    );
  }
}
