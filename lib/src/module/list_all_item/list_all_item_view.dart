import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/list_all_item/bloc/list_all_item_bloc.dart';

class AllProductsList extends StatelessWidget {
  const AllProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => ListAllItemBloc(db: RepositoryProvider.of(context))..add(LoadAllItems()),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<ListAllItemBloc, ListAllItemState>(
          builder: (context, state) {
            if (state.status == ListAllItemStatus.loading) {
              return const CircularProgressIndicator();
            }
            return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (ctx, idx) {
              return ItemCard(product: state.products[idx]);
            });
          },
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  const ItemCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${product.skuCode ?? product.productId}', style: const TextStyle(fontWeight: FontWeight.w600),),
                Text(product.description, style: const TextStyle(fontWeight: FontWeight.normal),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('₹ ${product.salePrice.toStringAsFixed(2)}', style: const TextStyle(fontWeight: FontWeight.w600)),
                Text('₹ ${product.listPrice.toStringAsFixed(2)}', style: const TextStyle(decoration: TextDecoration.lineThrough),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
