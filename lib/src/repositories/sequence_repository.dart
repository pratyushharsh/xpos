import 'package:logging/logging.dart';

import '../database/db_provider.dart';
import '../entity/pos/entity.dart';
import '../util/helper/rest_api.dart';

class SequenceRepository with DatabaseProvider {
  final log = Logger('BusinessRepository');

  final RestApiClient restClient;

  SequenceRepository({required this.restClient});

  Future<SequenceEntity> getNextSequence(SequenceType type) async {
    await db.writeTxn(() async {
      var seq = await db.sequenceEntitys.get(type.index);
      if (seq != null) {
        await db.sequenceEntitys.put(seq.copyWith(nextSeq: seq.nextSeq + 1));
      } else {
        await db.sequenceEntitys.put(SequenceEntity(id: type.index, name: type.name, nextSeq: 1));
      }
    });

    var seq = await db.sequenceEntitys.get(type.index);
    return seq!;
  }
}
