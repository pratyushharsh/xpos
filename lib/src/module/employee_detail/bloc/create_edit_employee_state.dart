part of 'create_edit_employee_bloc.dart';

class CreateEditEmployeeState {
  final String firstName;
  final String middleName;
  final String lastName;
  final String phone;
  final String email;
  final String locale;
  final String profile;

  CreateEditEmployeeState(
      {this.firstName = '',
      this.middleName = '',
      this.lastName = '',
      this.phone = '',
      this.email = '',
      this.locale = '',
      this.profile = ''});

  CreateEditEmployeeState copyWith(
      {String? firstName,
      String? middleName,
      String? lastName,
      String? phone,
      String? email,
      String? locale,
      String? profile}) {
    return CreateEditEmployeeState(
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        locale: locale ?? this.locale,
        profile: profile ?? this.profile);
  }
}
