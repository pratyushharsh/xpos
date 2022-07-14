import 'package:logging/logging.dart';

import '../../model/model.dart';

class TaxHelper {
  static final log = Logger('TaxHelper');
  static List<SaleTaxModifier> calculateTax(SaleLine line) {
    // Get Product
    ProductModel model = line.product;
    double tax = model.tax ?? 0;
    log.info("TAX Rate: $tax");
    if (tax == 0) {
      return [];
    }
    SaleTaxModifier cgst = SaleTaxModifier(transSeq: line.seq, taxGroupId: "CGST", taxableAmount: line.price * line.qty, taxAmount: line.price * line.qty * tax / 2, taxPercent: tax / 2);
    SaleTaxModifier sgst = SaleTaxModifier(transSeq: line.seq, taxGroupId: "SGST", taxableAmount: line.price * line.qty, taxAmount: line.price * line.qty * tax / 2, taxPercent: tax / 2);
    return [cgst, sgst];
  }
}