import 'dart:io';

import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final log = Logger('LoginBloc');

  FirebaseAuth auth = FirebaseAuth.instance;
  final CognitoUserPool userPool;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({required this.userPool, required this.authenticationBloc}) : super(LoginState()) {
    on<LoginUserWithPhone>(_onLoginUserWithPhone);
    on<VerifyUserOtp>(_onVerifyUserOtp);
  }

  void verificationCompleted(
      PhoneAuthCredential phoneAuthCredential) async {
    log.info(phoneAuthCredential);
    await auth.signInWithCredential(phoneAuthCredential);
  }

  void _signUpUser(String phoneNumber) async {
    try {
      var data = await userPool.signUp(phoneNumber, phoneNumber);
      add(LoginUserWithPhone(phoneNumber));
    } catch (e) {
      log.severe(e);
    }
  }

  void _onLoginUserWithPhone(
      LoginUserWithPhone event, Emitter<LoginState> emit) async {
    try {
      // userPool.getCurrentUser()
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

      String deviceName = '';

      if (Platform.isIOS) {
        IosDeviceInfo info = await deviceInfo.iosInfo;
        deviceName = '${info.name}:${info.model}:${info.systemName}:${info.systemVersion}';
      } else if (Platform.isAndroid) {
        AndroidDeviceInfo info = await deviceInfo.androidInfo;
        deviceName = '${info.device}:${info.model}:${info.hardware}:${info.version}';
      }


      final cognitoUser = CognitoUser(event.phoneNumber, userPool, deviceName: deviceName);
      cognitoUser.setAuthenticationFlowType('CUSTOM_AUTH');
      emit(state.copyWith(user: cognitoUser));
      await cognitoUser.initiateAuth(AuthenticationDetails(authParameters: List.empty()));

      //
    } on CognitoUserCustomChallengeException catch(e) {
      // log.severe(e);
      log.info('Custom Challange exception', e);
      authenticationBloc.add(VerifyUser());
      emit(state.copyWith(status: LoginStatus.verifyOtp));
    } catch (e) {
      if (state.retryCount == 0) {
        _signUpUser(event.phoneNumber);
      }
      log.severe(e);
    }
  }

  void _onVerifyUserOtp(
      VerifyUserOtp event, Emitter<LoginState> emit) async {
    try {
      emit(state.copyWith(retryCount: state.retryCount + 1));
      CognitoUser user = state.user!;
      var res = await user.sendCustomChallengeAnswer(event.otp);
      log.info(res);
      var tmp = await userPool.getCurrentUser();
      await user.getSession();
      var userAttribute = await user.getUserAttributes();
      log.info(tmp);
      if (tmp != null && userAttribute != null) {
        CognitoUserAttribute? stores;
        for(var x = 0; x < userAttribute.length; x++) {
          if (userAttribute[x].name == "custom:allocated_store") {
            stores = userAttribute[x];
            break;
          }
        }
        authenticationBloc.add(AuthenticationUserChanged(tmp, stores));
      }
    } on CognitoUserCustomChallengeException catch(e) {
      // log.severe(e);
      log.severe('Custom Challenge exception', e);
    } catch (e) {
      log.severe(e);
    }
  }
}
