part of 'list_all_item_bloc.dart';

enum ListAllItemStatus { initial, loading, success, failure }

class ListAllItemState {
  final ListAllItemStatus status;
  final List<Product> products;

  ListAllItemState(
      {this.status = ListAllItemStatus.initial,
      this.products = const <Product>[]});

  ListAllItemState copyWith(
      {ListAllItemStatus? status, List<Product>? products}) {
    return ListAllItemState(
        status: status ?? this.status, products: products ?? this.products);
  }
}
