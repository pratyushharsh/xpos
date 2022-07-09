import 'package:flutter/material.dart';

import '../create_new_receipt/sale_complete_dialog.dart';

class LineItemModificationView extends StatelessWidget {
  const LineItemModificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          "Modify line item",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Divider(),
        SizedBox(
          height: 90,
          child: Row(
            children: [
              Expanded(
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  DialogButton(
                    label: "Price",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Quantity",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Discount",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Discount",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Discount",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Price",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Quantity",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Discount",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Discount",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Discount",
                    onClick: () {},
                  ),
                  DialogButton(
                    label: "Discount",
                    onClick: () {},
                  ),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
