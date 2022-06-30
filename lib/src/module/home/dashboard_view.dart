import 'package:flutter/material.dart';
import 'package:receipt_generator/src/widgets/search_bar.dart';

import '../list_all_receipt/list_all_receipt_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned(
          top: 5,
          left: 14,
          right: 14,
          child: SearchBar(label: "dashboard",),
        ),
        Positioned(
          top: 50,
          bottom: 0,
          left: 10,
          right: 10,
          child: ListAllReceiptView(),
        ),
      ],
    );
  }
}
