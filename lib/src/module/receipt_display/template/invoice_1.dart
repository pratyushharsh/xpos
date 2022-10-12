import 'dart:io';
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';
import 'package:receipt_generator/src/module/receipt_display/template/invoice_config.dart';

import '../../../entity/pos/entity.dart';

class Invoice1 {
  final TransactionHeaderEntity order;
  final RetailLocationEntity store;
  Invoice1(this.order, this.store);

  TextAlign getColumnAlign(String align) {
    switch (align) {
      case 'right':
        return TextAlign.right;
      case 'center':
        return TextAlign.center;
      default:
        return TextAlign.left;
    }
  }

  ImageProvider? _logoImage;

  Future<Uint8List> buildPdf(PdfPageFormat pageFormat) async {
    // Create a PDF document.
    final doc = Document();
    if (store.logo != null) {
      _logoImage = await networkImage(store.logo![1]);
    }
    // _logoImage = await networkImage('https://cdn.freebiesupply.com/images/large/2x/google-logo-transparent.png');
    // Add page to the PDF
    doc.addPage(
      MultiPage(
        pageTheme: _buildTheme(
          pageFormat,
          await PdfGoogleFonts.robotoRegular(),
          await PdfGoogleFonts.robotoBold(),
          await PdfGoogleFonts.robotoItalic(),
        ),
        header: _buildHeader,
        footer: _buildFooter,
        build: (context) => [
          _contentTable(context),
          SizedBox(height: 20),
          Expanded(child: _buildLineItemSummary(context),),
        ],
      ),
    );

    // Return the PDF file content
    return doc.save();
  }

  PageTheme _buildTheme(
      PdfPageFormat pageFormat, Font base, Font bold, Font italic) {
    return PageTheme(
      pageFormat: pageFormat,
      theme: ThemeData.withFont(
        base: base,
        bold: bold,
        italic: italic,
      ),
      margin: const EdgeInsets.all(15),
    );
  }

  Widget _buildLineItemSummary(Context context) {
    return Row(
      children: InvoiceConfig.columnConfig
          .map((e) => Expanded(
        flex: e.flex,
        child: Container(
          child: Text(
            InvoiceConfig.buildLineItemSummaryValue(e.key, order),
            textAlign: getColumnAlign(e.align),
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ))
          .toList(),
    );
  }

  Widget _buildHeader(Context context) {
    return Container(
      child: Column(
        children: [
          _logo(context),
          Divider(),
          Row(children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bill Detail',
                  ),
                  Text(
                    '${order.customerName}',
                  ),
                  Text(
                    '${order.billingAddress?.address1} ${order.billingAddress?.address2}',
                  ),
                  Text(
                    '${order.billingAddress?.city} ${order.billingAddress?.state}-${order.billingAddress?.zipcode}',
                  ),
                  Text(
                    '${order.customerPhone}',
                  ),
                ],
              ),
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Ship To',
                  ),
                  Text(
                    'Biller Name: Tantiya Colony, Gola Road, Flat No 232, Street No 423432',
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    'Biller Phone: +91-9888888888',
                  ),
                  Text('Email: GittiMitti.com')
                ],
              ),
            )
          ]),
          Divider(),
          _contentTableHeader(context),
          Divider(),
        ],
      ),
    );
  }

  Widget _logo(Context context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          _logoImage!,
          height: 80,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${store.storeName}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${store.address?.address1} ${store.address?.address2}',
            ),
            Text(
              '${store.address?.city} ${store.address?.state}-${store.address?.zipcode}',
            ),
            Text(
              'Phone: ${store.storeContact}',
            ),
            Text('Email:  ${store.storeEmail}'),
            Text(
              'GST: ${store.gst ?? ''}',
            ),
          ],
        ),
      ]
    );
  }

  Widget _buildFooter(Context context) {
    return Container(
      child: Center(
        child: Text(
          'Invoice Footer',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _contentTable(Context context) {
    var lineItems = order.lineItems.toList();
    lineItems.sort((a, b) => a.lineItemSeq!.compareTo(b.lineItemSeq!));
    return Container(
        child: Column(
            children: lineItems
                .map((li) => Column(children: [
                      _contentTableBody(context, li),
                      Divider(
                         height: 3,
                          thickness: 0.1, color: PdfColor.fromHex('#696969')),
                    ]))
                .toList()));
  }

  Widget _contentTableHeader(Context context) {
    return Row(
      children: InvoiceConfig.columnConfig
          .map((e) => Expanded(
                flex: e.flex,
                child: Container(
                  child: Text(
                    e.title,
                    textAlign: getColumnAlign(e.align),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }

  Widget _contentTableBody(
      Context context, TransactionLineItemEntity lineItem) {
    return Row(
      children: InvoiceConfig.columnConfig
          .map((e) => Expanded(
                flex: e.flex,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  margin: const EdgeInsets.all(0),
                  child: Text(
                    InvoiceConfig.getLineItemValue(e.key, lineItem),
                    textAlign: getColumnAlign(e.align),
                    textScaleFactor: 0.8,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
