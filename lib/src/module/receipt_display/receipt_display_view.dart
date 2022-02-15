import 'dart:ui';
import 'dart:math' as math;

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:receipt_generator/src/config/currency.dart';
import 'package:receipt_generator/src/config/sale_status_codes.dart';
import 'package:receipt_generator/src/entity/entity.dart';

import 'bloc/receipt_display_bloc.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

const String top = "TOP";
const String bottom = "BOTTOM";

class ReceiptDisplayView extends StatelessWidget {
  final int transactionId;
  ReceiptDisplayView({Key? key, required this.transactionId}) : super(key: key);

  final GlobalKey<State<StatefulWidget>> _printKey = GlobalKey();

  void _shareReceipt() async {
    final doc = pw.Document();

    final image = await WidgetWraper.fromKey(
      key: _printKey,
      pixelRatio: 3.0,
    );
    doc.addPage(pw.Page(
        pageFormat: PdfPageFormat.roll80,
        build: (pw.Context context) {
          return pw.Image(image);
        }));

    var raw = await doc.save();

    Printing.sharePdf(
      filename: '$transactionId.pdf',
      bytes: raw,
    );
  }

  void _printReceipt() {
    Printing.layoutPdf(
        format: PdfPageFormat.roll80,
        onLayout: (PdfPageFormat format) async {
          final doc = pw.Document();

          final image = await WidgetWraper.fromKey(
            key: _printKey,
            pixelRatio: 3.0,
          );

          doc.addPage(pw.Page(
              pageFormat: format,
              build: (pw.Context context) {
                return pw.Center(
                  child: pw.Image(image),
                );
              }));

          return doc.save();
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => ReceiptDisplayBloc(
          transId: transactionId, db: RepositoryProvider.of(context))
        ..add(FetchReceiptDataEvent()),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              GoogleFonts.robotoMonoTextTheme(Theme.of(context).textTheme),
        ),
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(),
          body: BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
            builder: (context, state) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  if (state.status == ReceiptDisplayStatus.success)
                    SingleChildScrollView(
                      child: ReceiptBlock(
                        printKey: _printKey,
                      ),
                    ),
                  Positioned(
                    bottom: 40,
                    left: 10,
                    right: 10,
                    child: MyBottomAppBar(
                      onShare: _shareReceipt,
                      onPrint: _printReceipt,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyBottomAppBar extends StatelessWidget {
  final VoidCallback? onShare;
  final VoidCallback? onPrint;
  const MyBottomAppBar({Key? key, this.onShare, this.onPrint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.share,
                      size: 30,
                    ),
                    onPressed: onShare,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.print,
                      size: 30,
                    ),
                    onPressed: onPrint,
                  ),
                  if (state.header?.status == SaleStatus.initiated ||
                      state.header?.status == SaleStatus.pending)
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ReceiptDisplayBloc>(context).add(
                              UpdateReceiptStatusEvent(SaleStatus.cancelled));
                        },
                        child: const Text("Cancel")),
                  if (state.header?.status == SaleStatus.initiated ||
                      state.header?.status == SaleStatus.pending)
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ReceiptDisplayBloc>(context).add(
                              UpdateReceiptStatusEvent(SaleStatus.completed));
                        },
                        child: const Text("Paid"))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ReceiptBlock extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> printKey;
  const ReceiptBlock({Key? key, required this.printKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: printKey,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                CustomPaint(
                  painter: DrawCircularArcLine(),
                  size: Size(MediaQuery.of(context).size.width, 20),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const ReceiptLogo(),
                      const ReceiptNumber(),
                      const ReceiptDate(),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReceiptBusinessDetail(),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReceiptCustomerDetail(),
                      CustomPaint(
                        painter: DrawDottedHorizontalLine(),
                        size: Size(MediaQuery.of(context).size.width, 0),
                      ),
                      const ReceiptLineItem(),
                      CustomPaint(
                        painter: DrawDottedHorizontalLine(),
                        size: Size(MediaQuery.of(context).size.width, 0),
                      ),
                      const ReceiptSummary(),
                      CustomPaint(
                        painter: DrawDottedHorizontalLine(),
                        size: Size(MediaQuery.of(context).size.width, 0),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const ReceiptBarcode(),
                      const ReceiptFooter()
                    ],
                  ),
                ),
                CustomPaint(
                  painter: DrawCircularArcLine(direction: bottom),
                  size: Size(MediaQuery.of(context).size.width, 20),
                ),
              ],
            ),
          ),
          if (SaleStatus.cancelled ==
              BlocProvider.of<ReceiptDisplayBloc>(context).state.header?.status)
            Positioned.fill(
                child: Align(
                    alignment: Alignment.center,
                    child: Transform.rotate(
                      angle: -math.pi / 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Divider(
                            thickness: 2,
                            color: Colors.red,
                          ),
                          Text(
                            "CANCELLED",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w200,
                                color: Colors.red),
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    )))
        ],
      ),
    );
  }
}

class ReceiptLogo extends StatelessWidget {
  const ReceiptLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "CASH RECEIPT",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    );
  }
}

class ReceiptNumber extends StatelessWidget {
  const ReceiptNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        return Text(
          "#${state.header?.transId.toString()}",
          style: const TextStyle(height: 0.8),
        );
      },
    );
  }
}

class ReceiptDate extends StatelessWidget {
  const ReceiptDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('dd-MMM-yyyy    hh:mm:ss a');
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        return Text(
          formatter.format(
              DateTime.fromMicrosecondsSinceEpoch(state.header!.businessDate)),
        );
      },
    );
  }
}

class ReceiptBusinessDetail extends StatelessWidget {
  const ReceiptBusinessDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("NearBai Private Limited"),
        Text("Block B, Connaught Palace"),
        Text("Delhi, 110001"),
        Text("Ph: +919430123120")
      ],
    );
  }
}

class ReceiptCustomerDetail extends StatelessWidget {
  const ReceiptCustomerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        return Column(
          children: [
            if (state.header!.customerName != null)
              Text("Customer Name: ${state.header!.customerName}"),
            if (state.header!.customerAddress != null)
              Text("Address: ${state.header!.customerAddress}"),
            if (state.header!.customerPhone != null)
              Text("Phone: ${state.header!.customerPhone}"),
            if (state.header!.customerName != null ||
                state.header!.customerAddress != null ||
                state.header!.customerPhone != null)
              const SizedBox(
                height: 10,
              )
          ],
        );
      },
    );
  }
}

class ReceiptLineItem extends StatelessWidget {
  const ReceiptLineItem({Key? key}) : super(key: key);

  static const TextStyle headerStyle = TextStyle(fontWeight: FontWeight.bold);

  Widget buildHeader() {
    return Row(
      children: const [
        Expanded(
            flex: 2,
            child: Text(
              "Item",
              style: headerStyle,
            )),
        Expanded(
            flex: 5,
            child: Text(
              "Description",
              style: headerStyle,
            )),
        Expanded(
            flex: 1,
            child: Text(
              "Qty",
              textAlign: TextAlign.right,
              style: headerStyle,
            )),
        Expanded(
            flex: 2,
            child: Text(
              "Price",
              textAlign: TextAlign.right,
              style: headerStyle,
            )),
      ],
    );
  }

  Widget buildLineDetail(TransactionLineItemEntity lineItem) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 2,
            child: Text(
              "${lineItem.productId}",
            )),
        Expanded(
            flex: 5,
            child: Text(
              lineItem.productDescription,
            )),
        Expanded(
            flex: 1,
            child: Text(
              "${lineItem.qty}",
              textAlign: TextAlign.right,
            )),
        Expanded(
            flex: 2,
            child: Text(
              "${Currency.inr}${lineItem.amount}",
              textAlign: TextAlign.right,
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        return Column(
          children: [
            buildHeader(),
            CustomPaint(
              painter: DrawDottedHorizontalLine(),
              size: Size(MediaQuery.of(context).size.width, 0),
            ),
            ...state.lineItems!.map((e) => buildLineDetail(e)).toList()
          ],
        );
      },
    );
  }
}

class ReceiptSummary extends StatelessWidget {
  const ReceiptSummary({Key? key}) : super(key: key);

  static const style = TextStyle(fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Subtotal",
                  style: style,
                ),
                Text("${Currency.inr}${state.header!.subtotal}")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Discount",
                  style: style,
                ),
                Text("${Currency.inr}0.00")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Tax", style: style),
                Text("${Currency.inr}${state.header!.taxTotal}")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Total", style: style),
                Text("${Currency.inr}${state.header!.total}")
              ],
            ),
          ],
        );
      },
    );
  }
}

class ReceiptBarcode extends StatelessWidget {
  const ReceiptBarcode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('ddMMyyyy');
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        return BarcodeWidget(
          barcode: Barcode.code128(), // Barcode type and settings
          data:
              '${formatter.format(DateTime.fromMicrosecondsSinceEpoch(state.header!.businessDate))}${state.header!.transId}', // Content
          width: 200,
          height: 80,
        );
      },
    );
  }
}

class ReceiptFooter extends StatelessWidget {
  const ReceiptFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Thank You For Shopping With Us.",
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

class DrawDottedHorizontalLine extends CustomPainter {
  late Paint _paint;
  DrawDottedHorizontalLine() {
    _paint = Paint();
    _paint.color = Colors.black; //dots color
    _paint.strokeWidth = 0.8; //dots thickness
    _paint.strokeCap = StrokeCap.round; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    double width = 4;
    double gap = 2;
    for (double t = 0; t <= size.width; t += (width + gap)) {
      canvas.drawLine(Offset(t, 0.0), Offset(t + width, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DrawCircularArcLine extends CustomPainter {
  late Paint _paint;
  final String direction;
  DrawCircularArcLine({this.direction = "TOP"}) {
    _paint = Paint();
    _paint.color = Colors.grey; //dots color
    _paint.strokeWidth = 0.8; //dots thickness
    _paint.style = PaintingStyle.fill;
    _paint.strokeCap = StrokeCap.round; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    double gap = 10;

    int mulFactor = 1;
    if (direction == bottom) {
      mulFactor = -1;
    }

    for (double i = gap; i <= size.width; i += (size.height + gap)) {
      if (i + size.height < size.width) {
        canvas.drawArc(
            Rect.fromLTWH(
                i, mulFactor * -size.height / 2, size.height, size.height),
            0,
            mulFactor * 3.14,
            false,
            _paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
