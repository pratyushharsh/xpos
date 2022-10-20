import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/repositories/sync_config_repository.dart';
import 'package:receipt_generator/src/repositories/sync_repository.dart';

part 'background_sync_event.dart';
part 'background_sync_state.dart';

class BackgroundSyncBloc extends Bloc<BackgroundSyncEvent, BackgroundSyncState> {

  final log = Logger('BackgroundSyncBloc');
  final SyncRepository syncRepository;
  final SyncConfigRepository syncConfigRepository;
  Timer? _timer;


  @override
  Future<void> close() async {
    if (_timer != null) {
      _timer!.cancel();
    }
    return super.close();
  }

  BackgroundSyncBloc({required this.syncRepository, required this.syncConfigRepository}) : super(BackgroundSyncState()) {
    on<StartSyncEvent>(_onStartSyncEvent);
    on<SyncAllDataEvent>(_onSyncAllDataEvent);
    on<SyncAllConfigDataEvent>(_onSyncAllConfigEvent);
    on<LoadSampleData>(_onLoadSampleDataEvent);
    on<StopSyncEvent>(_onStopSyncEvent);
  }

  // @TODO Control Sync Using State
  void _onStartSyncEvent(StartSyncEvent event, Emitter<BackgroundSyncState> emit) async {
    emit(state.copyWith(storeId: event.storeId, status: BackgroundSyncStatus.started));
    if (_timer != null) {
      _timer!.cancel();
    } else {
      _timer = Timer.periodic(const Duration(minutes: 30), (t) async {
        if (BackgroundSyncStatus.inProgress != state.status) {
          add(SyncAllDataEvent());
        }
      });
    }
  }

  void _onStopSyncEvent(StopSyncEvent event, Emitter<BackgroundSyncState> emit) async {
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  void _onSyncAllConfigEvent(SyncAllConfigDataEvent event, Emitter<BackgroundSyncState> emit) async {
    await syncConfigRepository.getSyncConfigDetails();
  }

  void _onLoadSampleDataEvent(LoadSampleData event, Emitter<BackgroundSyncState> emit) async {
    await syncConfigRepository.loadSampleProductAndImages(fullImport: event.fullImport);
  }

  void _onSyncAllDataEvent(SyncAllDataEvent event, Emitter<BackgroundSyncState> emit) async {
    if (state.status == BackgroundSyncStatus.inProgress) {
      return;
    }
    emit(state.copyWith(status: BackgroundSyncStatus.inProgress));
    DateTime start = DateTime.now();
    log.info("Starting Sync for all the Data");
    await syncRepository.startSync(state.storeId!);
    DateTime end = DateTime.now();
    Duration diff = end.difference(start);
    log.info("${diff.inSeconds} Seconds elapsed in syncing the data");
    emit(state.copyWith(status: BackgroundSyncStatus.success));
  }
}
