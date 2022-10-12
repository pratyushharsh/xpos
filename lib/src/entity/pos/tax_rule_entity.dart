import 'package:isar/isar.dart';

import 'tax_group_entity.dart';

part 'tax_rule_entity.g.dart';

@embedded
class TaxRuleEntity {

  String? groupId;
  String? ruleName;
  String? locationId;
  int? ruleSequence;

  double? minimumTaxableAmount;
  double? maximumTaxableAmount;

  DateTime? effectiveDateTimeStamp;
  DateTime? expirationDateTimeStamp;

  double? amount;
  double? percent;

  String? authorityId;
  String? authorityName;
  String? authorityType;

  TaxRuleEntity(
      {this.groupId,
      this.ruleName,
      this.locationId,
      this.ruleSequence,
      this.minimumTaxableAmount,
      this.maximumTaxableAmount,
      this.effectiveDateTimeStamp,
      this.expirationDateTimeStamp,
      this.amount,
      this.percent,
      this.authorityId,
      this.authorityName,
      this.authorityType});
}
