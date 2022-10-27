import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';

import '../../../entity/pos/report_config_entity.dart';
import '../../../repositories/invoice_repository.dart';
import '../../authentication/bloc/authentication_bloc.dart';
import '../../receipt_display/template/invoice_config.dart';

part 'invoice_setting_event.dart';
part 'invoice_setting_state.dart';

const _duration = Duration(milliseconds: 300);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}

class InvoiceSettingBloc
    extends Bloc<InvoiceSettingEvent, InvoiceSettingState> {
  final log = Logger('InvoiceSettingBloc');

  final InvoiceRepository invoiceRepo;
  final AuthenticationBloc authBloc;

  InvoiceSettingBloc({required this.invoiceRepo, required this.authBloc})
      : super(const InvoiceSettingState()) {
    on<OnInitialInvoiceSettingEvent>(_onInitialInvoiceSettingEvent);
    on<AddNewConfigColumn>(_onAddNewConfigColumn);
    on<RemoveConfigColumn>(_onRemoveConfigColumn);
    on<ShowTaxSummary>(_onShowTaxSummary);
    on<ShowPaymentDetails>(_onShowPaymentDetails);
    on<UploadLogoFromPlatform>(_onUploadLogo);
    on<OnSaveInvoiceSettingEvent>(_onSaveInvoiceSettingEvent);
    on<ShowTermsAnsCondition>(_onShowTermsAnsCondition);
    on<UpdateTermsAnsCondition>(_onUpdateTermsAnsCondition, transformer: debounce(_duration));
    on<ShowDeclaration>(_onShowDeclaration);
    on<UpdateDeclaration>(_onUpdateDeclaration, transformer: debounce(_duration));
  }

  void _onInitialInvoiceSettingEvent(OnInitialInvoiceSettingEvent event,
      Emitter<InvoiceSettingState> emit) async {
    final config = await invoiceRepo.getInvoiceSettingByName('INVOICE');
    emit(state.copyWith(
      columns: config.columnConfig,
      showTaxSummary: config.showTaxSummary,
      showPaymentDetails: config.showPaymentDetails,
      logo: config.logo,
      showTermsAndCondition: config.showTermsAndCondition,
      termsAndCondition: config.termsAndCondition,
      showDeclaration: config.showDeclaration,
      declaration: config.declaration,
      status: InvoiceSettingStatus.preLoad,
    ));
  }

  void _onAddNewConfigColumn(
      AddNewConfigColumn event, Emitter<InvoiceSettingState> emit) {
    final newColumns = List<ReportColumnConfigEntity>.from(state.columns);
    newColumns.add(event.column);
    emit(state.copyWith(columns: newColumns, status: InvoiceSettingStatus.modified));
  }

  void _onRemoveConfigColumn(
      RemoveConfigColumn event, Emitter<InvoiceSettingState> emit) {
    final newColumns = List<ReportColumnConfigEntity>.from(state.columns);
    newColumns.remove(event.column);
    emit(state.copyWith(columns: newColumns, status: InvoiceSettingStatus.modified));
  }

  void _onShowTaxSummary(
      ShowTaxSummary event, Emitter<InvoiceSettingState> emit) {
    emit(state.copyWith(showTaxSummary: event.show, status: InvoiceSettingStatus.modified));
  }

  void _onShowPaymentDetails(
      ShowPaymentDetails event, Emitter<InvoiceSettingState> emit) {
    emit(state.copyWith(showPaymentDetails: event.show, status: InvoiceSettingStatus.modified));
  }

  void _onUploadLogo(UploadLogoFromPlatform event, Emitter<InvoiceSettingState> emit) {
    emit(state.copyWith(rawLogo: event.logo, logo: 'file://${event.logo.path}', status: InvoiceSettingStatus.modified));
  }

  void _onSaveInvoiceSettingEvent(OnSaveInvoiceSettingEvent event,
      Emitter<InvoiceSettingState> emit) async {
    try {
      String? logoPath;

      if (state.rawLogo != null && state.rawLogo!.path != null) {
        final dir = await getApplicationDocumentsDirectory();
        File tmp = File(state.rawLogo!.path!);
        logoPath = '${dir.path}/invoice/${state.rawLogo!.name}';
        logoPath = await invoiceRepo.uploadLogo(logoPath, await tmp.readAsBytes());
        log.info('Logo uploaded to $logoPath');
      }

      await invoiceRepo.saveInvoiceSetting(InvoiceConfig(
        columnConfig: state.columns,
        paymentColumnConfig: InvoiceConfigConstants.paymentColumn,
        logo: state.rawLogo != null ? 'file://$logoPath' : state.logo,
        showTaxSummary: state.showTaxSummary,
        showPaymentDetails: state.showPaymentDetails,
        showTermsAndCondition: state.showTermsAndCondition,
        termsAndCondition: state.termsAndCondition,
        showDeclaration: state.showDeclaration,
        declaration: state.declaration,
      ));
    } catch (e) {
      log.severe(e);
    }
  }

  void _onShowTermsAnsCondition(
      ShowTermsAnsCondition event, Emitter<InvoiceSettingState> emit) {
    emit(state.copyWith(showTermsAndCondition: event.show, status: InvoiceSettingStatus.modified));
  }

  void _onUpdateTermsAnsCondition(
      UpdateTermsAnsCondition event, Emitter<InvoiceSettingState> emit) {
    emit(state.copyWith(termsAndCondition: event.terms, status: InvoiceSettingStatus.modified));
  }

  void _onShowDeclaration(
      ShowDeclaration event, Emitter<InvoiceSettingState> emit) {
    emit(state.copyWith(showDeclaration: event.show, status: InvoiceSettingStatus.modified));
  }

  void _onUpdateDeclaration(
      UpdateDeclaration event, Emitter<InvoiceSettingState> emit) {
    emit(state.copyWith(declaration: event.declaration, status: InvoiceSettingStatus.modified));
  }
}
