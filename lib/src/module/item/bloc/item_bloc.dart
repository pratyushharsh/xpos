import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/sequence_repository.dart';

import '../../../repositories/product_repository.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final log = Logger('ItemBloc');
  final ProductRepository productRepository;
  final AuthenticationBloc authenticationBloc;
  final SequenceRepository sequenceRepository;

  ItemBloc({required this.authenticationBloc, required this.sequenceRepository, required this.productRepository}) : super(ItemState()) {
    on<AddItem>(_onAddItem);
    on<LoadExistingItem>(_onLoadExistingItem);
    on<UpdateItem>(_onUpdateItem);
    on<DeleteItem>(_onDeleteItem);
  }

  void _onLoadExistingItem(LoadExistingItem event, Emitter<ItemState> emit) async {
    if (event.productId == null) {
      emit(state.copyWith(status: ItemStatus.newProduct));
      return;
    }
    emit(state.copyWith(status: ItemStatus.loading,));
    try {
      var product = await productRepository.getProductById(event.productId!);
      if (product != null) {
        emit(state.copyWith(status: ItemStatus.editProduct, existingProduct: product));
      }
    } catch (e) {
      log.severe(e);
    }
  }

  void _onAddItem(AddItem event, Emitter<ItemState> emit) async {
    try {
      int? storeId = authenticationBloc.state.store?.rtlLocId;
      if (storeId == null) return;
      emit(state.copyWith(status: ItemStatus.addingProduct));
      int seq = (await sequenceRepository.getNextSequence(SequenceType.item)).nextSeq;
      ProductEntity e = event.product.toEntity();

      e.id = seq;
      e.productId ??=
          'SKU$seq';

      await productRepository.createNewProduct(e);
      emit(state.copyWith(status: ItemStatus.addingSuccess));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ItemStatus.addingFailure));
    }
  }

  void _onUpdateItem(UpdateItem event, Emitter<ItemState> emit) {}

  void _onDeleteItem(DeleteItem event, Emitter<ItemState> emit) {}
}
