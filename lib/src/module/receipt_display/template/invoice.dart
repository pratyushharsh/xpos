import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import '../../../entity/pos/entity.dart';
import '../../../entity/pos/report_config_entity.dart';
import 'base_invoice.dart';
import 'invoice_1.dart';
import 'invoice_2.dart';
import 'invoice_config.dart';

Future<Uint8List> generateInvoice(
    PdfPageFormat pageFormat,
    TransactionHeaderEntity order,
    RetailLocationEntity store,
    InvoiceConfig config) async {
  // Invoice2 invoice = Invoice2(order);
  // Invoice1 invoice = Invoice1(order, store, config);
  IInvoice invoice = BaseInvoice(order: order, store: store, config: config);

  return await invoice.buildPdf(pageFormat);
}

mixin InvoiceUtil {
  TextAlign getColumnAlign(ColumnAlignment? align) {
    switch (align) {
      case ColumnAlignment.right:
        return TextAlign.right;
      case ColumnAlignment.center:
        return TextAlign.center;
      case ColumnAlignment.justify:
        return TextAlign.justify;
      default:
        return TextAlign.left;
    }
  }
}

abstract class IInvoice {

  Future<Uint8List> buildPdf(PdfPageFormat pageFormat);
  ImageProvider? getStoreLogo(Context context);
  Widget buildStoreDetail(Context context);
  Widget buildShippingAddress(Context context);
  Widget buildBillingAddress(Context context);
  Widget buildHeader(Context context);
  Widget buildItemBody(Context context);
  Widget buildPaymentDetails(Context context);
  Widget buildTaxSummary(Context context);
  Widget buildFooter(Context context);
  Widget buildDeclarationSignature(Context context);
  Widget buildThankYou(Context context);
  Widget buildTermsAndConditions(Context context);
  Future<PageTheme> buildPageTheme(PdfPageFormat pageFormat);
}
