import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/widgets/appbar_leading.dart';

import 'bloc/receipt_display_bloc.dart';

class InvoiceDisplayView extends StatelessWidget {
  final int transactionId;
  const InvoiceDisplayView({Key? key, required this.transactionId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => ReceiptDisplayBloc(
          transId: transactionId,
          db: RepositoryProvider.of(context),
          settingsRepo: RepositoryProvider.of(context))
        ..add(FetchReceiptDataEvent()),
      child: Container(
        color: AppColor.background,
        child: SafeArea(
            child: Scaffold(
          backgroundColor: AppColor.background,
          body: BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
              builder: (context, state) {
            return Stack(
              fit: StackFit.expand,
              children: [
                if (state.status == ReceiptDisplayStatus.success)
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: InteractiveViewer(
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 80,
                            ),
                            InvoiceBlock(),
                            InvoiceBlock(),
                            InvoiceBlock(),
                          ],
                        ),
                      ),
                    ),
                  ),
                if (state.status == ReceiptDisplayStatus.success)
                  Positioned(
                    top: 20,
                    left: 16,
                    child: AppBarLeading(
                      heading: "Invoice #${state.header!.transId}",
                      icon: Icons.arrow_back,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
              ],
            );
          }),
        )),
      ),
    );
  }
}

class InvoiceBlock extends StatelessWidget {
  const InvoiceBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Container(
        height: MediaQuery.of(context).size.width * 1.414,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(border: Border.all(width: 0.4)),
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            InvoiceHeader(),
            InvoiceTable(),
            Expanded(child: Container()),
            InvoiceFooter()
          ],
        ),
      ),
    );
  }
}

class InvoiceHeader extends StatelessWidget {
  const InvoiceHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 0.4),
      )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            children: const [InvoiceBusinessDetail(), InvoiceBuyerDetail()],
          )),
          const Expanded(child: InvoiceSummary())
        ],
      ),
    );
  }
}

class InvoiceBusinessDetail extends StatelessWidget {
  const InvoiceBusinessDetail({Key? key}) : super(key: key);
  final double fontSize = 8;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        right: BorderSide(width: 0.4),
        bottom: BorderSide(width: 0.4),
      )),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pratyush Ka Thela",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize + 1),
          ),
          Text(
            "Ganesh Chowak",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "Samastipur",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "Ph: 9430123120",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "GST: 10A5432543JKFE",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "Bihar - 848101 - India",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "Email: pratyushharsh2015@gmail.com",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "GSTIN/UIN: 10AKKKFREG5KK",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "State Name: Bihar, Code : 10",
            style: TextStyle(fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}

class InvoiceBuyerDetail extends StatelessWidget {
  const InvoiceBuyerDetail({Key? key}) : super(key: key);
  final double fontSize = 8;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        right: BorderSide(width: 0.4),
      )),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Buyer:",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "Samrat Agency",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
          ),
          Text(
            "Gola Road, Samastipur",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "Bihar - 848101, India",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "GSTIN/UIN: 10AKKKFREG4345KK",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "PAN/IT NO: ASYPK7166E",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "State Name: Bihar, Code : 10",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "Contact person: Pratyush Harsh",
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            "Contact : 9931032480",
            style: TextStyle(fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}

class InvoiceSummaryBlock extends StatelessWidget {
  final String label;
  final String value;
  final bool? top;
  final bool? right;
  final bool? bottom;
  final bool? left;
  const InvoiceSummaryBlock(
      {Key? key,
      required this.label,
      required this.value,
      this.top,
      this.right,
      this.bottom,
      this.left})
      : super(key: key);
  final double fontSize = 7;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          border: Border(
        top: top != null ? const BorderSide(width: 0.4) : BorderSide.none,
        right: right != null ? const BorderSide(width: 0.4) : BorderSide.none,
        bottom: bottom != null ? const BorderSide(width: 0.4) : BorderSide.none,
        left: left != null ? const BorderSide(width: 0.4) : BorderSide.none,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: fontSize)),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(
              value.isNotEmpty ? value : " ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
            ),
          ),
        ],
      ),
    );
  }
}

class InvoiceSummary extends StatelessWidget {
  const InvoiceSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: InvoiceSummaryBlock(
                    right: true,
                    label: "Invoice No.",
                    value: "SRS/22-23/0498",
                  ),
                ),
                Expanded(
                  child: InvoiceSummaryBlock(
                    label: "Dated",
                    value: "2-May-22",
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: InvoiceSummaryBlock(
                    right: true,
                    label: "Delivery Note",
                    value: "",
                  ),
                ),
                Expanded(
                  child: InvoiceSummaryBlock(
                    label: "Mode/Terms of Payment",
                    value: "",
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4),
              ),
            ),
            child: Row(
              children: const [
                Expanded(
                  child: InvoiceSummaryBlock(
                    right: true,
                    label: "Reference No & Date",
                    value: "SRS/22-23/0498 dt 2-May-22",
                  ),
                ),
                Expanded(
                  child: InvoiceSummaryBlock(
                    label: "Other Reference",
                    value: "",
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4),
              ),
            ),
            child: Row(
              children: const [
                Expanded(
                  child: InvoiceSummaryBlock(
                    right: true,
                    label: "Buyer's Order No",
                    value: "",
                  ),
                ),
                Expanded(
                  child: InvoiceSummaryBlock(
                    label: "Dated",
                    value: "",
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4),
              ),
            ),
            child: Row(
              children: const [
                Expanded(
                  child: InvoiceSummaryBlock(
                    right: true,
                    label: "Dispatch Doc No",
                    value: "",
                  ),
                ),
                Expanded(
                  child: InvoiceSummaryBlock(
                    label: "Delivery Note Date",
                    value: "",
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4),
              ),
            ),
            child: Row(
              children: const [
                Expanded(
                  child: InvoiceSummaryBlock(
                    right: true,
                    label: "Dispatched Through",
                    value: "",
                  ),
                ),
                Expanded(
                  child: InvoiceSummaryBlock(
                    label: "Destination",
                    value: "",
                  ),
                ),
              ],
            ),
          ),
          const InvoiceSummaryBlock(label: "Terms of delivery", value: "")
        ],
      ),
    );
  }
}

class InvoiceTable extends StatelessWidget {
  const InvoiceTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InvoiceTableCells(
            bottomBorder: true,
            data: [
              InvoiceTableCellModel(label: "Sl.No", flex: 2),
              InvoiceTableCellModel(label: "Description", flex: 11),
              InvoiceTableCellModel(label: "HSN/SAC", flex: 5),
              InvoiceTableCellModel(label: "Alt/Qty", flex: 4),
              InvoiceTableCellModel(label: "Qty", flex: 4),
              InvoiceTableCellModel(label: "Sale Price", flex: 5),
              InvoiceTableCellModel(label: "Rate", flex: 5),
              InvoiceTableCellModel(label: "UOM", flex: 3),
              InvoiceTableCellModel(label: "Disc", flex: 3),
              InvoiceTableCellModel(
                  label: "Amount", flex: 6, textAlign: TextAlign.right),
            ],
          ),
          const InvoiceTableLineItems(),
          const InvoiceTableOrderSummary()
        ],
      ),
    );
  }
}

class InvoiceTableOrderSummary extends StatelessWidget {
  const InvoiceTableOrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        return InvoiceTableCells(
          topBorder: true,
          bottomBorder: true,
          data: [
            InvoiceTableCellModel(label: "", flex: 2),
            InvoiceTableCellModel(
                label: "Total",
                flex: 11,
                textAlign: TextAlign.right,
                fontWeight: FontWeight.bold),
            InvoiceTableCellModel(label: "", flex: 5),
            InvoiceTableCellModel(label: "", flex: 4),
            InvoiceTableCellModel(
                label: "",
                flex: 4,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.right),
            InvoiceTableCellModel(
                label: "",
                flex: 5,
                textAlign: TextAlign.right),
            InvoiceTableCellModel(
                label: "",
                flex: 5,
                textAlign: TextAlign.right),
            InvoiceTableCellModel(label: "", flex: 3),
            InvoiceTableCellModel(
                label: "",
                flex: 3),
            InvoiceTableCellModel(
                label: "${state.header?.total.toStringAsFixed(2)}",
                flex: 6,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.right),
          ],
        );
      },
    );
  }
}

class InvoiceTableLineItems extends StatelessWidget {
  const InvoiceTableLineItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        if (state.lineItems == null) return Container();
        return Column(
          children: state.lineItems!
              .map((e) => InvoiceTableCells(
                    data: [
                      InvoiceTableCellModel(
                          label: e.transSeq.toString(), flex: 2),
                      InvoiceTableCellModel(
                          label: e.productDescription,
                          flex: 11,
                          fontWeight: FontWeight.bold),
                      InvoiceTableCellModel(label: "${e.hsn}", flex: 5),
                      InvoiceTableCellModel(label: "", flex: 4),
                      InvoiceTableCellModel(
                          label: e.qty.toString(),
                          flex: 4,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.right),
                      InvoiceTableCellModel(
                          label: e.listPrice.toStringAsFixed(2),
                          flex: 5,
                          textAlign: TextAlign.right),
                      InvoiceTableCellModel(
                          label: e.salePrice.toStringAsFixed(2),
                          flex: 5,
                          textAlign: TextAlign.right),
                      InvoiceTableCellModel(label: e.uom, flex: 3),
                      InvoiceTableCellModel(
                          label: (e.itemDiscount + e.orderDiscount)
                              .toStringAsFixed(2),
                          flex: 3),
                      InvoiceTableCellModel(
                          label: e.amount.toStringAsFixed(2),
                          flex: 6,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.right),
                    ],
                  ))
              .toList(),
        );
      },
    );
  }
}

class InvoiceTableCellModel {
  final String label;
  final int? flex;
  final double? width;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  InvoiceTableCellModel(
      {required this.label,
      this.flex,
      this.width,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.left});
}

class InvoiceTableCells extends StatelessWidget {
  final List<InvoiceTableCellModel> data;
  final FontWeight? fontWeight;
  const InvoiceTableCells(
      {Key? key,
      required this.data,
      this.fontWeight,
      this.bottomBorder = false,
      this.topBorder = false})
      : super(key: key);
  final double fontSize = 7;
  final bool bottomBorder;
  final bool topBorder;

  Widget buildHeader(InvoiceTableCellModel m, {bool end = false}) {
    if (m.flex != null) {
      return Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
          decoration: BoxDecoration(
            border: Border(
              right: end ? BorderSide.none : const BorderSide(width: 0.4),
            ),
          ),
          child: Text(
            m.label,
            textAlign: m.textAlign,
            style: TextStyle(fontSize: fontSize, fontWeight: m.fontWeight),
          ),
        ),
        flex: m.flex!,
      );
    }

    return Expanded(
      child: FittedBox(
        fit: BoxFit.cover,
        child: Text(
          m.label,
          textAlign: m.textAlign,
          style: TextStyle(fontSize: fontSize, fontWeight: m.fontWeight),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: bottomBorder ? const BorderSide(width: 0.4) : BorderSide.none,
          bottom: bottomBorder ? const BorderSide(width: 0.4) : BorderSide.none,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: data
              .asMap()
              .entries
              .map((e) => buildHeader(e.value, end: e.key == data.length - 1))
              .toList(),
        ),
      ),
    );
  }
}

class TaxTableHeader extends StatelessWidget {
  const TaxTableHeader({Key? key}) : super(key: key);
  final double fontSize = 7;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.4),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 0.4),
                  ),
                ),
                child: Text(
                  "HSN/SAC",
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
              flex: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 0.4),
                  ),
                ),
                child: Text(
                  "HSN/SAC",
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
              flex: 5,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 0.4),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Central Tax",
                      style: TextStyle(fontSize: fontSize),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 0.4),
                                right: BorderSide(width: 0.4),
                              ),
                            ),
                            child: Text(
                              "Rate",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: fontSize),
                            ),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 0.4),
                              ),
                            ),
                            child: Text(
                              "Amount",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: fontSize),
                            ),
                          ),
                          flex: 5,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              flex: 7,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 0.4),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "State Tax",
                      style: TextStyle(fontSize: fontSize),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 0.4),
                                right: BorderSide(width: 0.4),
                              ),
                            ),
                            child: Text(
                              "Rate",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: fontSize),
                            ),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 0.4),
                              ),
                            ),
                            child: Text(
                              "Amount",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: fontSize),
                            ),
                          ),
                          flex: 5,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              flex: 7,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: Text(
                  "Total",
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
              flex: 5,
            )
          ],
        ),
      ),
    );
  }
}

class InvoiceTaxDetail extends StatelessWidget {
  const InvoiceTaxDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TaxTableHeader(),
          InvoiceTableCells(
            bottomBorder: true,
            data: [
              InvoiceTableCellModel(label: "48239019", flex: 10),
              InvoiceTableCellModel(
                  label: "43,220", flex: 5, textAlign: TextAlign.right),
              InvoiceTableCellModel(
                  label: "9%", flex: 2, textAlign: TextAlign.right),
              InvoiceTableCellModel(
                  label: "3,339.80", flex: 5, textAlign: TextAlign.right),
              InvoiceTableCellModel(
                  label: "9%", flex: 2, textAlign: TextAlign.right),
              InvoiceTableCellModel(
                  label: "3,339.80", flex: 5, textAlign: TextAlign.right),
              InvoiceTableCellModel(
                  label: "7,779.60", flex: 5, textAlign: TextAlign.right),
            ],
          ),
          InvoiceTableCells(
            bottomBorder: true,
            data: [
              InvoiceTableCellModel(
                  label: "Total",
                  flex: 10,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.right),
              InvoiceTableCellModel(
                  label: "43,220",
                  flex: 5,
                  textAlign: TextAlign.right,
                  fontWeight: FontWeight.bold),
              InvoiceTableCellModel(
                  label: "9%",
                  flex: 2,
                  textAlign: TextAlign.right,
                  fontWeight: FontWeight.bold),
              InvoiceTableCellModel(
                  label: "3,339.80",
                  flex: 5,
                  textAlign: TextAlign.right,
                  fontWeight: FontWeight.bold),
              InvoiceTableCellModel(
                  label: "9%",
                  flex: 2,
                  textAlign: TextAlign.right,
                  fontWeight: FontWeight.bold),
              InvoiceTableCellModel(
                  label: "3,339.80",
                  flex: 5,
                  textAlign: TextAlign.right,
                  fontWeight: FontWeight.bold),
              InvoiceTableCellModel(
                  label: "7,779.60",
                  flex: 5,
                  textAlign: TextAlign.right,
                  fontWeight: FontWeight.bold),
            ],
          )
        ],
      ),
    );
  }
}

class InvoiceFooter extends StatelessWidget {
  const InvoiceFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          InvoiceTaxDetail(),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
