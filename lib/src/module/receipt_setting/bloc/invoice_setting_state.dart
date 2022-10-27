part of 'invoice_setting_bloc.dart';

enum InvoiceSettingStatus { initial, preLoad, modified, saved }

class InvoiceSettingState {
  final List<ReportColumnConfigEntity> columns;
  final InvoiceSettingStatus status;
  final bool showTaxSummary;
  final bool showPaymentDetails;
  final PlatformFile? rawLogo;
  final String? logo;
  final bool showDeclaration;
  final String? declaration;
  final bool showTermsAndCondition;
  final String? termsAndCondition;

  const InvoiceSettingState({
    this.columns = const [],
    this.status = InvoiceSettingStatus.initial,
    this.showTaxSummary = true,
    this.showPaymentDetails = true,
    this.showDeclaration = true,
    this.declaration,
    this.rawLogo,
    this.logo,
    this.showTermsAndCondition = true,
    this.termsAndCondition,
  });

  InvoiceSettingState copyWith({
    List<ReportColumnConfigEntity>? columns,
    InvoiceSettingStatus? status,
    bool? showTaxSummary,
    bool? showPaymentDetails,
    bool? showDeclaration,
    String? declaration,
    PlatformFile? rawLogo,
    String? logo,
    bool? showTermsAndCondition,
    String? termsAndCondition,
  }) {
    return InvoiceSettingState(
      columns: columns ?? this.columns,
      status: status ?? this.status,
      showTaxSummary: showTaxSummary ?? this.showTaxSummary,
      showPaymentDetails: showPaymentDetails ?? this.showPaymentDetails,
      showDeclaration: showDeclaration ?? this.showDeclaration,
      declaration: declaration ?? this.declaration,
      rawLogo: rawLogo ?? this.rawLogo,
      logo: logo ?? this.logo,
      showTermsAndCondition: showTermsAndCondition ?? this.showTermsAndCondition,
      termsAndCondition: termsAndCondition ?? this.termsAndCondition,
    );
  }
}
