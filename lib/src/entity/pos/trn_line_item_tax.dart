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
  final String? taxLocationId;

  final double taxableAmount;
  final double taxAmount;
  final double taxRate;

  // Tax Exempt Parameter

  // Tax Override Parameter
  final bool? taxOverride;
  final double? taxOverrideAmount;
  final double? taxOverridePercent;
  final String? taxOverrideReasonCode;

  TransactionLineItemTaxModifier(
      {this.id,
      required this.transSeq,
      required this.transLineItemSeq,
      required this.authorityId,
      required this.authorityName,
      required this.authorityType,
      required this.taxGroupId,
      this.taxLocationId,
      required this.taxableAmount,
      required this.taxAmount,
      required this.taxRate,
      this.taxOverride,
      this.taxOverrideAmount,
      this.taxOverridePercent,
      this.taxOverrideReasonCode});
}
