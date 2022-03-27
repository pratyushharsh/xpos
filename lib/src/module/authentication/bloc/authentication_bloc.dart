import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/model/user_model.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {

  final log = Logger('AuthenticationBloc');


  final CognitoUserPool userPool;
  final AppDatabase db;

  AuthenticationBloc({required this.userPool, required this.db}) : super(const AuthenticationState.unauthenticated()) {
    signInIfSessionAvailable();
    on<AuthenticationUserChanged>(_onUserChanged);
    on<InitialAuthEvent>(_onInitialAuth);
    on<VerifyUser>(_onVerifyUser);
    on<LogOutUserEvent>(_logOutUser);
  }
  signInIfSessionAvailable() async {
    print('Getting if user already present');
    // final session = await Amplify.Auth.fetchAuthSession();
    // if (session.isSignedIn) {
    //   print('User Alreadu Present');
    // }
    // try {
    //   CognitoAuthSession res = await Amplify.Auth.fetchAuthSession(
    //       options: CognitoSessionOptions(getAWSCredentials: true));
    //   print(res.userSub);
    //   print(res.identityId);
    // } on AmplifyException catch (e) {
    //
    //   print(e);
    // }
  }

  void _onInitialAuth(InitialAuthEvent event, Emitter<AuthenticationState> emit) async {
    try {

      var user = await userPool.getCurrentUser();
      if (user != null) {
        // Three Scenario when user logged in
        // He is new user need to register for a business.
        // He owns multiple business need to choose which one to login. @TODO
        // Only one business directly login to system.
        var ses = await user.getSession();
        var attrib = await user.getUserAttributes();

        CognitoUserAttribute? stores;
        if (attrib != null) {
          for(var x = 0; x < attrib.length; x++) {
            if (attrib[x].name == "custom:allocated_store") {
              stores = attrib[x];
              break;
            }
          }
        }

        if (stores != null) {
          emit(AuthenticationState.authenticated(user, stores.value!));
        } else {
          emit(AuthenticationState.newUser(user));
        }

      } else {
        emit(const AuthenticationState.unauthenticated());
      }
    } catch (e) {
      log.severe(e);
      emit(const AuthenticationState.unauthenticated());
    }
  }

  void _onUserChanged(AuthenticationUserChanged event, Emitter<AuthenticationState> emit) async {
    if (event.stores != null) {
      emit(AuthenticationState.authenticated(event.user, event.stores!.value!));
    } else {
      emit(AuthenticationState.newUser(event.user));
    }

  }

  void _onVerifyUser(VerifyUser event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.verifyUser());
  }

  void _logOutUser(LogOutUserEvent event, Emitter<AuthenticationState> emit) async {
    var tmp = await userPool.getCurrentUser();
    if (tmp != null) {
      await tmp.signOut();
      emit(const AuthenticationState.unauthenticated());
    } else {
      emit(const AuthenticationState.unauthenticated());
    }
  }
}
