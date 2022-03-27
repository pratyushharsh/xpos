part of 'background_sync_bloc.dart';

@immutable
abstract class BackgroundSyncEvent {}

class StartSyncEvent extends BackgroundSyncEvent {}