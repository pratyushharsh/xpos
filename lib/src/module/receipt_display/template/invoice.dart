import 'dart:typed_data';

import 'package:pdf/pdf.dart';

import '../../../entity/pos/entity.dart';
import 'invoice_1.dart';
import 'invoice_2.dart';

Future<Uint8List> generateInvoice(
    PdfPageFormat pageFormat, TransactionHeaderEntity order) async {
  Invoice2 invoice = Invoice2(order);

  return await invoice.buildPdf(pageFormat);
}