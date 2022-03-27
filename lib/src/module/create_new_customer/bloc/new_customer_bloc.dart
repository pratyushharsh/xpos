import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/contact_entity.dart';
import 'package:receipt_generator/src/model/cust_party.dart';

import '../../../repositories/app_database.dart';

part 'new_customer_event.dart';
part 'new_customer_state.dart';

class NewCustomerBloc extends Bloc<NewCustomerEvent, NewCustomerState> {
  final log = Logger('NewCustomerBloc');
  final AppDatabase db;

  NewCustomerBloc({required this.db}) : super(const NewCustomerState()) {
    on<OnCreateCustomer>(_onAddNewCustomer);
  }

  void _onAddNewCustomer(
      OnCreateCustomer event, Emitter<NewCustomerState> emit) async {
    try {
      emit(state.copyWith(status: NewCustomerStatus.addingCustomer));
      int customerId =
          (await db.sequenceDao.getNextSequence("PRODUCT_ID")).nextSeq;
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
      await db.contactDao.insertItem(ce);
      emit(state.copyWith(status: NewCustomerStatus.addingSuccess));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: NewCustomerStatus.addingFailure));
    }
  }
}
