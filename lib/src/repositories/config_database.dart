import 'dart:async';
import 'package:floor/floor.dart';
import 'package:receipt_generator/src/dao/config/dao.dart';
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';

import 'package:sqflite/sqflite.dart' as sqflite;


part 'config_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [
  CodeValueEntity
])
abstract class ConfigDatabase extends FloorDatabase {
  CodeValueDao get codeValueDao;
}