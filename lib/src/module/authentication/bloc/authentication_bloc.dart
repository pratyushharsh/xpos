import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/business_entity.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:receipt_generator/src/repositories/business_repository.dart';

import '../../sync/bloc/background_sync_bloc.dart';


part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {

  final log = Logger('AuthenticationBloc');

  final CognitoUserPool userPool;
  final Isar db;
  final BusinessRepository businessRepository;
  final BackgroundSyncBloc sync;

  AuthenticationBloc({required this.userPool, required this.db, required this.businessRepository, required this.sync}) : super(AuthenticationState.unauthenticated()) {
    // signInIfSessionAvailable();
    on<AuthenticationUserChanged>(_onUserChanged);
    on<InitialAuthEvent>(_onInitialAuth);
    on<VerifyUser>(_onVerifyUser);
    on<LogOutUserEvent>(_logOutUser);
  }
  // signInIfSessionAvailable() async {
  //   log.info('Getting if user already present');
  //   // final session = await Amplify.Auth.fetchAuthSession();
  //   // if (session.isSignedIn) {
  //   //   print('User Alreadu Present');
  //   // }
  //   // try {
  //   //   CognitoAuthSession res = await Amplify.Auth.fetchAuthSession(
  //   //       options: CognitoSessionOptions(getAWSCredentials: true));
  //   //   print(res.userSub);
  //   //   print(res.identityId);
  //   // } on AmplifyException catch (e) {
  //   //
  //   //   print(e);
  //   // }
  // }

  void _onInitialAuth(InitialAuthEvent event, Emitter<AuthenticationState> emit) async {
    try {

      var user = await userPool.getCurrentUser();
      if (user != null) {
        // Three Scenario when user logged in
        // He is new user need to register for a business.
        // He owns multiple business need to choose which one to login. @TODO
        // Only one business directly login to system.
        await user.getSession();
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

        if (stores != null && stores.value != null) {
          String tmp = stores.value!;
          List<String> userStores = tmp.split(";");

          var rtlLoc = await businessRepository.getBusinessById(int.parse(userStores[0].split(":")[1]));
          sync.add(StartSyncEvent(rtlLoc.rtlLocId));
          emit(AuthenticationState.authenticated(user, tmp, rtlLoc));
        } else {
          emit(AuthenticationState.newUser(user));
        }
      } else {
        emit(AuthenticationState.unauthenticated());
      }
    } catch (e) {
      log.severe(e);
      emit(AuthenticationState.unauthenticated());
    }
  }

  void _onUserChanged(AuthenticationUserChanged event, Emitter<AuthenticationState> emit) async {
    if (event.stores != null) {
      String tmp = event.stores!.value!;
      List<String> userStores = tmp.split(";");

      var rtlLoc = await businessRepository.getBusinessById(int.parse(userStores[0].split(":")[1]));
      sync.add(StartSyncEvent(rtlLoc.rtlLocId));
      emit(AuthenticationState.authenticated(event.user, tmp, rtlLoc));
    } else {
      sync.add(StopSyncEvent());
      emit(AuthenticationState.newUser(event.user));
    }

  }

  void _onVerifyUser(VerifyUser event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationState.verifyUser());
  }

  void _logOutUser(LogOutUserEvent event, Emitter<AuthenticationState> emit) async {
    var tmp = await userPool.getCurrentUser();
    sync.add(StopSyncEvent());
    if (tmp != null) {
      await tmp.signOut();
      emit(AuthenticationState.unauthenticated());
    } else {
      emit(AuthenticationState.unauthenticated());
    }
  }
}
