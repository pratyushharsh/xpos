import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/entity.dart';

import 'base_dao.dart';

@dao
abstract class SequenceDao extends AbstractDao<SequenceEntity> {

  @insert
  Future<int> createNewSequence(SequenceEntity sequenceEntity);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<int> updateSequence(SequenceEntity sequenceEntity);

  @Query("Select * from sequence where name = :type")
  Future<SequenceEntity?> getSequenceByType(String type);

  @transaction
  Future<SequenceEntity> getNextSequence(String type) async {
    // get sequence
    var data = await getSequenceByType(type);

    if (data == null) {
      var seq = SequenceEntity(name: type, nextSeq: 1);
      await createNewSequence(seq);
      data = seq;
    }
    // if not present update or create
    var nextSeq = SequenceEntity(name: data.name, nextSeq: data.nextSeq + 1);
    await updateSequence(nextSeq);
    //
    return data;
  }
}