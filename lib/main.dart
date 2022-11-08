import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:receipt_generator/src/config/constants.dart';
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/util/cache/custom_storage.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';

import 'bloc_observer.dart';
import 'log.dart';
import 'my_app.dart';
import 'src/util/cache/custom_pdf_cache.dart';

final log = Logger('Main');


Future<void> main() {
  return BlocOverrides.runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();
    initRootLogger();
    await EasyLocalization.ensureInitialized();
    PdfBaseCache.defaultCache = CustomPdfCache();

    // Database Configuration
    final dir = await getApplicationSupportDirectory();
    await Constants.getImageBasePath();
    log.info('App Support Directory:  $dir');
    final isar = await Isar.open(
      [
        RetailLocationEntitySchema,
        ContactEntitySchema,
        EmployeeEntitySchema,
        EmployeeRoleEntitySchema,
        ProductEntitySchema,
        CollectionEntitySchema,
        SequenceEntitySchema,
        SettingEntitySchema,
        SyncEntitySchema,
        TransactionHeaderEntitySchema,
        CodeValueEntitySchema,
        ReasonCodeEntitySchema,
        TaxGroupEntitySchema,
        ReportConfigEntitySchema,
      ],
      inspector: true,
      directory: dir.path,
      name: 'xpos'
    );

    await _initAmplifyFlutter();

    var customStorage = CustomStorage();
    await customStorage.init();

    // 'ap-south-1_gXgaeT7lu',
    // '366tbopn6vh1f3v88e4u2drne2',

    // 'ap-south-1_6L70C39jY',
    // '2oabjq1j5kh9nqgd5hd7qs3cbi',
    final userPool = CognitoUserPool(
      'ap-south-1_6L70C39jY',
      '2oabjq1j5kh9nqgd5hd7qs3cbi',
      storage: customStorage,
    );

    final restClient = RestApiClient(
        userPool: userPool,
        baseUrl: "https://yp4fg0z7dc.execute-api.ap-south-1.amazonaws.com/DEV");

    runApp(
      EasyLocalization(
        path: 'assets/translations',
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('hi', 'IN'),
        ],
        fallbackLocale: const Locale('en', 'US'),
        child: MyApp(
          database: isar,
          userPool: userPool,
          restClient: restClient,
        ),
      ),
    );
  }, blocObserver: InvoicingBlocObserver());
}

Future<void> _initAmplifyFlutter() async {
  // try {
  //   // AmplifyDataStore datastorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance,
  //   //     syncInterval: 10,
  //   //     errorHandler: (er) => {
  //   //   log.severe(er)
  //   // });
  //   // await Amplify.addPlugin(datastorePlugin);
  //   // await Amplify.addPlugin(AmplifyAPI());
  //   await Amplify.configure(amplifyconfig);
  //   log.info('Aws Configured');
  // } on AmplifyAlreadyConfiguredException {
  //   log.severe(
  //       "Amplify was already configured. Looks like app restarted on android.");
  // } catch (e) {
  //   log.severe('Error configuring amplify');
  //   log.severe(e);
  // }
}
