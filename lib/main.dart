import 'package:amazon_cognito_identity_dart_2/cognito.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/repositories/custom_storage.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';

import 'bloc_observer.dart';
import 'log.dart';
import 'my_app.dart';

final log = Logger('Main');

Future<void> main() {
  return BlocOverrides.runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();
    initRootLogger();

    // Database Configuration
    final dir = await getApplicationSupportDirectory();
    final isar = await Isar.open(
      inspector: true,
      schemas: [
        RetailLocationEntitySchema,
        ContactEntitySchema,
        ProductEntitySchema,
        SequenceEntitySchema,
        SettingEntitySchema,
        SyncEntitySchema,
        TransactionHeaderEntitySchema,
        TransactionLineItemEntitySchema,
        TransactionPaymentLineItemEntitySchema
      ],
      directory: dir.path,
    );

    await _initAmplifyFlutter();

    var customStorage =  CustomStorage();
    await customStorage.init();

    final userPool = CognitoUserPool(
      'ap-south-1_gXgaeT7lu',
      '366tbopn6vh1f3v88e4u2drne2',
      storage: customStorage,
    );

    final restClient = RestApiClient(
        userPool: userPool,
        baseUrl:
        "https://3lw9rlveu5.execute-api.ap-south-1.amazonaws.com/dev");

    runApp(MyApp(database: isar, userPool: userPool, restClient: restClient,));
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