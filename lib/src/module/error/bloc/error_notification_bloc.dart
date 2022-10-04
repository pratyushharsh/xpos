import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'error_notification_event.dart';
part 'error_notification_state.dart';

class ErrorNotificationBloc extends Bloc<ErrorNotificationEvent, ErrorNotificationState> {
  ErrorNotificationBloc() : super(ErrorNotificationInitial()) {
    on<ErrorNotificationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
