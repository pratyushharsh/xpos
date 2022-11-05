import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';
import 'package:receipt_generator/src/module/receipt_display/template/invoice_config.dart';

import '../../../entity/pos/entity.dart';

class Invoice2Config {
  static List<InvoiceColumnConfig> columnConfig = [
    InvoiceColumnConfig(
      key: 'sno',
      title: 'S. No',
      flex: 1,
    ),
    InvoiceColumnConfig(key: 'desc', title: 'Description', flex: 5),
    InvoiceColumnConfig(key: 'hsn/sac', title: 'HSN/SAC', flex: 2),
    InvoiceColumnConfig(
        key: 'qty', title: 'Quantity', flex: 2, align: 'center'),
    InvoiceColumnConfig(
        key: 'rate', title: 'Unit Price', flex: 2, align: 'right'),
    InvoiceColumnConfig(
        key: 'discount', title: 'Discount', flex: 2, align: 'right'),
    InvoiceColumnConfig(key: 'tax', title: 'Tax Rate', flex: 2, align: 'right'),
    InvoiceColumnConfig(
        key: 'amount', title: 'Amount', flex: 2, align: 'right'),
  ];
}

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

class Invoice2 {
  final TransactionHeaderEntity order;
  Invoice2(this.order);

  Future<Uint8List> buildPdf(PdfPageFormat pageFormat) async {
    // Create a PDF document.
    final doc = Document();
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
          // SizedBox(height: 20),
          // Expanded(child: _buildLineItemSummary(context),),
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

  Widget _buildHeader(Context context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: PdfColors.black, width: .5),
      ),
      child: Column(children: [
        Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: PdfColors.black, width: .5),
              ),
            ),
            constraints: const BoxConstraints(minHeight: 40, maxHeight: 90),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      border: Border.all(color: PdfColors.black, width: .5),
                    ),
                    child: SenderAddress(),
                  ),
                ),
                Expanded(flex: 3, child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: PdfColors.black, width: .5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hello"),
                    ]
                  )
                )),
                Expanded(flex: 2, child: Container()),
              ],
            )),
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(1.5),
                  child: BillToAddress(),
                )),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                  border: Border.all(color: PdfColors.black, width: .5),
                ),
                child: ShipToAddress(),
              ),
            ),
            Expanded(flex: 2, child: Container()),
          ],
        ),
      ]),
    );
  }

  Widget _buildFooter(Context context) {
    return Container(
      child: Center(
        child: Text(
          'This is computer generated invoice.',
          style: const TextStyle(
            fontSize: 8,
          ),
        ),
      ),
    );
  }

  Widget _contentTable(Context context) {
    return Table.fromTextArray(
      border: null,
      cellAlignment: Alignment.centerLeft,
      headerHeight: 25,
      cellHeight: 40,
      columnWidths: InvoiceConfigConstants.columnWidths(Invoice2Config.columnConfig),
      cellAlignments: InvoiceConfigConstants.cellAlignments(Invoice2Config.columnConfig),
      rowDecoration: BoxDecoration(
        border: Border.all(color: PdfColors.black, width: .5),
      ),
      cellDecoration: (idx, data, rowNum) => const BoxDecoration(
        border: Border(
          left: BorderSide(color: PdfColors.black, width: .5),
          right: BorderSide(color: PdfColors.black, width: .5),
        ),
      ),
      headerDecoration: BoxDecoration(
        border: Border.all(color: PdfColors.black, width: .5),
      ),
      headerCellDecoration: const BoxDecoration(
        border: Border(
          left: BorderSide(color: PdfColors.black, width: .5),
          right: BorderSide(color: PdfColors.black, width: .5),
        ),
      ),
      headers: Invoice2Config.columnConfig.map((e) => e.title).toList(),
      data: order.lineItems.map((li) {
        return Invoice2Config.columnConfig.map((e) {
          return InvoiceConfigConstants.getLineItemValue(e.key, li);
        }).toList();
      }).toList(),
    );
  }
}

class ShipToAddress extends StatelessWidget {
  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ship To',
        ),
        Text(
          'Shipper Name: Tantiya Colony, Gola Road, Flat No 232, Street No 423432',
        ),
        Text(
          'Shipper Phone: +91-9888888888',
        ),
        Text('Shipper Email: Gitti Mitti.com')
      ],
    );
  }
}

class BillToAddress extends StatelessWidget {
  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bill To',
        ),
        Text('Email: GittiMitti.com')
      ],
    );
  }
}

class SenderAddress extends StatelessWidget {
  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sender Address',
        ),
        Text(
          'Biller Name: Tantiya Colony, Gola Road, Flat No 232, Street No 423432',
          textAlign: TextAlign.left,
        ),
        Text(
          'Biller Phone: +91-9888888888',
        ),
        Text('Email: GittiMitti.com')
      ],
    );
  }
}
