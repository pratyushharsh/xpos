
import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';

class ConfigRepository {
  final Isar db;

  ConfigRepository({ required this.db });

  List<CodeValueEntity> getCodeByCategory(String catergory) {
    return db.codeValueEntitys.where().categoryEqualTo(catergory).findAllSync();
  }
}