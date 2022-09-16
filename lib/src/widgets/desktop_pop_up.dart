import 'package:flutter/material.dart';

Future<T?> showDesktopPopUp<T>({required BuildContext context, required Widget child}) {
  return showDialog<T>(
    context: context,
    builder: (ctx) {
      return Dialog(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 0.5,
          child: child,
        ),
      );
    },
  );
}
