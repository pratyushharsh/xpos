import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/widgets/appbar_leading.dart';

import 'bloc/receipt_setting_bloc.dart';
import 'mock_invoice_view.dart';

class InvoiceSettingView extends StatelessWidget {
  const InvoiceSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReceiptSettingBloc(
        settingsRepo: RepositoryProvider.of(context),
        authBloc: BlocProvider.of(context),
      )..add(OnInitReceiptSettingEvent()),
      child: const InvoiceSettingForm(),
    );
  }
}

class InvoiceSettingForm extends StatelessWidget {
  const InvoiceSettingForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(flex: 2, child: MockInvoiceView())
              ],
            ),
            Positioned(
              top: 20,
              left: 16,
              child: AppBarLeading(
                  heading: "Invoice Setting",
                  icon: Icons.arrow_back,
                  onTap: () {
                    Navigator.of(context).pop();
                  }),
            ),
            Positioned(
              top: 20,
              right: 16,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Save",
                  style: TextStyle(color: AppColor.primary),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                  primary: AppColor.color8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
