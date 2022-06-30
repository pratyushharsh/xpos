import 'package:bloc/bloc.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/model/model.dart';

part 'list_all_item_event.dart';
part 'list_all_item_state.dart';

class ListAllItemBloc extends Bloc<ListAllItemEvent, ListAllItemState> {
  final log = Logger('ListAllItemBloc');
  final Isar db;

  ListAllItemBloc({required this.db}) : super(ListAllItemState()) {
    on<LoadAllItems>(_onLoadItem);
    on<LoadNextProduct>(_onLoadNextProducts);
    on<SearchProductByNameFilter>(_filerProductsByDisplayName);
  }

  void _onLoadItem(LoadAllItems event, Emitter<ListAllItemState> emit) async {
    try {
      emit(state.copyWith(status: ListAllItemStatus.loading));
      var prod = [];
      if (state.filterCriteria.filter != null && state.filterCriteria.filter!.isNotEmpty) {
        prod = await db.productEntitys
            .where()
            .productIdEqualTo(state.filterCriteria.filter)
            .or()
            .descriptionWordsAnyStartsWith(state.filterCriteria.filter!)
            .offset(state.products.length)
            .limit(state.filterCriteria.limit).findAll();
      } else {
        prod = await db.productEntitys.where().offset(state.products.length).limit(state.filterCriteria.limit).findAll();
      }

      var newProd = prod.map((e) => ProductModel.fromEntity(e)).toList();
      emit(
          state.copyWith(products: newProd, status: ListAllItemStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ListAllItemStatus.failure));
    }
  }

  void _onLoadNextProducts(LoadNextProduct event, Emitter<ListAllItemState> emit) async {
    emit(state.copyWith(status: ListAllItemStatus.loadingNextProducts));
    try {
      var prod = [];
      if (state.filterCriteria.filter != null && state.filterCriteria.filter!.isNotEmpty) {
        prod = await db.productEntitys
            .where()
            .productIdEqualTo(state.filterCriteria.filter)
            .or()
            .descriptionWordsAnyStartsWith(state.filterCriteria.filter!)
            .offset(state.products.length)
            .limit(state.filterCriteria.limit).findAll();
      } else {
        prod = await db.productEntitys.where().offset(state.products.length).limit(state.filterCriteria.limit).findAll();
      }
      var newProd = prod.map((e) => ProductModel.fromEntity(e)).toList();
      List<ProductModel> newProducts = [...state.products, ...newProd];
      emit(state.copyWith(status: ListAllItemStatus.success, products: newProducts, end: newProd.isEmpty));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ListAllItemStatus.failure,));
    }
  }

  void _filerProductsByDisplayName(SearchProductByNameFilter event, Emitter<ListAllItemState> emit) async {
    var fc = state.filterCriteria;
    emit(state.copyWith(filterCriteria: fc.copyWith(filter: event.filterString)));
    add(LoadAllItems());
  }
}
