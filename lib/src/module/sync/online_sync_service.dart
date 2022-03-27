import 'dart:async';

import '../../repositories/app_database.dart';

class BackgroundSyncService {

  final AppDatabase database;

  BackgroundSyncService(this.database);



  Future<void> start() async {
  }
}
