// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';


void main() {
  print(numberFormatSymbols.keys.length);
  var locales = numberFormatSymbols.keys;
  var amount = 12345.69;
  var locSet = <String>{};
  for (var locale in locales) {
    NumberSymbols numSymbol = numberFormatSymbols[locale]!;
    var name = numSymbol.DEF_CURRENCY_CODE;
    var simpleCurrency = NumberFormat.simpleCurrency(name: name).format(amount);
    var simpleCurrencyWithLocale = NumberFormat.simpleCurrency(locale: locale).format(amount);
    var simpleCurrencyWithNameLocale = NumberFormat.simpleCurrency(locale: locale, name: name).format(amount);

    var compCurrency = NumberFormat.compactSimpleCurrency(locale: locale).format(amount);
    var currency = NumberFormat.currency(locale: locale).format(amount);
    var t = NumberFormat.compactCurrency(locale: locale).format(amount);
    var long = NumberFormat.compactLong(locale: locale).format(amount);
    var compact = NumberFormat.compact(locale: locale).format(amount);

    // print('$name:\t|\t $simpleCurrency,\t|\t $compCurrency,\t|\t $currency \t|\t $t \t|\t $long \t|\t $compact');
    print('$name:\t|\t $locale \t|\t $simpleCurrency,\t|\t $simpleCurrencyWithLocale,\t|\t $simpleCurrencyWithNameLocale');
  }
  print(locSet.length);
}
