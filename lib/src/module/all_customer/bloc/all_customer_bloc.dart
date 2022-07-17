
import 'package:bloc/bloc.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/contact_entity.dart';

part 'all_customer_event.dart';
part 'all_customer_state.dart';

class AllCustomerBloc extends Bloc<AllCustomerEvent, AllCustomerState> {

  final log = Logger('AllCustomerBloc');
  final Isar db;

  AllCustomerBloc({required this.db}) : super(AllCustomerState()) {
    on<LoadAllCustomer>(_onLoadCustomers);
  }

  void _onLoadCustomers(LoadAllCustomer event, Emitter<AllCustomerState> emit) async {
    try {
      emit(state.copyWith(status: AllCustomerStatus.loading));
      var customers = await db.contactEntitys.where().findAll();
      emit(state.copyWith(customers: customers, status: AllCustomerStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: AllCustomerStatus.failure));
    }
  }
}
