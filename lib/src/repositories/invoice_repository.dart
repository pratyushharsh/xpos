import 'dart:io';
import 'dart:typed_data';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/pos/report_config_entity.dart';

import '../database/db_provider.dart';
import '../module/receipt_display/template/invoice_config.dart';
import '../util/helper/rest_api.dart';

enum InvoiceField {
  item("ITEM"),
  payment("PAYMENT"),
  logo("LOGO"),
  showTaxSummary("SHOW_TAX_SUMMARY"),
  showPaymentDetails("SHOW_PAYMENT_DETAILS"),
  declaration("DECLARATION"),
  showDeclaration("SHOW_DECLARATION"),
  termsAndCondition("TERMS_AND_CONDITION"),
  showTermsAndCondition("SHOW_TERMS_AND_CONDITION"),
  ;

  const InvoiceField(this.value);

  final String value;
}

class InvoiceRepository with DatabaseProvider {
  final log = Logger('InvoiceRepository');

  final RestApiClient restClient;

  InvoiceRepository({ required this.restClient});

  Future<void> saveInvoiceSetting(InvoiceConfig setting) async {
    db.writeTxn(() async {
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.item.value,
        columnConfig: setting.columnConfig,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.payment.value,
        columnConfig: setting.paymentColumnConfig,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.logo.value,
        stringValue: setting.logo,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.logo.value,
        stringValue: setting.logo,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.showTaxSummary.value,
        boolValue: setting.showTaxSummary,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.showPaymentDetails.value,
        boolValue: setting.showPaymentDetails,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.declaration.value,
        stringValue: setting.declaration,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.showDeclaration.value,
        boolValue: setting.showDeclaration,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.termsAndCondition.value,
        stringValue: setting.termsAndCondition,
      ));
      await db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: "INVOICE",
        subtype: InvoiceField.showTermsAndCondition.value,
        boolValue: setting.showTermsAndCondition,
      ));
    });
  }

  Future<InvoiceConfig> getInvoiceSettingByName(String name) async {
    final config = await db.reportConfigEntitys
        .where()
        .typeEqualToAnySubtype(name)
        .findAll();
    if (config.isEmpty) {
      return InvoiceConfig.defaultValue;
    }

    return InvoiceConfig(
      columnConfig: config
          .firstWhere((e) => e.subtype == InvoiceField.item.value)
          .columnConfig,
      paymentColumnConfig: config
          .firstWhere((e) => e.subtype == InvoiceField.payment.value)
          .columnConfig,
      logo: config
          .firstWhere((e) => e.subtype == InvoiceField.logo.value,
              orElse: () => ReportConfigEntity(type: '', subtype: ''))
          .stringValue,
      showTaxSummary: config
              .firstWhere((e) => e.subtype == InvoiceField.showTaxSummary.value,
                  orElse: () => ReportConfigEntity(type: '', subtype: ''))
              .boolValue ??
          false,
      showPaymentDetails: config
              .firstWhere(
                  (e) => e.subtype == InvoiceField.showPaymentDetails.value,
                  orElse: () => ReportConfigEntity(type: '', subtype: ''))
              .boolValue ??
          false,
      declaration: config
          .firstWhere((e) => e.subtype == InvoiceField.declaration.value,
              orElse: () => ReportConfigEntity(type: '', subtype: ''))
          .stringValue,
      showDeclaration: config
              .firstWhere(
                  (e) => e.subtype == InvoiceField.showDeclaration.value,
                  orElse: () => ReportConfigEntity(type: '', subtype: ''))
              .boolValue ??
          false,
      termsAndCondition: config
          .firstWhere((e) => e.subtype == InvoiceField.termsAndCondition.value,
              orElse: () => ReportConfigEntity(type: '', subtype: ''))
          .stringValue,
      showTermsAndCondition: config
              .firstWhere(
                  (e) => e.subtype == InvoiceField.showTermsAndCondition.value,
                  orElse: () => ReportConfigEntity(type: '', subtype: ''))
              .boolValue ??
          false,
    );
  }

  Future<String> uploadLogo(String path, Uint8List logo) async {
    // Create local file
    File file = File(path);
    file.createSync(recursive: true);
    await file.writeAsBytes(logo);
    return path;
  }
}
