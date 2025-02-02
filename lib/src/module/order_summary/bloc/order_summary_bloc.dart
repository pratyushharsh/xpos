import 'package:bloc/bloc.dart';
import 'package:isar/isar.dart';
import 'package:receipt_generator/src/database/db_provider.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

part 'order_summary_event.dart';
part 'order_summary_state.dart';

class OrderSummaryBloc extends Bloc<OrderSummaryEvent, OrderSummaryState> with DatabaseProvider {

  final int orderId;


  OrderSummaryBloc({required this.orderId}) : super(const OrderSummaryState()) {
    on<LoadOrderDetail>(_fetchOrderDetail);
    add(LoadOrderDetail());
  }

  void _fetchOrderDetail(LoadOrderDetail event,
      Emitter<OrderSummaryState> emit) async {
      emit(state.copyWith(status: OrderSummaryStatus.loading));
      TransactionHeaderEntity? order = await db.transactionHeaderEntitys.get(orderId);
      if (order == null) {
        emit(state.copyWith(status: OrderSummaryStatus.failure));
        return;
      }
      Map<String, ProductEntity> pm = Map.from(state.productMap);
      // order.lineItems.loadSync();
      // for (var element in order.lineItems) {
      //     await element.lineModifiers.load();
      //     await element.taxModifiers.load();
      // }
      // await order.paymentLineItems.load();

      for(var x in order.lineItems) {
        ProductEntity? pe = db.productEntitys.where().productIdEqualTo(x.itemId).findFirstSync();
        if (pe != null) {
          pm.putIfAbsent(x.itemId!, () => pe);
        }
      }

      emit(state.copyWith(order: order, status: OrderSummaryStatus.success, productMap: pm));
  }
}
