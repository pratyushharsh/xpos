import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/repositories/tax_repository.dart';

import '../../entity/pos/tax_rule_entity.dart';

class TaxHelper {
  static final log = Logger('TaxHelper');
  final TaxRepository taxRepository;

  TaxHelper({ required this.taxRepository });

  Future<List<TaxRuleEntity>> getTaxRuleByGroupId(String groupId) async {
    return await taxRepository.getTaxRulesByGroupId(groupId);
  }

  TransactionLineItemTaxModifier _createTaxModifierLine(
      TransactionLineItemEntity lineItem, TaxRuleEntity taxRule) {
    return TransactionLineItemTaxModifier(
      transSeq: lineItem.transSeq,
      lineItemSeq: lineItem.lineItemSeq,
      authorityId: taxRule.authorityId,
      authorityName: taxRule.authorityName,
      authorityType: taxRule.authorityType,
      taxGroupId: taxRule.groupId,
      taxableAmount: lineItem.netAmount,
      taxRuleId: taxRule.ruleName,
      taxRuleName: taxRule.ruleName,
      taxAmount: 0.0,
      taxPercent: 0.0,
      rawTaxAmount: 0.0,
      originalTaxableAmount: lineItem.netAmount,
      rawTaxPercentage: 0.0,
    );
  }

  List<TransactionLineItemTaxModifier> createSaleTaxModifiers(
      TransactionLineItemEntity lineItem, List<TaxRuleEntity> taxRules) {
    List<TransactionLineItemTaxModifier> taxModifiers = [];
    for (TaxRuleEntity taxRule in taxRules) {
      if (validateTaxRule(taxRule, lineItem)) {
        taxModifiers.add(_createTaxModifierLine(lineItem, taxRule));
      }
    }
    return taxModifiers;
  }

  bool validateTaxRule(
      TaxRuleEntity taxRule, TransactionLineItemEntity lineItem) {
    return true;
  }

  double calculateTaxAmount(TransactionLineItemEntity lineItem) {
    return lineItem.taxModifiers.fold(0.00, (acc, taxModifier) => acc + taxModifier.taxAmount);
  }

  double calculateTransactionTaxAmount(TransactionHeaderEntity transaction) {
    return transaction.lineItems.fold(0.00, (acc, lineItem) => acc + calculateTaxAmount(lineItem));
  }

  TransactionLineItemTaxModifier creteManualTaxModifier(
      TransactionLineItemEntity lineItem, TaxRuleEntity taxRule) {
    return TransactionLineItemTaxModifier(
      transSeq: lineItem.transSeq,
      lineItemSeq: lineItem.lineItemSeq,
      authorityId: taxRule.authorityId,
      authorityName: taxRule.authorityName,
      authorityType: taxRule.authorityType,
      taxGroupId: taxRule.groupId,
      taxableAmount: lineItem.netAmount,
      taxRuleId: taxRule.ruleName,
      taxRuleName: taxRule.ruleName,
      taxAmount: 0.0,
      taxPercent: 0.0,
      rawTaxAmount: 0.0,
      originalTaxableAmount: lineItem.netAmount,
      rawTaxPercentage: 0.0,
      taxOverride: true
    );
  }
}
