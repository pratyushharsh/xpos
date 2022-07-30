import 'package:isar/isar.dart';

part 'trn_line_item_tax.g.dart';

@Collection()
class TransactionLineItemTaxModifier {
  @Id()
  final int? id;

  final int transSeq;
  final int transLineItemSeq;

  final String authorityId;
  final String authorityName;
  final String authorityType;
  final String taxGroupId;
  final String taxRuleId;
  final String taxRuleName;
  final String? taxLocationId;

  double taxableAmount;
  double taxAmount;
  double taxPercent;
  double originalTaxableAmount;
  double rawTaxPercentage;
  double rawTaxAmount;

  // Tax Exempt Parameter

  // Tax Override Parameter
  bool taxOverride;
  double? taxOverrideAmount;
  double? taxOverridePercent;
  String? taxOverrideReasonCode;

  TransactionLineItemTaxModifier(
      {this.id,
      required this.transSeq,
      required this.transLineItemSeq,
      required this.authorityId,
      required this.authorityName,
      required this.authorityType,
      required this.taxGroupId,
      required this.taxRuleId,
      required this.taxRuleName,
      this.taxLocationId,
      required this.taxableAmount,
      required this.taxAmount,
      required this.taxPercent,
      required this.originalTaxableAmount,
      required this.rawTaxPercentage,
      required this.rawTaxAmount,
      this.taxOverride = false,
      this.taxOverrideAmount,
      this.taxOverridePercent,
      this.taxOverrideReasonCode});
}
