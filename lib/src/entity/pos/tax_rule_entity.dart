import 'package:isar/isar.dart';

import 'tax_group_entity.dart';

part 'tax_rule_entity.g.dart';

@Collection()
class TaxRuleEntity {
  final Id? id;

  @Index()
  @Index(composite: [CompositeIndex("ruleName")], unique: true)
  final String groupId;
  final String ruleName;
  final String locationId;
  final int ruleSequence;

  final double? minimumTaxableAmount;
  final double? maximumTaxableAmount;

  final DateTime? effectiveDateTimeStamp;
  final DateTime? expirationDateTimeStamp;

  final double? amount;
  final double? percent;

  final String authorityId;
  final String authorityName;
  final String authorityType;

  @Backlink(to: 'taxRules')
  final taxGroup = IsarLink<TaxGroupEntity>();

  TaxRuleEntity(
      {this.id,
      required this.groupId,
      required this.ruleName,
      required this.locationId,
      required this.ruleSequence,
      this.minimumTaxableAmount,
      this.maximumTaxableAmount,
      this.effectiveDateTimeStamp,
      this.expirationDateTimeStamp,
      this.amount,
      this.percent,
      required this.authorityId,
      required this.authorityName,
      required this.authorityType})
      : assert(amount != null || percent != null);
}
