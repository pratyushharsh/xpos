import 'dart:io';
import 'dart:typed_data';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/pos/report_config_entity.dart';

import '../database/db_provider.dart';
import '../module/receipt_display/template/invoice_config.dart';

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
  headerFields("HEADER_FIELDS"),
  shippingAddressFields("SHIPPING_ADDRESS_FIELDS"),
  billingAddressFields("BILLING_ADDRESS_FIELDS"),
  lastUpdateAt("LAST_UPDATE_AT");

  const InvoiceField(this.value);

  final String value;
}

class InvoiceRepository with DatabaseProvider {
  final log = Logger('InvoiceRepository');

  Future<void> saveInvoiceSetting(InvoiceConfig setting) async {
    List<ReportColumn> columns = [];

    if (setting.headerFieldConfig.isNotEmpty) {
      columns.add(
        ReportColumn(
          id: InvoiceField.headerFields.value,
          fields: setting.headerFieldConfig,
        ),
      );
    }

    if (setting.billingAddFieldConfig.isNotEmpty) {
      columns.add(
        ReportColumn(
          id: InvoiceField.billingAddressFields.value,
          fields: setting.billingAddFieldConfig,
        ),
      );
    }

    if (setting.shippingAddFieldConfig.isNotEmpty) {
      columns.add(
        ReportColumn(
          id: InvoiceField.shippingAddressFields.value,
          fields: setting.shippingAddFieldConfig,
        ),
      );
    }

    if (setting.columnConfig.isNotEmpty) {
      columns.add(
        ReportColumn(
          id: InvoiceField.item.value,
          fields: setting.columnConfig,
        ),
      );
    }

    if (setting.paymentColumnConfig.isNotEmpty) {
      columns.add(
        ReportColumn(
          id: InvoiceField.payment.value,
          fields: setting.paymentColumnConfig,
        ),
      );
    }

    await db.writeTxn(() async {
      db.reportConfigEntitys.putByTypeSubtype(ReportConfigEntity(
        type: 'INVOICE',
        subtype: 'INVOICE',
        columns: columns,
        properties: [
          ReportProperty(
            key: InvoiceField.logo.value,
            stringValue: setting.logo,
          ),
          ReportProperty(
            key: InvoiceField.showTaxSummary.value,
            boolValue: setting.showTaxSummary,
          ),
          ReportProperty(
            key: InvoiceField.showPaymentDetails.value,
            boolValue: setting.showPaymentDetails,
          ),
          ReportProperty(
            key: InvoiceField.declaration.value,
            stringValue: setting.declaration,
          ),
          ReportProperty(
            key: InvoiceField.showDeclaration.value,
            boolValue: setting.showDeclaration,
          ),
          ReportProperty(
            key: InvoiceField.termsAndCondition.value,
            stringValue: setting.termsAndCondition,
          ),
          ReportProperty(
            key: InvoiceField.showTermsAndCondition.value,
            boolValue: setting.showTermsAndCondition,
          ),
          ReportProperty(
            key: InvoiceField.lastUpdateAt.value,
            intValue: DateTime.now().millisecondsSinceEpoch,
          ),
        ],
      ));
    });
  }

  Future<InvoiceConfig> getInvoiceSettingByName(String name) async {
    final config = await db.reportConfigEntitys
        .where()
        .typeSubtypeEqualTo('INVOICE', name)
        .findFirst();
    if (config == null) {
      return InvoiceConfig.defaultValue;
    }

    return InvoiceConfig(
      logo: config.properties
          .firstWhere((element) => element.key == InvoiceField.logo.value,
              orElse: () => ReportProperty(key: InvoiceField.logo.value))
          .stringValue,
      showTaxSummary: config.properties
              .firstWhere(
                  (element) => element.key == InvoiceField.showTaxSummary.value,
                  orElse: () =>
                      ReportProperty(key: InvoiceField.showTaxSummary.value))
              .boolValue ??
          false,
      showPaymentDetails: config.properties
              .firstWhere(
                  (element) =>
                      element.key == InvoiceField.showPaymentDetails.value,
                  orElse: () => ReportProperty(
                      key: InvoiceField.showPaymentDetails.value))
              .boolValue ??
          false,
      declaration: config.properties
          .firstWhere(
              (element) => element.key == InvoiceField.declaration.value,
              orElse: () => ReportProperty(key: InvoiceField.declaration.value))
          .stringValue,
      showDeclaration: config.properties
              .firstWhere(
                  (element) =>
                      element.key == InvoiceField.showDeclaration.value,
                  orElse: () =>
                      ReportProperty(key: InvoiceField.showDeclaration.value))
              .boolValue ??
          false,
      termsAndCondition: config.properties
          .firstWhere(
              (element) => element.key == InvoiceField.termsAndCondition.value,
              orElse: () =>
                  ReportProperty(key: InvoiceField.termsAndCondition.value))
          .stringValue,
      showTermsAndCondition: config.properties
              .firstWhere(
                  (element) =>
                      element.key == InvoiceField.showTermsAndCondition.value,
                  orElse: () => ReportProperty(
                      key: InvoiceField.showTermsAndCondition.value))
              .boolValue ??
          false,
      columnConfig: config.columns
              .firstWhere((element) => element.id == InvoiceField.item.value,
                  orElse: () => ReportColumn(id: InvoiceField.item.value))
              .fields ??
          [],
      paymentColumnConfig: config.columns
              .firstWhere((element) => element.id == InvoiceField.payment.value,
                  orElse: () => ReportColumn(id: InvoiceField.payment.value))
              .fields ??
          [],
      headerFieldConfig: config.columns
              .firstWhere(
                  (element) => element.id == InvoiceField.headerFields.value,
                  orElse: () =>
                      ReportColumn(id: InvoiceField.headerFields.value))
              .fields ??
          [],
      billingAddFieldConfig: config.columns
              .firstWhere(
                  (element) =>
                      element.id == InvoiceField.billingAddressFields.value,
                  orElse: () =>
                      ReportColumn(id: InvoiceField.billingAddressFields.value))
              .fields ??
          [],
      shippingAddFieldConfig: config.columns
              .firstWhere(
                  (element) =>
                      element.id == InvoiceField.shippingAddressFields.value,
                  orElse: () => ReportColumn(
                      id: InvoiceField.shippingAddressFields.value))
              .fields ??
          [],
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
