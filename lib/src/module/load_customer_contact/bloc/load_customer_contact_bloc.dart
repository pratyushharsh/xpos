
import 'package:bloc/bloc.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/contact_entity.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'load_customer_contact_event.dart';
part 'load_customer_contact_state.dart';

class LoadCustomerContactBloc
    extends Bloc<LoadCustomerContactEvent, LoadCustomerContactState> {

  final log = Logger('LoadCustomerContactBloc');
  final AppDatabase db;
  
  LoadCustomerContactBloc({ required this.db }) : super(LoadCustomerContactState()) {
    on<LoadCustomerContactFromPhone>(_loadCustomerContactFromPhone);
  }

  void _loadCustomerContactFromPhone(LoadCustomerContactFromPhone event,
      Emitter<LoadCustomerContactState> emit) async {
    emit(state.copyWith(status: LoadCustomerContactStatus.loading));

    if (!await FlutterContacts.requestPermission(readonly: true)) {
      emit(state.copyWith(status: LoadCustomerContactStatus.permissionDenied));
    } else {
      try {

        final contacts = await FlutterContacts.getContacts(withProperties: true);
        for (var i = 0; i < contacts.length; i++) {
          var e = contacts[i];
          var entity = ContactEntity(
              contactId: e.id,
              firstName: e.name.first,
              address: e.addresses.isNotEmpty ? e.addresses[0].state : null,
              city: e.addresses.isNotEmpty ? e.addresses[0].state : null,
              country: e.addresses.isNotEmpty ? e.addresses[0].state : null,
              email: e.emails.isNotEmpty ? e.emails[0].address  : null,
              lastName: e.name.last,
              phoneNumber: e.phones.isNotEmpty ? e.phones[0].number.replaceAll(RegExp('[^+0-9]'), '') : null,
              postalCode: e.addresses.isNotEmpty ? e.addresses[0].postalCode : null,
              state: e.addresses.isNotEmpty ? e.addresses[0].state : null
          );
          await db.contactDao.insertBulk(entity);
        }
        emit(state.copyWith(status: LoadCustomerContactStatus.success));
      } catch (e) {
        emit(state.copyWith(status: LoadCustomerContactStatus.failure));
      }
    }
  }
}
