import 'dart:io';

import 'package:flutter/material.dart';

import '../module/mobile_dialog/mobile_dialog_view.dart';

Future<T?> showTransitiveAppPopUp<T>({required BuildContext context, required Widget child}) {
  if (Platform.isIOS || Platform.isAndroid) {
    return Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (_) => MobileDialogView(
        child: child,
      ),
    ));
  }
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
