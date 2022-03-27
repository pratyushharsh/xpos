part of 'item_search_bloc.dart';

enum ItemSearchStatus { initial, loading, success, failure }

class ItemSearchState {
  final ItemSearchStatus status;
  final List<ProductModel> products;

  ItemSearchState(
      {this.status = ItemSearchStatus.initial,
        this.products = const <ProductModel>[]});

  ItemSearchState copyWith(
      {ItemSearchStatus? status, List<ProductModel>? products}) {
    return ItemSearchState(
        status: status ?? this.status, products: products ?? this.products);
  }
}
