
import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';

class ConfigRepository {
  final Isar db;

  ConfigRepository({ required this.db });

  Future<List<CodeValueEntity>> getCodeByCategory(String category) {
    return db.codeValueEntitys.where().categoryEqualTo(category).findAll();
  }
}