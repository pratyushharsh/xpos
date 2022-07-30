import 'package:receipt_generator/src/entity/pos/trn_line_item_tax.dart';

import '../../../entity/pos/tax_rule_entity.dart';
import 'abstract_tax_strategy.dart';

class SaleTaxStrategy extends AbstractTaxStrategy {
  @override
  double calculate(TaxRuleEntity taxRule, double taxableAmount) {
    // TODO: implement calculate
    throw UnimplementedError();
  }

  @override
  double calculateOverrideAmount(TransactionLineItemTaxModifier modifier, double taxableAmount, double quantity) {
    double? taxRate = modifier.taxOverridePercent;
    if (taxRate != null) {
      return taxableAmount * taxRate;
    }

    double? taxAmount = modifier.taxOverrideAmount;
    if (taxAmount != null) {
      return calculateForAmount(taxableAmount, taxAmount);
    }
    log.severe("TAX OVERRIDE IS INCORRECT");
    return 0.0;
  }

  @override
  double reverseCalculatePercentage(double taxableAmount, double taxAmount) {
    if (taxAmount == 0 || taxableAmount == 0) return 0.0;
    return taxableAmount / taxAmount;
  }
}
