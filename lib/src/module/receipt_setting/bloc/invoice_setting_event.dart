part of 'invoice_setting_bloc.dart';

@immutable
abstract class InvoiceSettingEvent {}

class OnInitialInvoiceSettingEvent extends InvoiceSettingEvent {}

class AddNewConfigColumn extends InvoiceSettingEvent {
  final ReportColumnConfigEntity column;

  AddNewConfigColumn(this.column);
}

class RemoveConfigColumn extends InvoiceSettingEvent {
  final ReportColumnConfigEntity column;

  RemoveConfigColumn(this.column);
}

class ShowTaxSummary extends InvoiceSettingEvent {
  final bool show;

  ShowTaxSummary(this.show);
}

class ShowPaymentDetails extends InvoiceSettingEvent {
  final bool show;

  ShowPaymentDetails(this.show);
}

class UploadLogoFromPlatform extends InvoiceSettingEvent {
  final PlatformFile logo;

  UploadLogoFromPlatform(this.logo);
}

class OnSaveInvoiceSettingEvent extends InvoiceSettingEvent {}

class ShowTermsAnsCondition extends InvoiceSettingEvent {
  final bool show;

  ShowTermsAnsCondition(this.show);
}

class UpdateTermsAnsCondition extends InvoiceSettingEvent {
  final String? terms;

  UpdateTermsAnsCondition(this.terms);
}

class ShowDeclaration extends InvoiceSettingEvent {
  final bool show;

  ShowDeclaration(this.show);
}

class UpdateDeclaration extends InvoiceSettingEvent {
  final String? declaration;

  UpdateDeclaration(this.declaration);
}

class OnReportColumnConfigUpdate extends InvoiceSettingEvent {
  final ReportColumnConfigEntity column;

  OnReportColumnConfigUpdate(this.column);
}