import 'dart:async';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/models/Product.dart';
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

      String itemId = UUID.getUUID();

      Product p = Product(
        id: "STORE#1000",
        sk: "ITEM$itemId",
        description: event.product.description,
        tax: event.product.tax,
        productId: itemId,
        brand: event.product.brand,
        purchasePrice: event.product.purchasePrice,
        salePrice: event.product.salePrice,
        enable: true,
        uom: event.product.uom,
        hsn: event.product.hsn,
        listPrice: event.product.listPrice,
        skuCode: event.product.skuCode
      );

      e.productId ??=
          'SKU${(await db.sequenceDao.getNextSequence("PRODUCT_ID")).nextSeq}';
      await db.productDao.insertItem(e);
      emit(state.copyWith(status: ItemStatus.addingSuccess));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ItemStatus.addingFailure));
    }
  }

  void _onUpdateItem(UpdateItem event, Emitter<ItemState> emit) {}

  void _onDeleteItem(DeleteItem event, Emitter<ItemState> emit) {}
}
