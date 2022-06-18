
import 'package:bloc/bloc.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/model/model.dart';

part 'item_search_event.dart';
part 'item_search_state.dart';

class ItemSearchBloc extends Bloc<ItemSearchEvent, ItemSearchState> {

  final log = Logger('ItemSearchBloc');
  final Isar db;
  
  ItemSearchBloc({ required this.db }) : super(ItemSearchState()) {
    on<SearchItemByFilter>(_onSearchItem);
  }

  void _onSearchItem(SearchItemByFilter event, Emitter<ItemSearchState> emit) async {
    if (event.filter.isEmpty) {
      emit(state.copyWith(products: [], status: ItemSearchStatus.success));
      return;
    }

    try {
      emit(state.copyWith(status: ItemSearchStatus.loading));
      var prod = await db.productEntitys.where().descriptionWordsAnyStartsWith(event.filter).limit(10).findAll();
      log.info(prod);
      var newProd = prod.map((e) => ProductModel.fromEntity(e)).toList();
      emit(state.copyWith(products: newProd, status: ItemSearchStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ItemSearchStatus.failure));
    }
  }
}
