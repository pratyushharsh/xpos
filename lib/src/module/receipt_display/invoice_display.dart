import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:receipt_generator/src/module/receipt_display/template/invoice_1.dart';


class AppInvoiceDisplay extends StatelessWidget {
  final int transactionId;
  const AppInvoiceDisplay({Key? key, required this.transactionId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PdfPreview(
        maxPageWidth: 700,
        build: (format) => generateInvoice(format),
      ),
    );
  }
}
