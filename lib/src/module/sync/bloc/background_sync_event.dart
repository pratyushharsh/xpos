part of 'background_sync_bloc.dart';

@immutable
abstract class BackgroundSyncEvent {}

class StartSyncEvent extends BackgroundSyncEvent {
  final String storeId;

  StartSyncEvent(this.storeId);
}
class StopSyncEvent extends BackgroundSyncEvent {}

class SyncAllDataEvent extends BackgroundSyncEvent {}

class SyncAllConfigDataEvent extends BackgroundSyncEvent {}