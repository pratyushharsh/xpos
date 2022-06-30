import 'package:flutter/material.dart';

import '../return_order/return_order_view.dart';

class PosActionBar extends StatelessWidget {
  const PosActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PosActionButton(
                text: "Return",
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) {
                        return Dialog(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.8,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const ReturnOrderView(),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PosActionButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const PosActionButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 80,
          width: 80,
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
