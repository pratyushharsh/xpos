import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/model/cust_party.dart';
import 'package:receipt_generator/src/repositories/sequence_repository.dart';

part 'new_customer_event.dart';
part 'new_customer_state.dart';

class NewCustomerBloc extends Bloc<NewCustomerEvent, NewCustomerState> {
  final log = Logger('NewCustomerBloc');
  final Isar db;
  final SequenceRepository sequenceRepository;

  NewCustomerBloc({required this.db, required this.sequenceRepository}) : super(const NewCustomerState()) {
    on<OnCreateCustomer>(_onAddNewCustomer);
  }

  void _onAddNewCustomer(
      OnCreateCustomer event, Emitter<NewCustomerState> emit) async {
    try {
      emit(state.copyWith(status: NewCustomerStatus.addingCustomer));
      int customerId =
          (await sequenceRepository.getNextSequence(SequenceType.customer)).nextSeq;
      ContactEntity ce = ContactEntity(
        contactId: 'C$customerId',
        name: event.customer.name,
        email: event.customer.email,
        phoneNumber: event.customer.phoneNumber,
        billingAddress: event.customer.billingAddress,
        shippingAddress: event.customer.shippingAddress,
        storeId: '',
        createTime: DateTime.now(),
      );
      await db.writeTxn((isar) => isar.contactEntitys.put(ce));
      emit(state.copyWith(status: NewCustomerStatus.addingSuccess));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: NewCustomerStatus.addingFailure));
    }
  }
}
