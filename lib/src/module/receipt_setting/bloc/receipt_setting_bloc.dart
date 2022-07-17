import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/repositories/setting_repository.dart';

part 'receipt_setting_event.dart';
part 'receipt_setting_state.dart';

class ReceiptSettingBloc
    extends Bloc<ReceiptSettingEvent, ReceiptSettingState> {
  final log = Logger('ReceiptSettingBloc');

  final SettingsRepository settingsRepo;

  ReceiptSettingBloc({required this.settingsRepo})
      : super(const ReceiptSettingState()) {
    on<OnStoreNumberChange>(_onStoreNumberChangeEvent);
    on<OnTaglineChange>(_onStoreTaglineChangeEvent);
    on<OnStoreAddressChange>(_onStoreAddressChangeEvent);
    on<OnStoreFooterTitleChange>(_onStoreFooterTitleChangeEvent);
    on<OnStoreFooterSubTitleChange>(_onStoreFooterSubTitleChangeEvent);
    on<OnSaveReceiptEvent>(_onSaveReceiptEvent);
    on<OnInitReceiptSettingEvent>(_onInitReceiptSettingEvent);
  }

  void _onStoreNumberChangeEvent(
      OnStoreNumberChange event, Emitter<ReceiptSettingState> emit) async {
    emit(state.copyWith(storeNumber: event.value, status: ReceiptSettingStatus.modified));
  }

  void _onStoreTaglineChangeEvent(
      OnTaglineChange event, Emitter<ReceiptSettingState> emit) async {
    emit(state.copyWith(tagLine: event.value, status: ReceiptSettingStatus.modified));
  }

  void _onStoreAddressChangeEvent(
      OnStoreAddressChange event, Emitter<ReceiptSettingState> emit) async {
    emit(state.copyWith(storeAddress: event.value, status: ReceiptSettingStatus.modified));
  }

  void _onStoreFooterTitleChangeEvent(
      OnStoreFooterTitleChange event, Emitter<ReceiptSettingState> emit) async {
    emit(state.copyWith(footerTitle: event.value, status: ReceiptSettingStatus.modified));
  }

  void _onStoreFooterSubTitleChangeEvent(OnStoreFooterSubTitleChange event,
      Emitter<ReceiptSettingState> emit) async {
    emit(state.copyWith(footerSubtitle: event.value, status: ReceiptSettingStatus.modified));
  }

  void _onSaveReceiptEvent(
      OnSaveReceiptEvent event, Emitter<ReceiptSettingState> emit) async {
    await settingsRepo.updateReceiptSetting(ReceiptSettingsModel(
      storeNumber: state.storeNumber,
      storeAddress: state.storeAddress,
      footerSubtitle: state.footerSubtitle,
      footerTitle: state.footerTitle,
      tagLine: state.tagLine
    ));
  }

  void _onInitReceiptSettingEvent(OnInitReceiptSettingEvent event, Emitter<ReceiptSettingState> emit) async {
    ReceiptSettingsModel settings = await settingsRepo.getReceiptSettings();
    emit(state.copyWith(
      storeNumber: settings.storeNumber,
      tagLine: settings.tagLine,
      footerTitle: settings.footerTitle,
      footerSubtitle: settings.footerSubtitle,
      storeAddress: settings.storeAddress,
      status: ReceiptSettingStatus.initLoad
    ));
  }
}
