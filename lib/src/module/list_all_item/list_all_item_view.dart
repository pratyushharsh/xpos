import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/list_all_item/bloc/list_all_item_bloc.dart';

import '../create_new_item/add_new_item_view.dart';


class AllProductsList extends StatelessWidget {
  const AllProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => ListAllItemBloc(db: RepositoryProvider.of(context))
        ..add(LoadAllItems()),
      child: Stack(
        children: [
          BlocBuilder<ListAllItemBloc, ListAllItemState>(
            builder: (context, state) {
              if (state.status == ListAllItemStatus.loading) {
                return const CircularProgressIndicator();
              }
              return RefreshIndicator(
                onRefresh: () async {
                  BlocProvider.of<ListAllItemBloc>(context).add(LoadAllItems());
                },
                child: ListView.builder(
                    itemCount: state.products.length,
                    itemBuilder: (ctx, idx) {
                      return ItemCard(product: state.products[idx]);
                    }),
              );
            },
          ),
          Positioned(
            bottom: 90,
            right: 10,
            child: OpenContainer(
              transitionType: ContainerTransitionType.fade,
              transitionDuration: const Duration(milliseconds: 500),
              openBuilder: (BuildContext context, VoidCallback _) {
                return const AddNewItemScreen();
              },
              closedElevation: 6.0,
              closedShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              closedBuilder: (BuildContext context, void Function() action) {
                return Container(
                  height: 40,
                  width: 40,
                  color: AppColor.primary,
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: AppColor.iconColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final ProductModel product;
  const ItemCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        onLongPress: () {
          Navigator.of(context).pushNamed(RouteConfig.editItemScreen, arguments: product.productId);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${product.skuCode ?? product.productId}',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    product.description,
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (product.salePrice != null)
                  Text('₹ ${product.salePrice!.toStringAsFixed(2)}',
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  if (product.listPrice != null)
                  Text(
                    '₹ ${product.listPrice!.toStringAsFixed(2)}',
                    style:
                        const TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
