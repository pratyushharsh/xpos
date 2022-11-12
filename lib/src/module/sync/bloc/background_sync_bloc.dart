import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/repositories/sync_config_repository.dart';
import 'package:receipt_generator/src/repositories/sync_repository.dart';

import '../../../repositories/invoice_repository.dart';
import '../background_isolate_service.dart';

part 'background_sync_event.dart';
part 'background_sync_state.dart';

class BackgroundSyncBloc
    extends Bloc<BackgroundSyncEvent, BackgroundSyncState> {
  final log = Logger('BackgroundSyncBloc');
  final SyncRepository syncRepository;
  final SyncConfigRepository syncConfigRepository;
  final InvoiceRepository invoiceRepository;
  Timer? _timer;
  Isolate? _isolate;
  bool isSyncEnabled = true;

  @override
  Future<void> close() async {
    if (_timer != null) {
      _timer!.cancel();
    }
    return super.close();
  }

  BackgroundSyncBloc(
      {required this.syncRepository,
      required this.syncConfigRepository,
      required this.invoiceRepository})
      : super(BackgroundSyncState()) {
    on<StartSyncEvent>(_onStartSyncEvent);
    on<SyncAllDataEvent>(_onSyncAllDataEvent);
    on<SyncAllConfigDataEvent>(_onSyncAllConfigEvent);
    on<LoadSampleData>(_onLoadSampleDataEvent);
    on<StopSyncEvent>(_onStopSyncEvent);
    on<ExportDataEvent>(_onExportDataEvent);
  }

  // @TODO Control Sync Using State
  void _onStartSyncEvent(
      StartSyncEvent event, Emitter<BackgroundSyncState> emit) async {
    if (!isSyncEnabled) {
      return;
    }

    if (_timer != null) {
      _timer!.cancel();
    }

    if (_isolate != null) {
      _isolate!.kill(priority: Isolate.immediate);
    }

    final ReceivePort receivePort = ReceivePort();
    _isolate = await Isolate.spawn(
        IsolateSyncService.isolateEntryPoint, receivePort.sendPort);
    SendPort sendPort = await receivePort.first;

    // Response Port
    ReceivePort responsePort = ReceivePort();
    responsePort.listen((dynamic message) {
      log.info('Received From Isolate: $message');
    });

    // Send Store Id to start the background sync.
    sendPort.send({
      'storeId': event.storeId,
      'sendPort': responsePort.sendPort,
      'syncType': 'start'
    });

    // sendPort.send(["Starting Background Sync", responsePort.sendPort]);
    emit(state.copyWith(
        storeId: event.storeId, status: BackgroundSyncStatus.started));
    log.info("Start Sync Event");
    _timer = Timer.periodic(const Duration(seconds: 60), (t) async {
      sendPort.send({
        'storeId': event.storeId,
        'sendPort': responsePort.sendPort,
        'syncType': 'refresh'
      });
    });
  }

  void _onStopSyncEvent(
      StopSyncEvent event, Emitter<BackgroundSyncState> emit) async {
    if (_timer != null) {
      _timer!.cancel();
    }

    if (_isolate != null) {
      _isolate!.kill(priority: Isolate.immediate);
    }
  }

  void _onSyncAllConfigEvent(
      SyncAllConfigDataEvent event, Emitter<BackgroundSyncState> emit) async {
    await syncConfigRepository.getSyncConfigDetails(forceSync: event.forceSync);
  }

  void _onLoadSampleDataEvent(
      LoadSampleData event, Emitter<BackgroundSyncState> emit) async {
    await syncConfigRepository.loadSampleProductAndImages(
        fullImport: event.fullImport);
  }

  void _onSyncAllDataEvent(
      SyncAllDataEvent event, Emitter<BackgroundSyncState> emit) async {
    if (state.status == BackgroundSyncStatus.inProgress) {
      return;
    }
    emit(state.copyWith(status: BackgroundSyncStatus.inProgress));
    DateTime start = DateTime.now();
    log.info("Starting Sync for all the Data");
    await syncRepository.startSync(state.storeId!);
    // DateTime end = DateTime.now();
    // Duration diff = end.difference(start);
    // log.info("${diff.inSeconds} Seconds elapsed in syncing the data");
    emit(state.copyWith(status: BackgroundSyncStatus.success));
  }

  void _onExportDataEvent(
      ExportDataEvent event, Emitter<BackgroundSyncState> emit) async {
    var data = await invoiceRepository.getInvoiceSettingByName("INVOICE");
    print(json.encode(data.toMap()));
  }
}
