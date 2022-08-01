import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_edit_employee_event.dart';
part 'create_edit_employee_state.dart';

class CreateEditEmployeeBloc extends Bloc<CreateEditEmployeeEvent, CreateEditEmployeeState> {
  CreateEditEmployeeBloc() : super(CreateEditEmployeeState()) {
    on<CreateEditEmployeeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
