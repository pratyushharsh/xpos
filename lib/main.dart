import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:receipt_generator/src/repositories/custom_storage.dart';

import 'bloc_observer.dart';
import 'firebase_options.dart';
import 'log.dart';
import 'models/ModelProvider.dart';
import 'my_app.dart';
import 'amplifyconfiguration.dart';

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

    runApp(MyApp(database: db, userPool: userPool,));
  }, blocObserver: InvoicingBlocObserver());
}

Future<void> _initAmplifyFlutter() async {
  try {
    AmplifyDataStore datastorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance,
        syncInterval: 10,
        errorHandler: (er) => {
      print(er)
    });
    await Amplify.addPlugin(datastorePlugin);
    await Amplify.addPlugin(AmplifyAPI());
    await Amplify.configure(amplifyconfig);
    print('Aws Configured');
  } on AmplifyAlreadyConfiguredException {
    print(
        "Amplify was already configured. Looks like app restarted on android.");
  } catch (e) {
    print('Error configuring amplify');
    print(e);
  }
}