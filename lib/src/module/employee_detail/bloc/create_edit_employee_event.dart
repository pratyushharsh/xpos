part of 'create_edit_employee_bloc.dart';

@immutable
abstract class CreateEditEmployeeEvent {}

class LoadExistingUser extends CreateEditEmployeeEvent {}