import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/create_new_customer/new_customer_view.dart';

import '../all_customer/all_customer_view.dart';

class ClientsView extends StatelessWidget {
  const ClientsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AllCustomerView(),
        Positioned(
          bottom: 90,
          right: 10,
          child: OpenContainer(
            transitionType: ContainerTransitionType.fade,
            transitionDuration: const Duration(milliseconds: 500),
            openBuilder: (BuildContext context, VoidCallback _) {
              return const NewCustomerView();
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
