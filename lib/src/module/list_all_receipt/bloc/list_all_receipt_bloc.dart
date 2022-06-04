
import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'list_all_receipt_event.dart';
part 'list_all_receipt_state.dart';

class ListAllReceiptBloc extends Bloc<ListAllReceiptEvent, ListAllReceiptState> {

  final log = Logger('ListAllReceiptBloc');
  final AppDatabase db;

  ListAllReceiptBloc({required this.db}) : super(ListAllReceiptState()) {
    on<LoadAllReceipt>(_onLoadAllReceipt);
  }

  void _onLoadAllReceipt(LoadAllReceipt event, Emitter<ListAllReceiptState> emit) async {
    try {
      emit(state.copyWith(status: ListAllReceiptStatus.loading));
      var receipts = await db.transactionDao.findAllReceipt();
      emit(state.copyWith(receipts: receipts, status: ListAllReceiptStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ListAllReceiptStatus.failure));
    }
  }
}
