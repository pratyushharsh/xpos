import 'package:intl/intl.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:pdf/widgets.dart';

import '../../../entity/pos/report_config_entity.dart';

class InvoiceConfigConstants {
  static List<ReportColumnConfigEntity> columnConfig = [
    ReportColumnConfigEntity(
        key: 'sno', title: 'S.No', flex: 1, align: ColumnAlignment.center),
    ReportColumnConfigEntity(key: 'desc', title: 'Description', flex: 5),
    ReportColumnConfigEntity(
        key: 'hsn/sac',
        title: 'HSN/SAC',
        flex: 2,
        align: ColumnAlignment.right),
    ReportColumnConfigEntity(
        key: 'qtyuom',
        title: 'Qty/UOM',
        flex: 2,
        align: ColumnAlignment.center),
    ReportColumnConfigEntity(
        key: 'quantity',
        title: 'Quantity',
        flex: 2,
        align: ColumnAlignment.center),
    ReportColumnConfigEntity(
        key: 'rate',
        title: 'Unit Price',
        flex: 2,
        align: ColumnAlignment.right),
    ReportColumnConfigEntity(
        key: 'discountAmount',
        title: 'Discount',
        flex: 3,
        align: ColumnAlignment.right),
    ReportColumnConfigEntity(
        key: 'tax', title: 'Tax Amount', flex: 3, align: ColumnAlignment.right),
    ReportColumnConfigEntity(
        key: 'amount', title: 'Amount', flex: 3, align: ColumnAlignment.right),
    ReportColumnConfigEntity(
        key: 'productId',
        title: 'Product Id',
        flex: 4,
        align: ColumnAlignment.left)
  ];

  static List<ReportColumnConfigEntity> paymentColumn = [
    ReportColumnConfigEntity(
        key: 'date', title: 'Date', flex: 2, align: ColumnAlignment.right),
    ReportColumnConfigEntity(
        key: 'amount', title: 'Amount', flex: 1, align: ColumnAlignment.right),
    ReportColumnConfigEntity(
        key: 'mode', title: 'Mode', flex: 1, align: ColumnAlignment.right),
    ReportColumnConfigEntity(
        key: 'remarks',
        title: 'Remarks',
        flex: 2,
        align: ColumnAlignment.right),
  ];

  static String getPaymentLineValue(String key, TransactionHeaderEntity entity,
      TransactionPaymentLineItemEntity line) {
    switch (key) {
      case 'date':
        return '${DateFormat.yMEd().format(line.beginDate!)} ${DateFormat.Hms().format(line.beginDate!)}';
      case 'amount':
        return NumberFormat.compactCurrency(
                locale: entity.storeLocale, name: line.currencyId)
            .format(line.amount);
      case 'mode':
        return '${line.tenderId}';
      default:
        return '';
    }
  }

  static String getLineItemValue(String key, TransactionLineItemEntity entity,
      {String locale = 'en_US'}) {
    switch (key) {
      case 'quantity':
        return entity.quantity.toString();
      case 'rate':
        return NumberFormat.simpleCurrency(
                locale: locale, name: entity.currency)
            .format(entity.unitPrice);
      case 'mrp':
        return entity.grossAmount.toString();
      case 'desc':
        return '${entity.itemDescription}\nSKU: ${entity.itemId}';
      case 'discountAmount':
        return NumberFormat.simpleCurrency(
                locale: locale, name: entity.currency)
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
        return NumberFormat.simpleCurrency(
                locale: locale, name: entity.currency)
            .format(entity.taxAmount);
      case 'amount':
        return NumberFormat.simpleCurrency(
                locale: locale, name: entity.currency)
            .format(entity.grossAmount);
      case 'productId':
        return '${entity.itemId}';
      default:
        return '';
    }
  }

  static String buildLineItemSummaryValue(
      String key, TransactionHeaderEntity entity) {
    switch (key) {
      case 'qtyuom':
      case 'quantity':
        return entity.lineItems
            .fold<double>(
                0.00,
                (previousValue, element) =>
                    previousValue + (!element.isVoid ? element.quantity! : 0))
            .toString();
      case 'tax':
        return NumberFormat.simpleCurrency(
                locale: entity.storeLocale, name: entity.storeCurrency)
            .format(entity.taxTotal);
      case 'amount':
        return NumberFormat.simpleCurrency(
                locale: entity.storeLocale, name: entity.storeCurrency)
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
        gstTaxSummary[item.hsn!] = TaxSummary(hsnCode: item.hsn!, tax: {});
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

  @override
  String toString() {
    return title;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceColumnConfig &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          title == other.title &&
          flex == other.flex &&
          align == other.align;

  @override
  int get hashCode =>
      key.hashCode ^ title.hashCode ^ flex.hashCode ^ align.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'title': title,
      'flex': flex,
      'align': align,
    };
  }
}

class InvoiceConfig {
  final String code;
  final List<ReportColumnConfigEntity> columnConfig;
  final List<ReportColumnConfigEntity> paymentColumnConfig;
  final bool showTaxSummary;
  final bool showPaymentDetails;
  final String? logo;
  final bool showTermsAndCondition;
  final String? termsAndCondition;
  final bool showDeclaration;
  final String? declaration;

  InvoiceConfig(
      {this.code = "DEFAULT",
      required this.columnConfig,
      this.showTaxSummary = true,
      required this.paymentColumnConfig,
      this.showPaymentDetails = true,
      this.logo,
      this.showTermsAndCondition = false,
      this.termsAndCondition,
      this.showDeclaration = false,
      this.declaration});
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
