import 'package:flutter/material.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';

void showLoadingDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      // builder: (context) => Lottie.asset("assets/lottie/loading.zip")
      builder: (context) => const MyLoader()
  );
}