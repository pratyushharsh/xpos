import 'package:floor/floor.dart';

@Entity(tableName: 'sync')
class SyncEntity {
  @PrimaryKey()
  final String type;

  final DateTime lastSyncAt;

  final String status;

  SyncEntity(
      {required this.type, required this.lastSyncAt, required this.status});
}
