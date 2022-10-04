import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../entity/pos/business_entity.dart';
import '../../../repositories/checklist_helper.dart';
import '../../authentication/bloc/authentication_bloc.dart';

part 'error_notification_event.dart';
part 'error_notification_state.dart';

class ErrorNotificationBloc extends Bloc<ErrorNotificationEvent, ErrorNotificationState> {

  final CheckListHelper checkListHelper;
  final AuthenticationBloc authenticationBloc;

  ErrorNotificationBloc({required this.checkListHelper, required this.authenticationBloc}) : super(ErrorNotificationState()) {
    on<ValidateStoreSetup>(_onValidateStoreSetup);
  }

  void _onValidateStoreSetup(ValidateStoreSetup event, Emitter<ErrorNotificationState> emit) {
    RetailLocationEntity currentStore = authenticationBloc.state.store!;
    List<String> errors = checkListHelper.validateStore(currentStore);
    emit(ErrorNotificationState(errors: errors));
  }
}
