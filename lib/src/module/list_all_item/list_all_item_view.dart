import 'dart:math';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/list_all_item/bloc/list_all_item_bloc.dart';
import 'package:receipt_generator/src/widgets/extension/retail_extension.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';

import '../../entity/pos/entity.dart';
import '../../widgets/custom_image.dart';
import '../create_new_item/add_new_item_view.dart';

class WidgetNoItems extends StatelessWidget {
  const WidgetNoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.dashboard_customize_outlined,
                size: 100, color: AppColor.iconColor),
            Text("Add your items to proceed with sale.",
                style: TextStyle(
                    color: AppColor.iconColor, fontStyle: FontStyle.italic)),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

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
              child: state.products.isEmpty
                  ? const WidgetNoItems()
                  : ListView.builder(
                      itemCount: state.products.length + 1,
                      itemBuilder: (ctx, idx) {
                        if (idx == state.products.length) {
                          if (!state.end &&
                              state.status !=
                                  ListAllItemStatus.loadingNextProducts) {
                            BlocProvider.of<ListAllItemBloc>(context)
                                .add(LoadNextProduct());
                          }
                          return SizedBox(
                            height: 200,
                            child: ListAllItemStatus.loadingNextProducts ==
                                    state.status
                                ? const MyLoader(
                                    color: AppColor.color6,
                                  )
                                : Container(),
                          );
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
            transitionDuration: const Duration(milliseconds: 300),
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
        onTap: () {
          Navigator.of(context).pushNamed(RouteConfig.editItemScreen,
              arguments: product.productId);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: product.imageUrl.isNotEmpty
                      ? CustomImage(
                          url: product.imageUrl[0],
                        )
                      : Container(),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.displayName,
                            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            '${product.productId ?? product.skuCode}',
                            style: const TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          if (product.brand != null && product.brand!.isNotEmpty)
                          ProductCategoryChip(
                            category: product.brand!,
                            fontWeight: FontWeight.w600,
                          ),
                          ...product.category.map((e) => ProductCategoryChip(category: e)).toList(),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (product.salePrice != null && product.salePrice! > 0)
                      Text(
                          getCurrencyFormatter(context)
                              .format(product.salePrice!),
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                    if (product.listPrice != null)
                      Text(
                        getCurrencyFormatter(context).format(product.listPrice!),
                        style:
                            (product.salePrice != null && product.salePrice! > 0)
                                ? const TextStyle(
                                    decoration: TextDecoration.lineThrough, fontStyle: FontStyle.italic, color: AppColor.color5)
                                : const TextStyle(),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCategoryChip extends StatelessWidget {
  final String category;
  final FontWeight fontWeight;
  const ProductCategoryChip({Key? key, required this.category, this.fontWeight = FontWeight.normal}) : super(key: key);
  static Map<String, Color> categoryColor = {};

  @override
  Widget build(BuildContext context) {
    late Color color;

    if (!categoryColor.containsKey(category)) {
      // categoryColor[category] = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      categoryColor[category] = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    }
     color = categoryColor[category]!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color),
      ),
      child: Text(category, style: TextStyle(fontWeight: fontWeight, color: color),),
    );
  }
}
