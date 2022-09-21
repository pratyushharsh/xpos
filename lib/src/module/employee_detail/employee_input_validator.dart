import 'package:validators/validators.dart';


class NewEmployeeFieldValidator {

  static RegExp phoneRegExp = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');

  static String? validateEmployeeEmail(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isEmail(value)) {
        return 'Not a valid email';
      }
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!phoneRegExp.hasMatch(value)) {
        return 'Not a valid phone number';
      }
    } else {
      return 'Phone number is required';
    }
    return null;
  }
}