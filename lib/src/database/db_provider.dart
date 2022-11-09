import 'dart:collection';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';

import '../entity/config/code_value_entity.dart';
import '../entity/pos/entity.dart';

mixin DatabaseProvider {
  static final log = Logger('DatabaseProvider');
  static const defaultDbName = 'default';
  static final Map<String, Isar> _dbMap = HashMap<String, Isar>();
  static String _currentKey = defaultDbName;

  Isar get db => _dbMap[_currentKey]!;

  static Future<void> ensureInitialized({String name = defaultDbName}) async {
    await switchDatabase(name);
  }

  static Future<Isar> _openDatabase(String name) async {
    final dir = await getApplicationSupportDirectory();
    log.info("Creating new database connection at $dir");
    return await Isar.open([
      RetailLocationEntitySchema,
      ContactEntitySchema,
      EmployeeEntitySchema,
      EmployeeRoleEntitySchema,
      ProductEntitySchema,
      CollectionEntitySchema,
      SequenceEntitySchema,
      SettingEntitySchema,
      SyncEntitySchema,
      TransactionHeaderEntitySchema,
      CodeValueEntitySchema,
      ReasonCodeEntitySchema,
      TaxGroupEntitySchema,
      ReportConfigEntitySchema,
    ], inspector: true, directory: dir.path, name: name);
  }

  static Future<void> switchDatabase(String name) async {
    log.info("Switching database to $name");
    if (_dbMap.containsKey(name)) {
      _currentKey = name;
    } else {
      _dbMap[name] = await _openDatabase(name);
      _currentKey = name;
    }
  }
}
