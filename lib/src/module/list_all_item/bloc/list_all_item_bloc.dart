
import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'list_all_item_event.dart';
part 'list_all_item_state.dart';

class ListAllItemBloc extends Bloc<ListAllItemEvent, ListAllItemState> {

  final log = Logger('ListAllItemBloc');
  final AppDatabase db;

  ListAllItemBloc({required this.db}) : super(ListAllItemState()) {
    on<LoadAllItems>(_onLoadItem);
  }

  void _onLoadItem(LoadAllItems event, Emitter<ListAllItemState> emit) async {
    try {
      emit(state.copyWith(status: ListAllItemStatus.loading));
      var prod = await db.productDao.findAllProducts();
      var newProd = prod.map((e) => Product.fromEntity(e)).toList();
      emit(state.copyWith(products: newProd, status: ListAllItemStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ListAllItemStatus.failure));
    }
  }
}
