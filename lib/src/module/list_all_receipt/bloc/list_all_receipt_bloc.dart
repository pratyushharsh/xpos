
import 'package:bloc/bloc.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

part 'list_all_receipt_event.dart';
part 'list_all_receipt_state.dart';

class ListAllReceiptBloc extends Bloc<ListAllReceiptEvent, ListAllReceiptState> {

  final log = Logger('ListAllReceiptBloc');
  final Isar db;

  ListAllReceiptBloc({required this.db}) : super(ListAllReceiptState()) {
    on<LoadAllReceipt>(_onLoadAllReceipt);
  }

  void _onLoadAllReceipt(LoadAllReceipt event, Emitter<ListAllReceiptState> emit) async {
    try {
      emit(state.copyWith(status: ListAllReceiptStatus.loading));
      var receipts = await db.transactionHeaderEntitys.where(sort: Sort.desc).findAll();
      emit(state.copyWith(receipts: receipts, status: ListAllReceiptStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ListAllReceiptStatus.failure));
    }
  }
}
