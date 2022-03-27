part of 'list_all_item_bloc.dart';

enum ListAllItemStatus { initial, loading, success, failure }

class ListAllItemState {
  final ListAllItemStatus status;
  final List<ProductModel> products;

  ListAllItemState(
      {this.status = ListAllItemStatus.initial,
      this.products = const <ProductModel>[]});

  ListAllItemState copyWith(
      {ListAllItemStatus? status, List<ProductModel>? products}) {
    return ListAllItemState(
        status: status ?? this.status, products: products ?? this.products);
  }
}
