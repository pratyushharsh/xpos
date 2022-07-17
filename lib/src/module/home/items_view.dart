import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/module/list_all_item/list_all_item_view.dart';
import 'package:receipt_generator/src/widgets/search_bar.dart';

import '../list_all_item/bloc/list_all_item_bloc.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => ListAllItemBloc(db: RepositoryProvider.of(context))
        ..add(LoadAllItems()),
      child: const  ItemViewWidgets(),
    );
  }
}

class ItemViewWidgets extends StatelessWidget {
  const ItemViewWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 5,
          left: 14,
          right: 14,
          child: SearchBar(label: "items", onChanged: (value) {
            if (value.length > 3) {
              BlocProvider.of<ListAllItemBloc>(context).add(SearchProductByNameFilter(value));
            }
          },),
        ),
        const Positioned(
          top: 50,
          bottom: 0,
          left: 10,
          right: 10,
          child: AllProductsList(),
        ),
      ],
    );
  }
}
