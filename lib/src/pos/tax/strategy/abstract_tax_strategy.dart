import 'package:logging/logging.dart';

import '../../../entity/pos/tax_rule_entity.dart';
import '../../../entity/pos/trn_line_item_tax.dart';

abstract class AbstractTaxStrategy {

  final log = Logger('AbstractTaxStrategy');

  // double calculateOverridePercent(TransactionLineItemTaxModifier modifier, double taxableAmount, double quantity) {
  //
  //       if (modifier.taxOverridePercent != null) {
  //
  //       }
  // }

  double calculateRawAmount(double argTaxableAmount, double argItemQuantity, double argSubTotal) {
    // @TODO find the rules to be applied

    List<TaxRuleEntity> taxRules = [];

    double totalUnitTaxAmount = 0.0;
    double totalRawTaxAmount = 0.0;
    double totalRawTaxPercentage = 0.0;
    double taxableUnitAmount = argTaxableAmount / argItemQuantity;

    for (var rule in taxRules) {
      totalUnitTaxAmount += calculate(rule, taxableUnitAmount);
      totalRawTaxPercentage += rule.percent ?? 0.0;
    }

    double totalTaxAmount = totalUnitTaxAmount * argItemQuantity;
    return totalTaxAmount;
  }

  double calculate(TaxRuleEntity taxRule, double taxableAmount);

  double calculateForAmount(double taxableAmount, double taxAmount) {
    return taxableAmount > 0 ? taxAmount.abs() : taxAmount.abs() * -1;
  }
}