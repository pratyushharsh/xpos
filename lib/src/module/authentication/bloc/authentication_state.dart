part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, verifyUser, unknown, newUser }

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final CognitoUser? user;
  final String? stores;

  const AuthenticationState._({required this.status, this.user, this.stores});

  const AuthenticationState.unauthenticated()
      : this._(
      status: AuthenticationStatus.unauthenticated,);

  const AuthenticationState.newUser(CognitoUser user)
    : this._(
    status: AuthenticationStatus.newUser,
    user: user
  );

  const AuthenticationState.authenticated(CognitoUser user, String stores)
      : this._(
      status: AuthenticationStatus.authenticated,
      stores: stores,
      user: user);

  const AuthenticationState.verifyUser()
      : this._(
      status: AuthenticationStatus.verifyUser,);

  @override
  List<Object?> get props => [status, user, stores];
}

