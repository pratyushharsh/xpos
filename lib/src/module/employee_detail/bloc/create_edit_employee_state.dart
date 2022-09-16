part of 'create_edit_employee_bloc.dart';

enum CreateEditEmployeeStatus {
  initial,
  loading,
  modifying,
  existingUser,
  newUser,
  success,
}

class CreateEditEmployeeState {
  final String? employeeId;
  final String firstName;
  final String middleName;
  final String lastName;
  final String phone;
  final String email;
  final String locale;
  final String profile;
  final CreateEditEmployeeStatus status;

  CreateEditEmployeeState(
      {this.employeeId,
      this.firstName = '',
      this.middleName = '',
      this.lastName = '',
      this.phone = '',
      this.email = '',
      this.locale = '',
      this.profile = '',
      this.status = CreateEditEmployeeStatus.initial});

  CreateEditEmployeeState copyWith(
      {String? employeeId,
      String? firstName,
      String? middleName,
      String? lastName,
      String? phone,
      String? email,
      String? locale,
      String? profile,
      CreateEditEmployeeStatus? status}) {
    return CreateEditEmployeeState(
        employeeId: employeeId ?? this.employeeId,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        locale: locale ?? this.locale,
        profile: profile ?? this.profile,
        status: status ?? this.status);
  }
}
