import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/create_new_customer/new_customer_view.dart';
import 'package:receipt_generator/src/widgets/search_bar.dart';

import '../all_customer/all_customer_view.dart';

const List<String> sortOptions = [
  'Sort By Name',
  'Sort By Last',
  'Sort By Date'
];

class ClientsView extends StatelessWidget {
  const ClientsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 50,
          bottom: 0,
          left: 10,
          right: 10,
          child: AllCustomerView(),
        ),
        Positioned(
          bottom: 90,
          right: 20,
          child: OpenContainer(
            transitionType: ContainerTransitionType.fade,
            transitionDuration: const Duration(milliseconds: 300),
            openBuilder: (BuildContext context, VoidCallback _) {
              return const NewCustomerView();
            },
            closedElevation: 6.0,
            closedShape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(5)),
            ),
            closedBuilder: (BuildContext context, void Function() action) {
              return Container(
                height: 45,
                width: 45,
                color: AppColor.primary,
                child: const Center(
                  child: Icon(
                    Icons.person_add_alt_1,
                    color: AppColor.iconColor,
                  ),
                ),
              );
            },
          ),
        ),
        const Positioned(
          top: 5,
          left: 14,
          right: 14,
          child: SearchBar(label: "clients"),
        ),
      ],
    );
  }
}
