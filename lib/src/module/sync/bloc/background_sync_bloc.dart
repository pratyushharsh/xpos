import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'background_sync_event.dart';
part 'background_sync_state.dart';

void isolateFunction(int store) async {
  final db =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  Timer timer = Timer.periodic(const Duration(seconds: 5), (timer) async {
    var data = await db.productDao.findAllProducts();
    print(data);
  });
}


class BackgroundSyncBloc extends Bloc<BackgroundSyncEvent, BackgroundSyncState> {
  final log = Logger('LoadItemBulkBloc');
  final AppDatabase db;


  BackgroundSyncBloc({required this.db}) : super(BackgroundSyncInitial()) {
    on<StartSyncEvent>(_onStartSyncEvent);
  }

  void _onStartSyncEvent(StartSyncEvent event, Emitter<BackgroundSyncState> emit) async {
    Timer timer = Timer.periodic(const Duration(seconds: 5), (timer) async {
      var data = await db.productDao.findAllProducts();
      print(data);
    });
  }
}
