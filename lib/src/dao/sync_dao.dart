import 'package:floor/floor.dart';

import '../entity/entity.dart';
import 'base_dao.dart';

@dao
abstract class SyncDao extends AbstractDao<SyncEntity> {

  @Query('SELECT * FROM sync where type = :type')
  Future<SyncEntity?> findSyncById(String type);

  @Query('SELECT * FROM sync')
  Future<List<SyncEntity>> listAllSyncStatus();
}