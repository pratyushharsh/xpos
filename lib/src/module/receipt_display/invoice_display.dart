import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:printing/printing.dart';

import '../authentication/bloc/authentication_bloc.dart';
import 'bloc/receipt_display_bloc.dart';
import 'template/invoice.dart';


class AppInvoiceDisplay extends StatelessWidget {
  final int transactionId;

  const AppInvoiceDisplay({Key? key, required this.transactionId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      ReceiptDisplayBloc(
          transId: transactionId,
          transactionRepo: RepositoryProvider.of(context),
          authBloc: RepositoryProvider.of(context),
          settingsRepo: RepositoryProvider.of(context))
        ..add(FetchReceiptDataEvent()),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
          builder: (context, state) {
            if (state.status == ReceiptDisplayStatus.success) {
              return PdfPreview(
                maxPageWidth: 700,
                build: (format) => generateInvoice(format, state.header!, RepositoryProvider.of<AuthenticationBloc>(context).state.store!),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
