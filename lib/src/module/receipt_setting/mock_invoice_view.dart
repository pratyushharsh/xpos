import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:printing/printing.dart';

import '../../config/theme_settings.dart';
import '../../repositories/mock/mock_transaction_repository.dart';
import '../../widgets/my_loader.dart';
import '../receipt_display/bloc/receipt_display_bloc.dart';
import '../receipt_display/template/invoice_1.dart';
import 'bloc/receipt_setting_bloc.dart';

class MockInvoiceView extends StatefulWidget {
  const MockInvoiceView({Key? key}) : super(key: key);

  @override
  State<MockInvoiceView> createState() => _MockInvoiceViewState();
}

class _MockInvoiceViewState extends State<MockInvoiceView> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => ReceiptDisplayBloc(
          transId: 10001,
          authBloc: RepositoryProvider.of(context),
          transactionRepo: MockTransactionRepository(
              db: RepositoryProvider.of(context),
              restClient: RepositoryProvider.of(context)),
          settingsRepo: RepositoryProvider.of(context))
        ..add(FetchReceiptDataEvent()),
      child: BlocListener<ReceiptSettingBloc, ReceiptSettingState>(
        listener: (context, state) {

        },
        child: const MockInvoiceForm(),
      ),
    );
  }
}

class MockInvoiceForm extends StatelessWidget {

  const MockInvoiceForm({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
      builder: (context, state) {
        if (state.status == ReceiptDisplayStatus.loading) {
          return const MyLoader(color: AppColor.primary);
        }

        if (state.status == ReceiptDisplayStatus.success) {
          return Container(
            color: Colors.white,
            child: PdfPreview(
              loadingWidget: const MyLoader(color: AppColor.primary),
               actions: [],
              allowPrinting: false,
              allowSharing: false,
              canDebug: false,
              maxPageWidth: 700,
              scrollViewDecoration: const BoxDecoration(
                color: Colors.white,
              ),
              build: (format) => generateInvoice(format, state.header!),
            ),
          );
        }

        return Container();
      },
    );
  }
}
