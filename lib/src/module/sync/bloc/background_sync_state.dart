part of 'background_sync_bloc.dart';

enum BackgroundSyncStatus { initial, started, inProgress, success }

class BackgroundSyncState {
  final BackgroundSyncStatus status;
  final String? storeId;

  const BackgroundSyncState(
      {this.status = BackgroundSyncStatus.initial, this.storeId})
      : assert((status == BackgroundSyncStatus.started ||
                status == BackgroundSyncStatus.inProgress ||
                status == BackgroundSyncStatus.success)
            ? storeId != null
            : true);

  BackgroundSyncState copyWith(
      {BackgroundSyncStatus? status, String? storeId}) {
    return BackgroundSyncState(
        status: status ?? this.status, storeId: storeId ?? this.storeId);
  }

  @override
  String toString() {
    return 'BackgroundSyncState{status: $status, storeId: $storeId}';
  }
}
