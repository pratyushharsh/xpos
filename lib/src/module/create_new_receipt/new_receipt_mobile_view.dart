import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/theme_settings.dart';
import '../../widgets/appbar_leading.dart';
import 'bloc/create_new_receipt_bloc.dart';
import 'new_receipt_view.dart';


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
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    CustomerDetailWidget(),
                    // const Divider(
                    //   thickness: 8,
                    // ),
                    const LineItemHeader(),
                    const Divider(),
                    const Expanded(child: BuildLineItem()),
                    const SearchAndAddItem(),
                    const Divider(),
                    const NewReceiptSummaryWidget(),
                    const Divider(),
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
