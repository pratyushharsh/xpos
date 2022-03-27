import 'dart:async';

import 'dart:isolate';
import '../../repositories/app_database.dart';

class BackgroundSyncService {

  final AppDatabase database;

  BackgroundSyncService(this.database);



  Future<void> start() async {
  }
}
