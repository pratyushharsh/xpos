import 'package:flutter/material.dart';
import 'package:receipt_generator/src/widgets/search_bar.dart';

import '../../config/theme_settings.dart';
import '../list_all_receipt/list_all_receipt_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            color: AppColor.primary,
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Row(
              children: const [
                Text("Dashboard", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 35,
          left: 10,
          right: 10,
          child: SearchBar(label: "dashboard", hintText: "Search by Receipt Id, Phone Number",),
        ),
        const Positioned(
          top: 80,
          bottom: 0,
          left: 10,
          right: 10,
          child: ListAllReceiptView(),
        ),
      ],
    );
  }
}
