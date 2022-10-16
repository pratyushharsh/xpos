import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/business_entity.dart';
import 'package:receipt_generator/src/repositories/business_repository.dart';

import '../../../entity/pos/employee_entity.dart';
import '../../../model/api/api.dart';
import '../../../repositories/employee_repository.dart';
import '../../sync/bloc/background_sync_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final log = Logger('AuthenticationBloc');
  final bool test = false;

  final CognitoUserPool userPool;
  final BusinessRepository businessRepository;
  final EmployeeRepository employeeRepository;
  final BackgroundSyncBloc sync;

  AuthenticationBloc(
      {required this.userPool,
      required this.businessRepository,
      required this.employeeRepository,
      required this.sync})
      : super(AuthenticationState.unknown()) {
    // signInIfSessionAvailable();
    on<AuthenticationUserChanged>(_onUserChanged);
    on<InitialAuthEvent>(_onInitialAuth);
    on<VerifyUserOtpStep>(_onVerifyUser);
    on<VerifyUserDeviceStep>(_onVerifyUserDevice);
    on<LogOutUserEvent>(_logOutUser);
    on<ChooseBusinessEvent>(_chooseBusinessEvent);
    on<RefreshBusinessEvent>(_refreshBusinessEvent);
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

  void _onInitialAuth(
      InitialAuthEvent event, Emitter<AuthenticationState> emit) async {
    try {
      var user = await userPool.getCurrentUser();
      if (user != null && user.getUsername() != null) {
        // Three Scenario when user logged in
        // He is new user need to register for a business.
        // He owns multiple business need to choose which one to login. @TODO
        // Only one business directly login to system.
        var session = await user.getSession();
        var curStore = await userPool.storage.getItem("CURRENT_STORE");

        //
        // return;
        if (curStore == null) {
          var businessList = await employeeRepository.getBusinessAssociatedWithUser(user.getUsername()!);
          emit(AuthenticationState.chooseBusiness(businessList));
        } else {
          // Get business from cache
          var business = await businessRepository.getBusinessById(int.parse(curStore));
          var userDetail = await employeeRepository.getEmployeeByStoreAndUserId(curStore, user.getUsername()!);
          emit(AuthenticationState.authenticated(user, business, userDetail!));
        }

      } else {
        emit(AuthenticationState.unauthenticated());
      }
    } catch (e) {
      log.severe(e);
      emit(AuthenticationState.unauthenticated());
    }
  }

  void _onUserChanged(AuthenticationUserChanged event,
      Emitter<AuthenticationState> emit) {
    add(InitialAuthEvent());
  }

  void _onVerifyUser(
      VerifyUserOtpStep event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationState.verifyUser());
  }

  void _onVerifyUserDevice(
      VerifyUserDeviceStep event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationState.verifyUserDevice());
  }

  void _logOutUser(
      LogOutUserEvent event, Emitter<AuthenticationState> emit) async {
    var tmp = await userPool.getCurrentUser();
    // sync.add(StopSyncEvent());
    if (tmp != null) {
      await tmp.signOut();
      await tmp.clearCachedTokens();
      await tmp.storage.removeItem("CURRENT_STORE");
      emit(AuthenticationState.unknown());
    } else {
      emit(AuthenticationState.unknown());
    }
  }

  void _chooseBusinessEvent(
      ChooseBusinessEvent event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(status: AuthenticationStatus.chooseBusinessLoading));
    var user = await userPool.getCurrentUser();
    var session = await user!.getSession();
    await user.storage.setItem("CURRENT_STORE", event.business.storeId);
    var business = await businessRepository.getBusinessById(int.parse(event.business.storeId!));
    var userDetail = await employeeRepository.getEmployeeByStoreAndUserId(event.business.storeId!, user.getUsername()!);
    emit(AuthenticationState.authenticated(user, business, userDetail!));
  }

  void _refreshBusinessEvent(
      RefreshBusinessEvent event, Emitter<AuthenticationState> emit) async {
    if (state.store != null) {
      var business = await businessRepository.getBusinessById(state.store!.rtlLocId);
      emit(state.copyWith(store: business));
    }
  }
}
