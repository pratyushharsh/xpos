import '../../../entity/pos/tax_rule_entity.dart';
import 'abstract_tax_strategy.dart';

class SaleTaxStrategy extends AbstractTaxStrategy {



  @override
  double calculate(TaxRuleEntity taxRule, double taxableAmount) {

    if (taxRule.percent != null) {
      return taxableAmount * taxRule.percent!;
    }

    if (taxRule.amount != null) {
      return calculateForAmount(taxableAmount, taxRule.amount!);
    }

    log.warning("Tax rule has no amount or percent incorrectly configured");

    return 0.0;
  }
}