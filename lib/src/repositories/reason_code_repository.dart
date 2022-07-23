import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

import '../entity/pos/reason_code_entity.dart';
import '../util/helper/rest_api.dart';

class ReasonCodeRepository {
  final log = Logger('ReasonCodeRepository');

  final Isar db;
  final RestApiClient restClient;

  ReasonCodeRepository({required this.db, required this.restClient});

  List<ReasonCodeEntity> getReasonCodeByTypeCode(String reasonTypeCode) {
    try {
      return db.reasonCodeEntitys.where().findAllSync();
    }catch (e) {
      log.severe(e);
    }
    return [];
  }
}