import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../entity/pos/employee_entity.dart';

part 'create_edit_employee_event.dart';
part 'create_edit_employee_state.dart';

class CreateEditEmployeeBloc extends Bloc<CreateEditEmployeeEvent, CreateEditEmployeeState> {

  CreateEditEmployeeBloc() : super(CreateEditEmployeeState()) {
    on<OnLoadExistingEmployee>(_onLoadExistingEmployee);
    on<OnEmployeeFirstNameChanged>(_onEmployeeFirstNameChanged);
    on<OnEmployeeMiddleNameChanged>(_onEmployeeMiddleNameChanged);
    on<OnEmployeeLastNameChanged>(_onEmployeeLastNameChanged);
    on<OnEmployeePhoneChanged>(_onEmployeePhoneChanged);
    on<OnEmployeeEmailChanged>(_onEmployeeEmailChanged);
    on<OnEmployeeLocaleChanged>(_onEmployeeLocaleChanged);
    on<OnEmployeeProfileChanged>(_onEmployeeProfileChanged);
    on<OnEmployeeSave>(_onEmployeeSave);
  }

  void _onLoadExistingEmployee(OnLoadExistingEmployee event, Emitter<CreateEditEmployeeState> emit) async {
    if (event.employee == null) {
      emit(state.copyWith(status: CreateEditEmployeeStatus.newUser));
      return;
    }
    emit(state.copyWith(status: CreateEditEmployeeStatus.loading));

    emit(state.copyWith(
      employeeId: event.employee!.employeeId,
      firstName: event.employee!.firstName,
      middleName: event.employee!.middleName,
      lastName: event.employee!.lastName,
      email: event.employee!.email,
      phone: event.employee!.phone,
      locale: event.employee!.locale, status: CreateEditEmployeeStatus.existingUser
    ));
  }

  void _onEmployeeFirstNameChanged(OnEmployeeFirstNameChanged event, Emitter<CreateEditEmployeeState> emit) {
    emit(state.copyWith(firstName: event.firstName));
  }

  void _onEmployeeMiddleNameChanged(OnEmployeeMiddleNameChanged event, Emitter<CreateEditEmployeeState> emit) {
    emit(state.copyWith(middleName: event.middleName));
  }

  void _onEmployeeLastNameChanged(OnEmployeeLastNameChanged event, Emitter<CreateEditEmployeeState> emit) {
    emit(state.copyWith(lastName: event.lastName));
  }

  void _onEmployeePhoneChanged(OnEmployeePhoneChanged event, Emitter<CreateEditEmployeeState> emit) {
    emit(state.copyWith(phone: event.phone));
  }

  void _onEmployeeEmailChanged(OnEmployeeEmailChanged event, Emitter<CreateEditEmployeeState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onEmployeeLocaleChanged(OnEmployeeLocaleChanged event, Emitter<CreateEditEmployeeState> emit) {
    emit(state.copyWith(locale: event.locale));
  }

  void _onEmployeeProfileChanged(OnEmployeeProfileChanged event, Emitter<CreateEditEmployeeState> emit) {
    emit(state.copyWith(profile: event.profile));
  }

  void _onEmployeeSave(OnEmployeeSave event, Emitter<CreateEditEmployeeState> emit) {

  }
}
