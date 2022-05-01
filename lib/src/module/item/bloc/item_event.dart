part of 'item_bloc.dart';

@immutable
abstract class ItemEvent extends Equatable {
  const ItemEvent();

  @override
  List<Object?> get props => [];
}

class LoadExistingItem extends ItemEvent {
  final String? productId;
  const LoadExistingItem(this.productId);
}

class LoadItems extends ItemEvent{}

class AddItem extends ItemEvent {
  final ProductModel product;

  const AddItem(this.product);
}

class UpdateItem extends ItemEvent {

}

class DeleteItem extends ItemEvent {

}
