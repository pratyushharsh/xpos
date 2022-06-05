import 'package:floor/floor.dart';
import 'package:isar/isar.dart';

part 'sync_entity.g.dart';

@Collection()
class SyncEntity {
  @Id()
  final int? id;

  @PrimaryKey()
  final String type;

  final DateTime? lastSyncAt;
  final int status;
  final DateTime? syncStartTime;
  final DateTime? syncEndTime;

  SyncEntity(
      {this.id,
      required this.type,
      this.lastSyncAt,
      required this.status,
      this.syncStartTime,
      this.syncEndTime});
}
