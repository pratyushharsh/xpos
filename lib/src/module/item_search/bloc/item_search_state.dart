part of 'item_search_bloc.dart';

enum ItemSearchStatus { initial, loading, success, failure }

class ItemSearchState {
  final ItemSearchStatus status;
  final List<Product> products;

  ItemSearchState(
      {this.status = ItemSearchStatus.initial,
        this.products = const <Product>[]});

  ItemSearchState copyWith(
      {ItemSearchStatus? status, List<Product>? products}) {
    return ItemSearchState(
        status: status ?? this.status, products: products ?? this.products);
  }
}
