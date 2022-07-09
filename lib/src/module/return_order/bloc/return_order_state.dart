part of 'return_order_bloc.dart';

enum ReturnOrderExistStatus {
  initial,
  success,
  loading,
  error,
  notFound,
}

class ReturnOrderState {
  final ReturnOrderExistStatus status;
  final TransactionHeaderEntity? order;
  final String? errorMessage;
  final List<TransactionLineItemEntity> returnedLineItem;
  final Map<String, double> alreadyReturnedOrderMap;
  final Map<TransactionLineItemEntity, ReturnLineItemParameters> returnMap;

  const ReturnOrderState(
      {this.status = ReturnOrderExistStatus.initial,
      this.order,
      this.errorMessage,
      this.returnedLineItem = const [],
      this.alreadyReturnedOrderMap = const {},
      this.returnMap = const {}})
      : assert(status == ReturnOrderExistStatus.success ? order != null : true);

  ReturnOrderState copyWith(
      {ReturnOrderExistStatus? status,
      TransactionHeaderEntity? order,
      String? errorMessage,
      List<TransactionLineItemEntity>? returnedLineItem,
      Map<String, double>? alreadyReturnedOrderMap,
      Map<TransactionLineItemEntity, ReturnLineItemParameters>? returnMap}) {
    return ReturnOrderState(
        status: status ?? this.status,
        order: order ?? this.order,
        errorMessage: errorMessage ?? this.errorMessage,
        returnedLineItem: returnedLineItem ?? this.returnedLineItem,
        alreadyReturnedOrderMap:
            alreadyReturnedOrderMap ?? this.alreadyReturnedOrderMap,
        returnMap: returnMap ?? this.returnMap);
  }

  @override
  String toString() {
    return 'ReturnOrderState{status: $status, order: $order, errorMessage: $errorMessage, returnMap: $returnMap}';
  }
}

class ReturnLineItemParameters {
  final List<String> reasonCode;
  final double quantity;

  ReturnLineItemParameters({required this.reasonCode, required this.quantity});
}
