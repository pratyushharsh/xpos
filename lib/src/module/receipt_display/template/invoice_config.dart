import 'package:intl/intl.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:pdf/widgets.dart';

class InvoiceConfig {
  static List<InvoiceColumnConfig> columnConfig = [
    InvoiceColumnConfig(
      key: 'sno',
      title: 'S.No',
      flex: 1,
    ),
    InvoiceColumnConfig(key: 'desc', title: 'Description', flex: 5),
    InvoiceColumnConfig(
        key: 'hsn/sac', title: 'HSN/SAC', flex: 2, align: 'right'),
    InvoiceColumnConfig(
        key: 'qtyuom', title: 'Qty/UOM', flex: 2, align: 'center'),
    InvoiceColumnConfig(
        key: 'rate', title: 'Unit Price', flex: 2, align: 'right'),
    InvoiceColumnConfig(
        key: 'discountAmount', title: 'Discount', flex: 3, align: 'right'),
    InvoiceColumnConfig(
        key: 'tax', title: 'Tax Amount', flex: 3, align: 'right'),
    InvoiceColumnConfig(
        key: 'amount', title: 'Amount', flex: 3, align: 'right'),
  ];

  static String getLineItemValue(String key, TransactionLineItemEntity entity, {String locale = 'en_US'}) {
    switch (key) {
      case 'quantity':
        return entity.quantity.toString();
      case 'rate':
        return NumberFormat.simpleCurrency(locale: locale, name: entity.currency)
            .format(entity.unitPrice);
      case 'mrp':
        return entity.grossAmount.toString();
      case 'desc':
        return '${entity.itemDescription}\nSKU: ${entity.itemId}';
      case 'discountAmount':
        return NumberFormat.simpleCurrency(locale: locale, name: entity.currency)
            .format(entity.discountAmount);
      case 'sno':
        return entity.lineItemSeq.toString();
      case 'hsn/sac':
        return '${entity.hsn}';
      case 'qty':
        return '${entity.quantity}';
      case 'qtyuom':
        return '${entity.quantity}\n${entity.uom}';
      case 'tax':
        return NumberFormat.simpleCurrency(locale: locale, name: entity.currency)
            .format(entity.taxAmount);
      case 'amount':
        return NumberFormat.simpleCurrency(locale: locale, name: entity.currency)
            .format(entity.grossAmount);
      default:
        return '';
    }
  }

  static String buildLineItemSummaryValue(
      String key, TransactionHeaderEntity entity) {
    switch (key) {
      case 'qtyuom':
        return entity.lineItems
            .fold<double>(0.00,
                (previousValue, element) => previousValue + (!element.isVoid ? element.quantity! : 0))
            .toString();
      case 'tax':
        return NumberFormat.simpleCurrency(locale: entity.storeLocale, name: entity.storeCurrency)
            .format(entity.taxTotal);
      case 'amount':
        return NumberFormat.simpleCurrency(locale: entity.storeLocale, name: entity.storeCurrency)
            .format(entity.total);
      default:
        return '';
    }
  }

  static Map<int, Alignment> cellAlignments(
      List<InvoiceColumnConfig> columnConfig) {
    Map<int, Alignment> alignments = {};
    for (int i = 0; i < columnConfig.length; i++) {
      switch (columnConfig[i].align) {
        case 'right':
          alignments[i] = Alignment.centerRight;
          break;
        case 'center':
          alignments[i] = Alignment.center;
          break;
        default:
          alignments[i] = Alignment.centerLeft;
      }
    }
    return alignments;
  }

  static Map<int, TableColumnWidth> columnWidths(
      List<InvoiceColumnConfig> columnConfig) {
    Map<int, TableColumnWidth> widths = {};
    for (int i = 0; i < columnConfig.length; i++) {
      widths[i] = FlexColumnWidth(columnConfig[i].flex.toDouble());
    }
    return widths;
  }

  static Map<String, TaxSummary> buildGstTaxSummary(
      List<TransactionLineItemEntity> entity) {
    Map<String, TaxSummary> gstTaxSummary = {};
    for (var item in entity) {
      if (item.taxAmount == 0 || item.hsn == null || item.isVoid) {
        continue;
      }

      if (!gstTaxSummary.containsKey(item.hsn!)) {
        gstTaxSummary[item.hsn!] = TaxSummary(
          hsnCode: item.hsn!,
          tax: {}
        );
      }

      gstTaxSummary[item.hsn!]!.taxableAmount += item.netAmount!;
      gstTaxSummary[item.hsn!]!.totalAmount += item.grossAmount!;

      for (var taxModifier in item.taxModifiers) {
        if (taxModifier.taxRuleId != null) {
          if (!gstTaxSummary[item.hsn!]!
              .tax
              .containsKey(taxModifier.taxRuleId)) {
            gstTaxSummary[item.hsn!]!.tax[taxModifier.taxRuleId!] = 0.0;
          }

          gstTaxSummary[item.hsn!]!.tax[taxModifier.taxRuleId!] =
              gstTaxSummary[item.hsn!]!.tax[taxModifier.taxRuleId!]! +
                  taxModifier.taxAmount!;

        }
      }
    }
    return gstTaxSummary;
  }
}

class InvoiceColumnConfig {
  final String key;
  final String title;
  final int flex;
  final String align;

  InvoiceColumnConfig(
      {required this.key,
      required this.title,
      required this.flex,
      this.align = "left"});
}

class TaxSummary {
  String hsnCode;
  double taxableAmount;
  Map<String, double> tax;
  double totalAmount;

  TaxSummary({
    required this.hsnCode,
    this.taxableAmount = 0.00,
    required this.tax,
    this.totalAmount = 0.00,
  });
}
