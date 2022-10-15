import 'dart:io';
import 'dart:typed_data';

import 'package:number_to_words/number_to_words.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';
import 'package:receipt_generator/src/module/receipt_display/template/invoice_config.dart';
import 'package:receipt_generator/src/util/extension/string_extension.dart';

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
          Divider(thickness: 0.8),
          _buildLineItemSummary(context),
          Divider(thickness: 0.8),
          _contentAmountInWords(context),
          _contentTaxSummary(context)
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
          Divider(height: 6, thickness: 0.8),
          Row(children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Billing Detail',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
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
                    'Ph: ${order.customerPhone}',
                  ),
                ],
              ),
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Shipping Detail',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${order.customerName}',
                  ),
                  Text(
                    '${order.shippingAddress?.address1} ${order.shippingAddress?.address2}',
                  ),
                  Text(
                    '${order.shippingAddress?.city} ${order.shippingAddress?.state}-${order.shippingAddress?.zipcode}',
                  ),
                  Text(
                    'Ph: ${order.customerPhone}',
                  ),
                ],
              ),
            )
          ]),
          Divider(height: 6, thickness: 0.8),
          _contentTableHeader(context),
          Divider(height: 6, thickness: 0.8),
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
        ]);
  }

  Widget _buildFooter(Context context) {
    return Container(
      child: Center(
        child: Text(
          'Made with ',
        ),
      ),
    );
  }

  Widget _contentTable(Context context) {
    var lineItems = order.lineItems.toList();
    lineItems.sort((a, b) => a.lineItemSeq!.compareTo(b.lineItemSeq!));
    return Container(
      child: ListView.builder(
          itemBuilder: (context, idx) {
            return Column(
              children: [
                _contentTableBody(context, lineItems[idx]),
                if (idx != lineItems.length - 1)
                  Divider(
                    height: 3,
                    thickness: 0.1,
                    color: PdfColor.fromHex('#696969'),
                  ),
              ],
            );
          },
          itemCount: lineItems.length),
    );
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

  Widget _contentTaxSummary(Context context) {
    // Build header rows for
    // 1. HSN Code
    // 2. Taxable Value
    // ... Different Taxes
    // 3. Total Tax
    var taxSummary = InvoiceConfig.buildGstTaxSummary(order.lineItems);
    List<String> rows = [];
    rows.add("HSN Code");
    rows.add("Taxable Value");

    // Get all the unique tax values from the tax summary
    Set<String> taxNames = {};
    for (var taxRule in taxSummary.values) {
      taxNames.addAll(taxRule.tax.keys);
    }

    // Add the tax names to the rows
    rows.addAll(taxNames);
    rows.add("Total Tax");

    List<String> taxColumns = taxNames.toList();

    // Build the table

    return Column(
      children: [
        // Build header
        Divider(height: 6, thickness: 0.8),
        Row(
          children: [
            Expanded(
                child: Text(
              'HSN/SAC',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )),
            Expanded(
                child: Text(
              'Taxable Amount',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )),
            ...taxColumns.map((e) => Expanded(
                    child: Text(
                  e,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
            Expanded(
                child: Text(
              'Total',
                  textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )),
          ],
        ),
        Divider(height: 6, thickness: 0.8),
        ...taxSummary.entries.map(
          (e) => Row(
            children: [
              Expanded(
                  child: Text(
                e.key,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              )),
              Expanded(
                  child: Text(
                e.value.taxableAmount.toString(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              )),
              ...taxColumns.map((taxName) => Expanded(
                      child: Text(
                    e.value.tax[taxName]?.toString() ?? '',
                        textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ))),
              Expanded(
                  child: Text(
                e.value.totalAmount.toString(),
                    textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              )),
            ],
          ),
        ),
        Divider(height: 6, thickness: 0.8),
      ],
    );
  }

  Widget _contentAmountInWords(Context context) {

    var x = order.total.toInt();
    var y = (order.total * 100 % 100).round();

    String amountToWord =
        "INR " + NumberToWord().convert('en-in', x).toTitleCase();
    if (y > 0) {
      amountToWord += " and ";
      amountToWord +=
          NumberToWord().convert('en-in', y).toTitleCase();
      amountToWord += "paise Only";
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amount in words:',
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            amountToWord,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
