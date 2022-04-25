part of 'authentication_bloc.dart';

enum AuthenticationStatus {
  authenticated,
  unauthenticated,
  verifyUser,
  unknown,
  newUser
}

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final CognitoUser? user;
  final String? userStores;
  final RetailLocationEntity? store;

  const AuthenticationState._(
      {required this.status, this.user, this.userStores, this.store})
      : assert(status == AuthenticationStatus.authenticated
            ? store != null
            : true);

  const AuthenticationState.unauthenticated()
      : this._(
          status: AuthenticationStatus.unauthenticated,
        );

  const AuthenticationState.newUser(CognitoUser user)
      : this._(status: AuthenticationStatus.newUser, user: user);

  const AuthenticationState.authenticated(
      CognitoUser user, String userStores, RetailLocationEntity store)
      : this._(
            status: AuthenticationStatus.authenticated,
            userStores: userStores,
            store: store,
            user: user);

  const AuthenticationState.verifyUser()
      : this._(
          status: AuthenticationStatus.verifyUser,
        );

  @override
  List<Object?> get props => [status, user, userStores, store];
}