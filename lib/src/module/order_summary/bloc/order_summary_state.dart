part of 'order_summary_bloc.dart';

enum OrderSummaryStatus { initial, loading, success, failure }

class OrderSummaryState {
  final TransactionHeaderEntity? order;
  final OrderSummaryStatus status;

  const OrderSummaryState(
      {this.order, this.status = OrderSummaryStatus.loading});

  OrderSummaryState copyWith({
    TransactionHeaderEntity? order,
    OrderSummaryStatus? status,
  }) {
    return OrderSummaryState(
        order: order ?? this.order, status: status ?? this.status);
  }
}
