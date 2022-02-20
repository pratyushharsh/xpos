import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/module/item/bloc/item_bloc.dart';
import 'package:receipt_generator/src/module/load_item_bulk/bloc/load_item_bulk_bloc.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:receipt_generator/src/repositories/contact_repository.dart';

class MyApp extends StatelessWidget {
  final AppDatabase database;
  const MyApp({Key? key, required this.database}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(lazy: false, create: (context) => database),
          RepositoryProvider(create: (context) => ContactRepository())
        ],
        child: MultiBlocProvider(providers: [
          BlocProvider(
            lazy: false,
            create: (context) => ItemBloc(db: RepositoryProvider.of(context)),
          ),
          BlocProvider(
              create: (context) =>
                  LoadItemBulkBloc(db: RepositoryProvider.of(context)))
        ], child: const MyAppView()));
  }
}

class MyAppView extends StatefulWidget {
  const MyAppView({Key? key}) : super(key: key);

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.latoTextTheme(
              Theme.of(context).textTheme
          ),
      ),
      onGenerateRoute: RouteConfig.onGenerateRoute,
    );
  }
}

// textTheme: GoogleFonts.robotoMonoTextTheme(
// Theme.of(context).textTheme
// ),