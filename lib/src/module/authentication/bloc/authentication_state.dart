part of 'authentication_bloc.dart';

enum AuthenticationStatus {
  authenticated,
  unauthenticated,
  verifyUser,
  verifyUserDevice,
  unknown,
  newUser
}

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final CognitoUser? user;
  final EmployeeEntity? employee;
  final String? userStores;
  final RetailLocationEntity? store;

  const AuthenticationState._(
      {required this.status, this.user, this.employee, this.userStores, this.store})
      : assert(status == AuthenticationStatus.authenticated
            ? store != null
            : true);

  const AuthenticationState.unauthenticated()
      : this._(
          status: AuthenticationStatus.unauthenticated,
        );

  const AuthenticationState.unknown()
      : this._(
    status: AuthenticationStatus.unknown,
  );

  const AuthenticationState.newUser(CognitoUser user, {EmployeeEntity? employee})
      : this._(status: AuthenticationStatus.newUser, user: user, employee: employee);

  const AuthenticationState.authenticated(
      CognitoUser user, String userStores, RetailLocationEntity store, EmployeeEntity employee)
      : this._(
            status: AuthenticationStatus.authenticated,
            userStores: userStores,
            store: store,
            employee: employee,
            user: user);

  const AuthenticationState.verifyUser()
      : this._(
          status: AuthenticationStatus.verifyUser,
        );

  const AuthenticationState.verifyUserDevice()
      : this._(
    status: AuthenticationStatus.verifyUserDevice,
  );

  @override
  List<Object?> get props => [status, user, userStores, store];
}
