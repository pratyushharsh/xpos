import 'package:flutter/material.dart';
import 'package:receipt_generator/src/module/list_all_item/list_all_item_view.dart';
import 'package:receipt_generator/src/widgets/search_bar.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned(
          top: 5,
          left: 14,
          right: 14,
          child: SearchBar(),
        ),
        Positioned(
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
