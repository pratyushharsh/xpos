import 'dart:async';
import 'package:floor/floor.dart';
import 'package:receipt_generator/src/converters/converter.dart';
import 'package:receipt_generator/src/dao/pos/dao.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

// part 'app_database.g.dart'; // the generated code will be there

@TypeConverters([DateTimeConverter, DateTimeNullConverter])
@Database(version: 1, entities: [
  ProductEntity,
  // SkuEntity,
  TransactionHeaderEntity,
  TransactionLineItemEntity,
  SequenceEntity,
  ContactEntity,
  RetailLocationEntity,
  SyncEntity,
  SettingEntity
])
abstract class AppDatabaseS extends FloorDatabase {
  ProductDao get productDao;
  SkuDao get skuDao;
  TransactionDao get transactionDao;
  SequenceDao get sequenceDao;
  ContactDao get contactDao;
  RetailLocationDao get retailLocationDao;
  SyncDao get syncDao;
  SettingsDao get settingDao;
}
