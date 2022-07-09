import 'dart:io';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/list_all_item/bloc/list_all_item_bloc.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';

import '../../entity/pos/entity.dart';
import '../create_new_item/add_new_item_view.dart';

class AllProductsList extends StatelessWidget {
  const AllProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  itemCount: state.products.length + 1,
                  itemBuilder: (ctx, idx) {
                    if (idx == state.products.length) {
                      if (!state.end && state.status != ListAllItemStatus.loadingNextProducts) {
                        BlocProvider.of<ListAllItemBloc>(context).add(LoadNextProduct());
                      }
                      return SizedBox(height: 200, child: ListAllItemStatus.loadingNextProducts == state.status ? const MyLoader(color: AppColor.color6,) : Container(),);
                    }
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
    );
  }
}

class ItemCard extends StatelessWidget {
  final ProductEntity product;
  const ItemCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        onLongPress: () {
          Navigator.of(context).pushNamed(RouteConfig.editItemScreen,
              arguments: product.productId);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: product.imageUrl.isNotEmpty
                    ? Image.file(
                        File(
                            "/Users/pratyushharsh/Library/Containers/com.nearbai.receiptGenerator/Data/Documents/image/" +
                                product.imageUrl[0]),
                        cacheHeight: 200,
                        cacheWidth: 200,
                      )
                    : Container(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${product.productId ?? product.skuCode}',
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      product.displayName,
                      style: const TextStyle(fontWeight: FontWeight.normal),
                    ),
                    Text(
                      product.imageUrl.toString(),
                      style: const TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (product.salePrice != null && product.salePrice! > 0)
                    Text('₹ ${product.salePrice!.toStringAsFixed(2)}',
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                  if (product.listPrice != null)
                    Text(
                      '₹ ${product.listPrice!.toStringAsFixed(2)}',
                      style:
                          (product.salePrice != null && product.salePrice! > 0)
                              ? const TextStyle(
                                  decoration: TextDecoration.lineThrough)
                              : const TextStyle(),
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
