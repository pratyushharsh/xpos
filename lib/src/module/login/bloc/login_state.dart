part of 'login_bloc.dart';

enum LoginStatus { initial, failed, verifyOtp, success }

class LoginState {
  final LoginStatus status;
  final CognitoUser? user;
  final int retryCount;

  LoginState(
      {this.status = LoginStatus.initial, this.user, this.retryCount = 0});

  LoginState copyWith(
      {LoginStatus? status, CognitoUser? user, int? retryCount}) {
    return LoginState(
        status: status ?? this.status,
        user: user ?? this.user,
        retryCount: retryCount ?? this.retryCount);
  }
}
