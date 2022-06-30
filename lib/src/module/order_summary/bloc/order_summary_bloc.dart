import 'package:bloc/bloc.dart';
import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

part 'order_summary_event.dart';
part 'order_summary_state.dart';

class OrderSummaryBloc extends Bloc<OrderSummaryEvent, OrderSummaryState> {

  final int orderId;
  final Isar db;

  OrderSummaryBloc({required this.orderId, required this.db}) : super(const OrderSummaryState()) {
    on<LoadOrderDetail>(_fetchOrderDetail);
    add(LoadOrderDetail());
  }

  void _fetchOrderDetail(LoadOrderDetail event,
      Emitter<OrderSummaryState> emit) async {
      emit(state.copyWith(status: OrderSummaryStatus.loading));
      TransactionHeaderEntity? order = await db.transactionHeaderEntitys.get(orderId);
      order?.lineItems.loadSync();
      order?.paymentLineItems.loadSync();
      emit(state.copyWith(order: order));
      emit(state.copyWith(status: OrderSummaryStatus.success));
  }
}
