import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'item_search_event.dart';
part 'item_search_state.dart';

class ItemSearchBloc extends Bloc<ItemSearchEvent, ItemSearchState> {

  final log = Logger('ItemSearchBloc');
  final AppDatabase db;
  
  ItemSearchBloc({ required this.db }) : super(ItemSearchState()) {
    on<SearchItemByFilter>(_onSearchItem);
  }

  void _onSearchItem(SearchItemByFilter event, Emitter<ItemSearchState> emit) async {
    try {
      emit(state.copyWith(status: ItemSearchStatus.loading));
      var prod = await db.productDao.findAllProductsByText('%${event.filter}%');
      log.info(prod);
      var newProd = prod.map((e) => Product.fromEntity(e)).toList();
      emit(state.copyWith(products: newProd, status: ItemSearchStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ItemSearchStatus.failure));
    }
  }
}
