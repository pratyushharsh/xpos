part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}

class InitialAuthEvent extends AuthenticationEvent {}

class AuthenticationUserChanged extends AuthenticationEvent {
  final CognitoUser user;
  final CognitoUserAttribute? stores;

  AuthenticationUserChanged(this.user, this.stores);
}

class VerifyUser extends AuthenticationEvent{}

class LogOutUserEvent extends AuthenticationEvent{}