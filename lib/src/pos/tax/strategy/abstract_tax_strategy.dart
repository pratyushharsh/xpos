import 'package:logging/logging.dart';
import 'package:receipt_generator/src/repositories/tax_repository.dart';

import '../../../entity/pos/tax_rule_entity.dart';
import '../../../entity/pos/trn_line_item_tax.dart';
import '../tax_calculation_info.dart';

abstract class AbstractTaxStrategy {
  final log = Logger('AbstractTaxStrategy');


  // double calculateOverridePercent(TransactionLineItemTaxModifier modifier, double taxableAmount, double quantity) {
  //
  //       if (modifier.taxOverridePercent != null) {
  //
  //       }
  // }

  double calculateForAmount(double argTaxableAmount, double taxAmount) {
    return argTaxableAmount >= 0 ? taxAmount.abs() : taxAmount.abs() * -1;
  }

  double calculateRawAmount(double argTaxableAmount, double argItemQuantity, double argSubTotal, TaxCalculationInfo ti) {

    double totalUnitTaxAmount = argTaxableAmount;
    double totalRawTaxAmount = 0.0;
    double totalRawTaxPercentage = 0.0;
    double taxableUnitAmount = argTaxableAmount / argItemQuantity;

    // Calculate Based on the rule.
    TaxRuleEntity taxRule = ti.taxRule;

    // for (var rule in taxRules) {
    //   if (isTaxRuleApplicable(rule, ti)) {
    //     totalUnitTaxAmount += calculate(rule, taxableUnitAmount);
    //     totalRawTaxPercentage += rule.percent ?? 0.0;
    //   }
    // }

    double totalTaxAmount = calculate(taxRule, totalUnitTaxAmount) * argItemQuantity;
    return totalTaxAmount;
  }

  double calculate(TaxRuleEntity taxRule, double taxableAmount);

  bool isTaxRuleApplicable(TaxRuleEntity taxRule, TaxCalculationInfo taxableAmount) {
    return true;
  }

  double calculateOverridePercent(TransactionLineItemTaxModifier modifier, double taxableAmount, double quantity) {
    double? taxRate = modifier.taxOverridePercent;
    if (taxRate != null) {
      return taxRate;
    }
    double taxAmount = calculateOverrideAmount(modifier, taxableAmount, quantity);
    return reverseCalculatePercentage(taxableAmount, taxAmount);
  }

  double calculateOverrideAmount(TransactionLineItemTaxModifier modifier, double taxableAmount, double quantity);

  double reverseCalculatePercentage(double taxableAmount, double taxAmount);
}

abstract class ITaxStrategy {

}