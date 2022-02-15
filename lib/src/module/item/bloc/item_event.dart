part of 'item_bloc.dart';

@immutable
abstract class ItemEvent extends Equatable {
  const ItemEvent();

  @override
  List<Object?> get props => [];
}

class LoadItems extends ItemEvent{}

class AddItem extends ItemEvent {
  final Product product;

  const AddItem(this.product);
}

class UpdateItem extends ItemEvent {

}

class DeleteItem extends ItemEvent {

}
