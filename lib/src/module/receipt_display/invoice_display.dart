import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:printing/printing.dart';
import 'package:receipt_generator/src/module/receipt_display/template/invoice_config.dart';

import '../../config/theme_settings.dart';
import '../../widgets/appbar_leading.dart';
import '../../widgets/my_loader.dart';
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
      create: (context) => ReceiptDisplayBloc(
          transId: transactionId,
          transactionRepo: RepositoryProvider.of(context),
          authBloc: RepositoryProvider.of(context),
          settingsRepo: RepositoryProvider.of(context))
        ..add(FetchReceiptDataEvent()),
      child: Scaffold(
        backgroundColor: AppColor.background,
        body: Stack(
          children: [
            Positioned(
              top: 70,
              bottom: 0,
              left: 0,
              right: 0,
              child: BlocBuilder<ReceiptDisplayBloc, ReceiptDisplayState>(
                builder: (context, state) {
                  if (state.status == ReceiptDisplayStatus.success) {
                    return MaterialApp(
                      debugShowCheckedModeBanner: false,
                      theme: ThemeData.light().copyWith(
                        primaryColor: AppColor.primary,
                        brightness: Brightness.light,
                        backgroundColor: AppColor.background,
                        dividerColor: Colors.white54,
                        colorScheme:
                            const ColorScheme.light(primary: AppColor.primary),
                      ),
                      home: PdfPreview(
                        loadingWidget: const MyLoader(color: AppColor.primary),
                        canDebug: false,
                        maxPageWidth: 700,
                        scrollViewDecoration: const BoxDecoration(
                          color: AppColor.background,
                        ),
                        build: (format) => generateInvoice(
                            format,
                            state.header!,
                            RepositoryProvider.of<AuthenticationBloc>(context)
                                .state
                                .store!,
                            InvoiceConfig(
                                columnConfig:
                                    InvoiceConfigConstants.columnConfig, paymentColumnConfig: InvoiceConfigConstants.paymentColumn)),
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ),
            Positioned(
              top: 20,
              left: 16,
              child: AppBarLeading(
                icon: Icons.arrow_back,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
