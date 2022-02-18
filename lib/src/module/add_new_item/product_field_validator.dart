import 'package:validators/validators.dart';
import 'package:validators/sanitizers.dart';


class NewProductFieldValidator {
  static String? validateProductName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Product name is required';
    }
    return null;
  }

  static String? validateUOM(String? value) {
    if (value == null || value.isEmpty) {
      return '*Required';
    }
    return null;
  }

  static String? validatePrice(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isFloat(value)) {
        return 'Not a valid number';
      }
    }
    return null;
  }

  static String? validateListPrice(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isFloat(value)) {
        return 'Not a valid number';
      }
    }
    return null;
  }

  static String? validateSalePrice(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isFloat(value)) {
        return 'Not a valid number';
      }
    }
    return null;
  }

  static String? validateTaxRate(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isFloat(value)) {
        return 'Not a valid number';
      } else if (double.parse(value) < 0 || double.parse(value) > 100) {
        return 'Should be between 0 and 100';
      }
    }
    return null;
  }

  static String? validateSkuData(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isAlphanumeric(value)) {
        return 'Not a valid number';
      }
    }
    return null;
  }
}
