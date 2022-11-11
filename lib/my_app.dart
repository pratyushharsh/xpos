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
import 'package:receipt_generator/src/repositories/sync_config_repository.dart';
import 'package:receipt_generator/src/repositories/sync_repository.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';

import 'src/config/theme_settings.dart';
import 'src/module/error/bloc/error_notification_bloc.dart';
import 'src/module/error/error_notification.dart';
import 'src/module/login/choose_create_business_view.dart';
import 'src/module/settings/bloc/settings_bloc.dart';
import 'src/repositories/checklist_helper.dart';
import 'src/repositories/repository.dart';

class MyApp extends StatefulWidget {
  final CognitoUserPool userPool;
  final RestApiClient restClient;
  const MyApp({
    Key? key,
    required this.userPool,
    required this.restClient,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Isar database;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          // RepositoryProvider(lazy: false, create: (context) => database),
          RepositoryProvider(
              lazy: false, create: (context) => widget.restClient),
          RepositoryProvider(
              lazy: false, create: (context) => CheckListHelper()),
          RepositoryProvider(create: (context) => ContactRepository()),
          RepositoryProvider(create: (context) => widget.userPool),
          RepositoryProvider(
            create: (context) => BusinessRepository(
              restClient: widget.restClient,
            ),
          ),
          RepositoryProvider(
            create: (context) => SyncRepository(
              restClient: widget.restClient,
            ),
          ),
          RepositoryProvider(
            create: (context) => SyncConfigRepository(),
          ),
          RepositoryProvider(
            create: (context) =>
                SettingsRepository(restClient: widget.restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                SequenceRepository(restClient: widget.restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                TransactionRepository(restClient: widget.restClient),
          ),
          RepositoryProvider(
            create: (context) => ConfigRepository(),
          ),
          RepositoryProvider(
            create: (context) =>
                ReasonCodeRepository(restClient: widget.restClient),
          ),
          RepositoryProvider(
            create: (context) => TaxRepository(restClient: widget.restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                EmployeeRepository(restClient: widget.restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                CustomerRepository(restClient: widget.restClient),
          ),
          RepositoryProvider(
            create: (context) =>
                ProductRepository(restClient: widget.restClient),
          ),
          RepositoryProvider(
            lazy: false,
            create: (context) =>
                TaxHelper(taxRepository: RepositoryProvider.of(context)),
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
            create: (context) => TaxModifierCalculator(
                taxRepository: RepositoryProvider.of(context)),
          ),
          RepositoryProvider(
            create: (context) =>
                InvoiceRepository(restClient: widget.restClient),
          ),
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
          BlocProvider(
              create: (context) => ErrorNotificationBloc(
                    checkListHelper: RepositoryProvider.of(context),
                    authenticationBloc: BlocProvider.of(context),
                  )..add(ValidateStoreSetup())),
          BlocProvider(
            create: (context) => SettingsBloc(
                employeeRepository: RepositoryProvider.of(context),
                authenticationBloc: BlocProvider.of(context)),
          ),
        ], child: const MyAppView()));
  }
}

class MyAppView extends StatefulWidget {
  const MyAppView({Key? key}) : super(key: key);

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance
  //       .addPostFrameCallback((_) {
  //         BlocProvider.of<ErrorNotificationBloc>(context).add(PeriodicValidatorStartEvent());
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   BlocProvider.of<ErrorNotificationBloc>(context).add(PeriodicValidatorStopEvent());
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      theme: ThemeData.light().copyWith(
        primaryColor: AppColor.primary,
        brightness: Brightness.light,
        backgroundColor: AppColor.background,
        dividerColor: Colors.white54,
        colorScheme: const ColorScheme.light(primary: AppColor.primary),
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) {
        return ErrorNotification(
          child: BlocListener<AuthenticationBloc, AuthenticationState>(
            listenWhen: (previous, current) {
              return true;
            },
            listener: (context, state) async {
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
                case AuthenticationStatus.chooseBusinessLoading:
                  _navigator.push(
                    DialogRoute<void>(
                      context: context,
                      builder: (context) => const Center(
                        child: MyLoader(),
                      ),
                    ),
                  );
                  break;
                default:
                  break;
              }
            },
            child: child,
          ),
        );
      },
      onGenerateRoute: RouteConfig.onGenerateRoute,
    );
  }
}
