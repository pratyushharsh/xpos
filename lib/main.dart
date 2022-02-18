import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

import 'bloc_observer.dart';
import 'log.dart';
import 'my_app.dart';

Future<void> main() {
  return BlocOverrides.runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();
    initRootLogger();
    final db =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    runApp(MyApp(database: db));
  }, blocObserver: InvoicingBlocObserver());
}
