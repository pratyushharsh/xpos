import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/module/business/business_view.dart';
import 'package:receipt_generator/src/module/home/home_view.dart';
import 'package:receipt_generator/src/module/load_item_bulk/bloc/load_item_bulk_bloc.dart';
import 'package:receipt_generator/src/module/login/bloc/login_bloc.dart';
import 'package:receipt_generator/src/module/login/login_view.dart';
import 'package:receipt_generator/src/module/login/verify_user_device_view.dart';
import 'package:receipt_generator/src/module/login/verify_user_view.dart';
import 'package:receipt_generator/src/module/sync/bloc/background_sync_bloc.dart';
import 'package:receipt_generator/src/pos/calculator/tax_calculator.dart';
import 'package:receipt_generator/src/pos/helper/discount_helper.dart';
import 'package:receipt_generator/src/pos/helper/price_helper.dart';
import 'package:receipt_generator/src/pos/helper/tax_helper.dart';
import 'package:receipt_generator/src/repositories/business_repository.dart';
import 'package:receipt_generator/src/repositories/config_repository.dart';
import 'package:receipt_generator/src/repositories/contact_repository.dart';
import 'package:receipt_generator/src/repositories/customer_repository.dart';
import 'package:receipt_generator/src/repositories/sequence_repository.dart';
import 'package:receipt_generator/src/repositories/setting_repository.dart';
import 'package:receipt_generator/src/repositories/sync_config_repository.dart';
import 'package:receipt_generator/src/repositories/sync_repository.dart';
import 'package:receipt_generator/src/repositories/tax_repository.dart';
import 'package:receipt_generator/src/repositories/transaction_repository.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';

import 'src/module/login/choose_create_business_view.dart';
import 'src/repositories/employee_repository.dart';
import 'src/repositories/reason_code_repository.dart';

class MyApp extends StatelessWidget {
  final Isar database;
  final CognitoUserPool userPool;
  final RestApiClient restClient;
  const MyApp(
      {Key? key,
      required this.database,
      required this.userPool,
      required this.restClient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(lazy: false, create: (context) => database),
          RepositoryProvider(lazy: false, create: (context) => restClient),
          RepositoryProvider(create: (context) => ContactRepository()),
          RepositoryProvider(create: (context) => userPool),
          RepositoryProvider(
            create: (context) => BusinessRepository(
              db: database,
              restClient: restClient,
            ),
          ),
          RepositoryProvider(
            create: (context) => SyncRepository(
              db: database,
              restClient: restClient,
            ),
          ),
          RepositoryProvider(
            create: (context) => SyncConfigRepository(db: database),
          ),
          RepositoryProvider(
            create: (context) =>
                SettingsRepository(db: database, restClient: restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                SequenceRepository(db: database, restClient: restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                TransactionRepository(db: database, restClient: restClient),
          ),
          RepositoryProvider(
            create: (context) => ConfigRepository(db: database),
          ),
          RepositoryProvider(
            create: (context) =>
                ReasonCodeRepository(db: database, restClient: restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                TaxRepository(db: database, restClient: restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                EmployeeRepository(db: database, restClient: restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                CustomerRepository(db: database, restClient: restClient),
          ),
          RepositoryProvider(
            lazy: false,
            create: (context) => TaxHelper(taxRepository: RepositoryProvider.of(context)),
          ),
          RepositoryProvider(
            lazy: false,
            create: (context) => PriceHelper(),
          ),
          RepositoryProvider(
            lazy: false,
            create: (context) => DiscountHelper(),
          ),
          RepositoryProvider(
            lazy: false,
            create: (context) => TaxModifierCalculator(taxRepository: RepositoryProvider.of(context)),
          )
          // ..._buildHelperList(db: database, restClient: restClient),
          // ..._buildCalculatorList(db: database, restClient: restClient),
        ],
        child: MultiBlocProvider(providers: [
          BlocProvider(
            lazy: false,
            create: (context) => BackgroundSyncBloc(
                syncRepository: RepositoryProvider.of(context),
                syncConfigRepository: RepositoryProvider.of(context)),
          ),
          BlocProvider(
            create: (context) => AuthenticationBloc(
                userPool: RepositoryProvider.of(context),
                employeeRepository: RepositoryProvider.of(context),
                businessRepository: RepositoryProvider.of(context),
                sync: BlocProvider.of(context))
              ..add(
                InitialAuthEvent(),
              ),
          ),
          BlocProvider(
            create: (context) => LoginBloc(
                userPool: RepositoryProvider.of(context),
                authenticationBloc: BlocProvider.of(context)),
          ),
          BlocProvider(
            create: (context) => LoadItemBulkBloc(
                db: RepositoryProvider.of(context),
                auth: BlocProvider.of(context),
                sequenceRepository: RepositoryProvider.of(context)),
          ),
        ], child: MyAppView()));
  }
}

class MyAppView extends StatefulWidget {
  MyAppView({Key? key}) : super(key: key);

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listenWhen: (previous, current) {
            return true;
          },
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  HomeScreen.route(),
                      (route) => false,
                );
                break;
              case AuthenticationStatus.unauthenticated:
              case AuthenticationStatus.unknown:
                _navigator.pushAndRemoveUntil<void>(
                  LoginView.route(),
                      (route) => false,
                );
                break;
              case AuthenticationStatus.verifyUser:
                _navigator.push(VerifyUserView.route());
                break;
              case AuthenticationStatus.newUser:
                _navigator.push<void>(
                  BusinessView.route(),
                );
                break;
              case AuthenticationStatus.verifyUserDevice:
                _navigator.push(VerifyUserDeviceView.route());
                break;
              case AuthenticationStatus.chooseBusiness:
                _navigator.push(ChooseCreateBusinessView.route());
                break;
              default:
                break;
            }
          },
          child: child,
        );
      },
      onGenerateRoute: RouteConfig.onGenerateRoute,
    );
  }
}