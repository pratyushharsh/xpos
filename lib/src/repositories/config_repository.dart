
import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';

class ConfigRepository {
  final Isar db;

  ConfigRepository({ required this.db });

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