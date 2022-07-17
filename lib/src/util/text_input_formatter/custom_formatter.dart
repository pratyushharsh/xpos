import 'package:flutter/services.dart';

class CustomInputTextFormatter {
  static final TextInputFormatter positiveNumber = FilteringTextInputFormatter.allow(RegExp(r'^(\d+(?:[.]\d*)?|\.\d+)$'));
}
