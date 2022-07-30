import 'package:receipt_generator/src/entity/pos/entity.dart';

class TaxCalculationInfo {
  TransactionLineItemTaxModifier modifier;
  double taxableAmount;
  double itemQuantity;
  double rawTaxableAmount;

  TaxCalculationInfo(
      {required this.modifier,
      required this.taxableAmount,
      required this.itemQuantity,
      required this.rawTaxableAmount});
}
