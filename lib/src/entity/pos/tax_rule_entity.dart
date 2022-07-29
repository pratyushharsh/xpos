import 'package:isar/isar.dart';

part 'tax_rule_entity.g.dart';

@Collection()
class TaxRuleEntity {
  @Id()
  final int? id;

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
      this.percent}) : assert(amount != null || percent != null);
}