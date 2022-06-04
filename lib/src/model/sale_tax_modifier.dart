class SaleTaxModifier {
  final int transSeq;
  final String taxGroupId;
  final double taxableAmount;
  final double taxAmount;
  final double taxPercent;
  final bool? taxOverride;
  final double? overrideTaxAmount;
  final double? overrideTaxPercent;

  SaleTaxModifier(
      {required this.transSeq,
      required this.taxGroupId,
      required this.taxableAmount,
      required this.taxAmount,
      required this.taxPercent,
      this.taxOverride,
      this.overrideTaxAmount,
      this.overrideTaxPercent});
}
