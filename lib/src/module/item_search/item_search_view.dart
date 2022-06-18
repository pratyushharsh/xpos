import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/item_search/bloc/item_search_bloc.dart';
import 'package:receipt_generator/src/widgets/custom_text_field.dart';


class SearchItemView extends StatelessWidget {
  const SearchItemView({Key? key}) : super(key: key);

  Widget buildItemCard(BuildContext context, ProductModel product) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop(product);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Text("${product.skuCode ?? product.productId} | ${product.description} | ${product.listPrice}"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (ctx) => ItemSearchBloc(db: RepositoryProvider.of(ctx)),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SearchSaleProductBar(),
              BlocBuilder<ItemSearchBloc, ItemSearchState>(builder: (context, state) {
                return Column(
                  children: state.products.map((e) => buildItemCard(context, e)).toList(),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class SearchSaleProductBar extends StatelessWidget {
  const SearchSaleProductBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomTextField(
      label: "Search For Products",
      onValueChange: (val) {
        if (val.length >= 3) {
          BlocProvider.of<ItemSearchBloc>(context).add(SearchItemByFilter(val));
        }
      },
    );
  }
}
