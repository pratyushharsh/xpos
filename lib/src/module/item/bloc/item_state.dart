part of 'item_bloc.dart';

enum ItemStatus {
  initial,
  addingProduct,
  addingSuccess,
  addingFailure,
  loading,
  loadingSuccess,
  loadingFailure
}

class ItemState extends Equatable {
  final ItemStatus status;
  final List<Product> products;

  const ItemState(
      {this.status = ItemStatus.initial, this.products = const <Product>[]});

  ItemState copyWith({ItemStatus? status, List<Product>? products}) {
    return ItemState(
        status: status ?? this.status, products: products ?? this.products);
  }

  @override
  String toString() {
    return 'ItemState{status: $status, products: $products}';
  }

  @override
  List<Object?> get props => [status, products];
}
