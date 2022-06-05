import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

import '../base_dao.dart';

@dao
abstract class SequenceDao extends AbstractDao<SequenceEntity> {

  @insert
  Future<int> createNewSequence(SequenceEntity sequenceEntity);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<int> updateSequence(SequenceEntity sequenceEntity);

  @Query("Select * from sequence where name = :type")
  Future<SequenceEntity?> getSequenceByType(String type);
}