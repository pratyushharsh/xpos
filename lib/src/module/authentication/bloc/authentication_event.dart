part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}

class InitialAuthEvent extends AuthenticationEvent {}

class AuthenticationUserChanged extends AuthenticationEvent {
  final CognitoUser user;
  final CognitoUserAttribute? stores;

  AuthenticationUserChanged(this.user, this.stores);
}

class VerifyUserOtpStep extends AuthenticationEvent{
  final Map<String, dynamic> parameterMap;

  VerifyUserOtpStep(this.parameterMap);
}

class VerifyUserDeviceStep extends AuthenticationEvent {
  final Map<String, dynamic> parameterMap;

  VerifyUserDeviceStep(this.parameterMap);
}

class LogOutUserEvent extends AuthenticationEvent{}