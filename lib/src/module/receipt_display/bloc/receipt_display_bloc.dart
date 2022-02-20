
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'receipt_display_event.dart';
part 'receipt_display_state.dart';

class ReceiptDisplayBloc extends Bloc<ReceiptDisplayEvent, ReceiptDisplayState> {

  final log = Logger('ReceiptDisplayBloc');
  final int transId;
  final AppDatabase db;

  ReceiptDisplayBloc({ required this.transId, required this.db }) : super(ReceiptDisplayState()) {
    on<FetchReceiptDataEvent>(_onFetchReceiptData);
    on<UpdateReceiptStatusEvent>(_onUpdateReceiptStatusEvent);
  }

  void _onFetchReceiptData(ReceiptDisplayEvent event, Emitter<ReceiptDisplayState> emit) async {
    try {
      emit(state.copyWith(status: ReceiptDisplayStatus.loading));
      TransactionHeaderEntity? header = await db.transactionDao.findHeaderByTransactionSeq(transId);
      List<TransactionLineItemEntity> lineItem = await db.transactionDao.findLineItemByTransactionSeq(transId);
      List<TransactionLineItemEntity> tmp = await db.transactionDao.getAllTransactionLineItem();
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
