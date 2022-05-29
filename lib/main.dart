import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:receipt_generator/src/repositories/custom_storage.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';

import 'bloc_observer.dart';
import 'firebase_options.dart';
import 'log.dart';
import 'my_app.dart';

final log = Logger('Main');

Future<void> main() {
  return BlocOverrides.runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();
    initRootLogger();
    final db =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

    // AmplifyAuthCognito auth = AmplifyAuthCognito();
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

    runApp(MyApp(database: db, userPool: userPool, restClient: restClient,));
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