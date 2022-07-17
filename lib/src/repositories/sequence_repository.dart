import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

import '../entity/pos/entity.dart';
import '../util/helper/rest_api.dart';

class SequenceRepository {
  final log = Logger('BusinessRepository');

  final Isar db;
  final RestApiClient restClient;

  SequenceRepository({required this.db, required this.restClient});

  Future<SequenceEntity> getNextSequence(SequenceType type) async {
    var data = await db.writeTxn((isar) async {
      var seq = await isar.sequenceEntitys.get(type.index);
      if (seq != null) {
        await isar.sequenceEntitys.put(seq.copyWith(nextSeq: seq.nextSeq + 1));
      } else {
        await isar.sequenceEntitys.put(SequenceEntity(id: type.index, name: type.name, nextSeq: 1));
      }
    });

    var seq = await db.sequenceEntitys.get(type.index);
    return seq!;
  }
}
