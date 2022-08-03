import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/business_entity.dart';
import 'package:receipt_generator/src/repositories/business_repository.dart';

import '../../../entity/pos/employee_entity.dart';
import '../../sync/bloc/background_sync_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final log = Logger('AuthenticationBloc');
  final bool test = false;

  final CognitoUserPool userPool;
  final Isar db;
  final BusinessRepository businessRepository;
  final BackgroundSyncBloc sync;

  AuthenticationBloc(
      {required this.userPool,
      required this.db,
      required this.businessRepository,
      required this.sync})
      : super(AuthenticationState.unknown()) {
    // signInIfSessionAvailable();
    on<AuthenticationUserChanged>(_onUserChanged);
    on<InitialAuthEvent>(_onInitialAuth);
    on<VerifyUserOtpStep>(_onVerifyUser);
    on<VerifyUserDeviceStep>(_onVerifyUserDevice);
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

  void _onInitialAuth(
      InitialAuthEvent event, Emitter<AuthenticationState> emit) async {
    try {
      var user = await userPool.getCurrentUser();
      if (user != null) {
        // Three Scenario when user logged in
        // He is new user need to register for a business.
        // He owns multiple business need to choose which one to login. @TODO
        // Only one business directly login to system.

        var session = await user.getSession();
        var attrib = await user.getUserAttributes();

        Map<String, String?> attributes = {};
        if (attrib != null) {
          for (var x = 0; x < attrib.length; x++) {
            if (attrib[x].name != null) {
              attributes.putIfAbsent(attrib[x].name!, () => attrib[x].value);
            }
          }
        }

        EmployeeEntity empEntity = EmployeeEntity(
          phone: attributes['phone_number'] ?? '',
          email: attributes['email'] ?? '',
          firstName: attributes['given_name'],
          middleName: attributes['middle_name'],
          lastName: attributes['family_name'],
          employeeId: attributes['sub'],
          locale: attributes['locale'],
          allocatedStore: attributes['custom:allocated_store'],
          currentStore: attributes['custom:current_store'],
          picture: attributes['picture'],
          gender: attributes['gender'],
        );

        var stores = attributes["custom:allocated_store"];

        if (stores != null) {
          List<String> userStores = stores.split(";");

          var rtlLoc = await businessRepository
              .getBusinessById(int.parse(userStores[0].split(":")[1]));
          sync.add(StartSyncEvent(rtlLoc.rtlLocId));
          emit(AuthenticationState.authenticated(
              user, stores, rtlLoc, empEntity));
        } else {
          emit(AuthenticationState.newUser(user, employee: empEntity));
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
      Emitter<AuthenticationState> emit) async {
    if (event.stores != null) {
      String tmp = event.stores!.value!;
      List<String> userStores = tmp.split(";");

      Map<String, String?> attributes = {};
      for (var x = 0; x < event.attributes.length; x++) {
        if (event.attributes[x].name != null) {
          attributes.putIfAbsent(
              event.attributes[x].name!, () => event.attributes[x].value);
        }
      }

      EmployeeEntity empEntity = EmployeeEntity(
        phone: attributes['phone_number'] ?? '',
        email: attributes['email'] ?? '',
        firstName: attributes['given_name'],
        middleName: attributes['middle_name'],
        lastName: attributes['family_name'],
        employeeId: attributes['sub'],
        locale: attributes['locale'],
        allocatedStore: attributes['custom:allocated_store'],
        currentStore: attributes['custom:current_store'],
        picture: attributes['picture'],
        gender: attributes['gender'],
      );

      var rtlLoc = await businessRepository
          .getBusinessById(int.parse(userStores[0].split(":")[1]));
      sync.add(StartSyncEvent(rtlLoc.rtlLocId));
      emit(AuthenticationState.authenticated(
          event.user, tmp, rtlLoc, empEntity));
    } else {
      sync.add(StopSyncEvent());
      emit(AuthenticationState.newUser(event.user));
    }
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
    sync.add(StopSyncEvent());
    if (tmp != null) {
      await tmp.signOut();
      emit(AuthenticationState.unauthenticated());
    } else {
      emit(AuthenticationState.unauthenticated());
    }
  }
}
