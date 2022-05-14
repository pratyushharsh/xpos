
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:receipt_generator/src/repositories/setting_repository.dart';

part 'receipt_display_event.dart';
part 'receipt_display_state.dart';

class ReceiptDisplayBloc extends Bloc<ReceiptDisplayEvent, ReceiptDisplayState> {

  final log = Logger('ReceiptDisplayBloc');
  final int transId;
  final AppDatabase db;
  final SettingsRepository settingsRepo;

  ReceiptDisplayBloc({ required this.transId, required this.db , required this.settingsRepo}) : super(const ReceiptDisplayState()) {
    on<FetchReceiptDataEvent>(_onFetchReceiptData);
    on<UpdateReceiptStatusEvent>(_onUpdateReceiptStatusEvent);
  }

  void _onFetchReceiptData(ReceiptDisplayEvent event, Emitter<ReceiptDisplayState> emit) async {
    try {
      ReceiptSettingsModel recSetting = await settingsRepo.getReceiptSettings();
      emit(state.copyWith(status: ReceiptDisplayStatus.loading, receiptSettings: recSetting));
      TransactionHeaderEntity? header = await db.transactionDao.findHeaderByTransactionSeq(transId);
      List<TransactionLineItemEntity> lineItem = await db.transactionDao.findLineItemByTransactionSeq(transId);
      // List<TransactionLineItemEntity> tmp = await db.transactionDao.getAllTransactionLineItem();
      if (header != null) {
        emit(state.copyWith(header: header, lineItems: lineItem, status: ReceiptDisplayStatus.success));
      } else {
        emit(state.copyWith(status: ReceiptDisplayStatus.failure));
      }
    } catch(e) {
      log.severe(e);
      emit(state.copyWith(status: ReceiptDisplayStatus.failure));
    }
  }

  void _onUpdateReceiptStatusEvent(UpdateReceiptStatusEvent event, Emitter<ReceiptDisplayState> emit) async {
    try {
      var data = await db.transactionDao.updateTransactionStatus(transId, event.status);
      if (data) {
        add(FetchReceiptDataEvent());
      }
    } catch (e) {
      log.severe(e);
    }
  }
}
