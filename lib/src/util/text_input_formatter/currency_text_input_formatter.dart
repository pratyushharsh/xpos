import 'package:flutter/services.dart';
import 'dart:math' as math;

import 'package:intl/intl.dart';

class CurrencyTextInputFormatter extends TextInputFormatter {
  final String locale;
  CurrencyTextInputFormatter({required this.locale});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    if(newValue.selection.baseOffset == 0){
      return newValue;
    }

    double value = double.parse(newValue.text.replaceAll(RegExp(r'\D'),''));

    final formatter = NumberFormat.simpleCurrency(locale: locale);

    String newText = formatter.format(value / 100);

    return newValue.copyWith(
        text: newText,
        selection: TextSelection(
            baseOffset: newText.length,
            extentOffset: newText.length
        ));
  }
}