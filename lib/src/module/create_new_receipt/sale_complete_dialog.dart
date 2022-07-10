import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/constants.dart';
import 'package:receipt_generator/src/module/create_new_receipt/bloc/create_new_receipt_bloc.dart';

import '../../config/theme_settings.dart';

typedef OnButtonCallback = void Function();

class SaleCompleteDialog extends StatelessWidget {
  const SaleCompleteDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 750, maxHeight: 750),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Sale Complete",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Divider(),
              Expanded(child: Container()),
              Wrap(
                children: [
                  DialogButton(
                    label: "Cancel",
                    onClick: () {
                      Navigator.of(context).pop(Constants.cancel);
                    },
                  ),
                  DialogButton(
                    label: "Print And Email",
                    onClick: () {
                      Navigator.of(context).pop(Constants.printAndEmail);
                    },
                  ),
                  DialogButton(
                    label: "Continue",
                    onClick: () {
                      Navigator.of(context).pop(Constants.print);
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  final String label;
  final OnButtonCallback onClick;
  final Icon? icon;
  final bool selected;
  const DialogButton(
      {Key? key,
      required this.label,
      required this.onClick,
      this.icon,
      this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: Colors.green,
      elevation: 4,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: selected ? AppColor.primary : Colors.transparent),
        // borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: onClick,
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 80,
          width: 120,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [if (icon != null) icon!, Text(label)],
            ),
          ),
        ),
      ),
    );
  }
}
