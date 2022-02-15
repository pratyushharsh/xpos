import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

import 'bloc_observer.dart';
import 'log.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initRootLogger();
  final db = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  Bloc.observer = InvoicingBlocObserver();
  runApp(MyApp(database: db));
}