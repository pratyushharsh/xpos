import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/theme_settings.dart';
import '../../util/text_input_formatter/currency_text_input_formatter.dart';
import '../../widgets/appbar_leading.dart';
import 'bloc/create_new_receipt_bloc.dart';
import 'new_receipt_view.dart';
import 'new_recipt_desktop_view.dart';

class NewReceiptMobileView extends StatelessWidget {
  const NewReceiptMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.background,
          body: Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 80,
                    ),
                    CustomerDetailWidget(),
                    // const Divider(
                    //   thickness: 8,
                    // ),
                    LineItemHeader(),
                    Divider(),
                    Expanded(child: BuildLineItem()),
                    SearchAndAddItem(),
                    Divider(),
                    NewReceiptSummaryWidget(),
                    Divider(),
                    // NewInvoiceButtonBar(),
                  ],
                ),
              ),
              BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
                builder: (context, state) {
                  return Positioned(
                    top: 20,
                    left: 16,
                    child: AppBarLeading(
                      heading: "Receipt  #${state.transSeq.toString()}",
                      icon: Icons.arrow_back,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          bottomNavigationBar: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: NewInvoiceButtonBar(),
          ),
        ),
      ),
    );
  }
}

class AcceptTenderDisplayMobile extends StatelessWidget {
  final Function onTender;
  const AcceptTenderDisplayMobile({Key? key, required this.onTender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: TenderDisplayDesktop(onTender: onTender,)),
      ),
    );
  }
}

class CashTender extends StatefulWidget {
  const CashTender({Key? key}) : super(key: key);

  @override
  State<CashTender> createState() => _CashTenderState();
}

class _CashTenderState extends State<CashTender> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Icon(Icons.money),
          TextFormField(
            decoration: const InputDecoration(
              labelStyle: TextStyle(fontSize: 18),
              border: InputBorder.none,
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 1.5),
            inputFormatters: [CurrencyTextInputFormatter(locale: "en_IN")],
          ),
        ]));
  }
}
