
import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';

import '../database/db_provider.dart';

class ConfigRepository with DatabaseProvider {

  ConfigRepository();

  Future<List<CodeValueEntity>> getCodeByCategory(String category) {
    return db.codeValueEntitys.where().categoryEqualTo(category).findAll();
  }

  CodeValueEntity? getCodeByCategoryAndCode(String category, String? code) {
    if (category.isEmpty || (code == null || code.isEmpty)) {
      return null;
    }
    return db.codeValueEntitys.getByCategoryCodeSync(category, code);
  }
}