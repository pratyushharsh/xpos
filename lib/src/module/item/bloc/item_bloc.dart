import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {

  final log = Logger('ItemBloc');
  final AppDatabase db;

  ItemBloc({required this.db}) : super(const ItemState()) {
    on<AddItem>(_onAddItem);
    on<UpdateItem>(_onUpdateItem);
    on<DeleteItem>(_onDeleteItem);
  }

  void _onAddItem(AddItem event, Emitter<ItemState> emit) async {
    try {
      emit(state.copyWith(status: ItemStatus.addingProduct));
      ProductEntity e = event.product.toEntity();
      e.productId ??= 'SKU${(await db.sequenceDao.getNextSequence("PRODUCT_ID")).nextSeq}';
      await db.productDao.insertItem(e);
      emit(state.copyWith(status: ItemStatus.addingSuccess));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ItemStatus.addingFailure));
    }
  }

  void _onUpdateItem(UpdateItem event, Emitter<ItemState> emit) {

  }

  void _onDeleteItem(DeleteItem event, Emitter<ItemState> emit) {

  }
}
