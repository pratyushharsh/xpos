part of 'item_bloc.dart';

enum ItemStatus {
  initial,
  addingProduct,
  addingSuccess,
  addingFailure,
  loading,
  loadingSuccess,
  loadingFailure,
  editProduct
}

class ItemState extends Equatable {
  final ItemStatus status;
  final ProductEntity? existingProduct;

  const ItemState(
      {this.status = ItemStatus.initial,
      this.existingProduct})
      : assert(status == ItemStatus.editProduct ? existingProduct != null : true);

  @override
  String toString() {
    return 'ItemState{status: $status,}';
  }

  @override
  List<Object?> get props => [status, existingProduct];

  ItemState copyWith({
    ItemStatus? status,
    ProductEntity? existingProduct,
  }) {
    return ItemState(
      status: status ?? this.status,
      existingProduct: existingProduct ?? this.existingProduct,
    );
  }
}
