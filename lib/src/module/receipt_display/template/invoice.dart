import 'dart:typed_data';

import 'package:pdf/pdf.dart';

import '../../../entity/pos/entity.dart';
import 'invoice_1.dart';
import 'invoice_2.dart';

Future<Uint8List> generateInvoice(
    PdfPageFormat pageFormat, TransactionHeaderEntity order, RetailLocationEntity store) async {
  // Invoice2 invoice = Invoice2(order);
  Invoice1 invoice = Invoice1(order, store);

  return await invoice.buildPdf(pageFormat);
}