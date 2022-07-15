import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/theme_settings.dart';
import '../../util/text_input_formatter/currency_text_input_formatter.dart';
import '../../util/text_input_formatter/custom_formatter.dart';
import '../../widgets/appbar_leading.dart';
import '../../widgets/custom_button.dart';
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
          bottomNavigationBar: const NewInvoiceButtonBar(),
        ),
      ),
    );
  }
}

class AcceptTenderDisplayMobile extends StatelessWidget {
  const AcceptTenderDisplayMobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(child: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: CashTender(),
          ),

          Positioned(
            top: 20,
            left: 16,
            child: AppBarLeading(
              heading: "Tender",
              icon: Icons.arrow_back,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Row(
              children: [
                Expanded(
                  child: RejectButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: "Cancel",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AcceptButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: "Accept Payment",
                  ),
                ),
              ]
            )
          )
        ],
      )
    ),),);
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.money),
          TextFormField(
            decoration: const InputDecoration(
              labelStyle: TextStyle(fontSize: 18),
              border: InputBorder.none,
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 1.5),
            inputFormatters: [
              CurrencyTextInputFormatter(locale: "en_IN")
            ],
          ),
        ]
      )
    );
  }
}
