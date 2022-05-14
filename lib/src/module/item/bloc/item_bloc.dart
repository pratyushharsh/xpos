import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final log = Logger('ItemBloc');
  final AppDatabase db;
  final AuthenticationBloc authenticationBloc;

  ItemBloc({required this.db, required this.authenticationBloc}) : super(ItemState()) {
    on<AddItem>(_onAddItem);
    on<LoadExistingItem>(_onLoadExistingItem);
    on<UpdateItem>(_onUpdateItem);
    on<DeleteItem>(_onDeleteItem);
  }

  void _onLoadExistingItem(LoadExistingItem event, Emitter<ItemState> emit) async {
    if (event.productId == null) return;
    try {
      var product = await db.productDao.findProductById(event.productId!);
      if (product != null) {
        emit(state.copyWith(status: ItemStatus.editProduct, existingProduct: product));
      }
    } catch (e) {
      log.severe(e);
    }
  }

  void _onAddItem(AddItem event, Emitter<ItemState> emit) async {
    try {
      String? storeId = authenticationBloc.state.store?.rtlLocId;
      if (storeId == null) return;
      emit(state.copyWith(status: ItemStatus.addingProduct));
      ProductEntity e = event.product.toEntity();


      // Product p = Product(
      //   id: "STORE#1000",
      //   sk: "ITEM#$itemId",
      //   description: event.product.description,
      //   tax: event.product.tax,
      //   productId: itemId,
      //   brand: event.product.brand,
      //   purchasePrice: event.product.purchasePrice,
      //   salePrice: event.product.salePrice,
      //   enable: true,
      //   uom: event.product.uom,
      //   hsn: event.product.hsn,
      //   listPrice: event.product.listPrice,
      //   skuCode: event.product.skuCode
      // );

      e.productId ??=
          'SKU${(await db.sequenceDao.getNextSequence("PRODUCT_ID")).nextSeq}';
      e.storeId = storeId;
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
