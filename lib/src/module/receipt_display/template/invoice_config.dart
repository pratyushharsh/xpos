import 'package:intl/intl.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

class InvoiceConfig {
  static  List<InvoiceColumnConfig> columnConfig = [
    InvoiceColumnConfig(key: 'sno', title: 'S. No', flex: 1,),
    InvoiceColumnConfig(key: 'desc', title: 'Description', flex: 5),
    InvoiceColumnConfig(key: 'hsn/sac', title: 'HSN/SAC', flex: 2),
    InvoiceColumnConfig(key: 'qtyuom', title: 'Qty/UOM', flex: 2, align: 'center'),
    InvoiceColumnConfig(key: 'rate', title: 'Unit Price', flex: 2, align: 'right'),
    InvoiceColumnConfig(key: 'tax', title: 'Tax Rate', flex: 2, align: 'right'),
    InvoiceColumnConfig(key: 'amount', title: 'Amount', flex: 2, align: 'right'),
  ];

  static String getLineItemValue(String key, TransactionLineItemEntity entity) {
    switch (key) {
      case 'quantity':
        return entity.quantity.toString();
      case 'rate':
        return NumberFormat.simpleCurrency(locale: 'en_US').format(entity.unitPrice);
      case 'mrp':
        return entity.extendedAmount.toString();
      case 'desc':
        return '${entity.itemDescription}\nSKU: ${entity.itemId}';
      case 'discountAmount':
        return entity.discountAmount.toString();
      case 'sno':
        return entity.lineItemSeq.toString();
      case 'hsn/sac':
        return '';
      case 'qtyuom':
        return '${entity.quantity}\n${entity.uom}';
      case 'tax':
        return entity.taxAmount.toString();
      case 'amount':
        return NumberFormat.simpleCurrency(locale: 'en_US').format(entity.extendedAmount);
      default:
        return '';
    }
  }

  static String buildLineItemSummaryValue(String key, TransactionHeaderEntity entity) {
    switch (key) {
      case 'qtyuom':
        return entity.lineItems.fold<double>(0.00, (previousValue, element) => previousValue + element.quantity).toString();
      case 'tax':
        return NumberFormat.simpleCurrency(locale: 'en_US').format(entity.taxTotal);
      case 'amount':
        return NumberFormat.simpleCurrency(locale: 'en_US').format(entity.total);
      default:
        return '';
    }
  }
}

class InvoiceColumnConfig {
  final String key;
  final String title;
  final int flex;
  final String align;

  InvoiceColumnConfig({required this.key, required this.title, required this.flex, this.align = "left"});
}