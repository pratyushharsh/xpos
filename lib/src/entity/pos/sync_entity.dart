import 'package:floor/floor.dart';

@Entity(tableName: 'sync')
class SyncEntity {
  @PrimaryKey()
  final String type;

  final DateTime? lastSyncAt;
  final int status;
  final DateTime? syncStartTime;
  final DateTime? syncEndTime;

  SyncEntity(
      {required this.type, this.lastSyncAt, required this.status, this.syncStartTime, this.syncEndTime});
}