import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/repositories/contact_repository.dart';

part 'customer_search_event.dart';
part 'customer_search_state.dart';

class CustomerSearchBloc
    extends Bloc<CustomerSearchEvent, CustomerSearchState> {
  final log = Logger('CustomerSearchBloc');
  final ContactRepository contactDb;
  final Isar db;

  CustomerSearchBloc({required this.contactDb, required this.db})
      : super(const CustomerSearchState()) {
    on<OnCustomerNameChange>(_onCustomerNameChange);
    on<OnSearchComplete>(_onCustomerSearchComplete);
  }

  void _onCustomerNameChange(
      OnCustomerNameChange event, Emitter<CustomerSearchState> emit) async {
    emit(state.copyWith(
      status: CustomerSearchStateStatus.loading,
    ));
    try {
      if (event.name != null && event.name!.isNotEmpty) {
        var customer = await db.contactEntitys
            .filter()
            .firstNameContains('${event.name}', caseSensitive: false)
            .findAll();

        var contacts = <ContactEntity>[];
        if (Platform.isIOS || Platform.isAndroid) {
          contacts = await contactDb.getContact();
        }
        log.info("${contacts.length} contacts found.");
        var x = contacts
            .where((con) {
              if (event.name != null) {
                if (con.firstName
                    .toLowerCase()
                    .contains(event.name!.toLowerCase())) {
                  return true;
                }
                return false;
              } else {
                return true;
              }
            })
            .take(50)
            .toList();
        emit(state.copyWith(
            customerSuggestion: customer,
            status: CustomerSearchStateStatus.searching,
            phoneBookSuggestion: x));
      }
    } catch (e) {
      log.severe(e);
    }
  }

  void _onCustomerSearchComplete(
      OnSearchComplete event, Emitter<CustomerSearchState> emit) async {
    emit(state.copyWith(
        customerSuggestion: [],
        status: CustomerSearchStateStatus.complete,
        phoneBookSuggestion: []));
  }
}
