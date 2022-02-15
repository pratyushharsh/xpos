import 'dart:async';
import 'package:floor/floor.dart';
import 'package:receipt_generator/src/converters/converter.dart';
import 'package:receipt_generator/src/dao/contact_dao.dart';
import 'package:receipt_generator/src/dao/dao.dart';
import 'package:receipt_generator/src/dao/sequence_dao.dart';
import 'package:receipt_generator/src/dao/trn_header_dao.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart'; // the generated code will be there

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [
  ProductEntity,
  // SkuEntity,
  TransactionHeaderEntity,
  TransactionLineItemEntity,
  SequenceEntity,
  ContactEntity,
])
abstract class AppDatabase extends FloorDatabase {
  ProductDao get productDao;
  SkuDao get skuDao;
  TransactionDao get transactionDao;
  SequenceDao get sequenceDao;
  ContactDao get contactDao;
}
