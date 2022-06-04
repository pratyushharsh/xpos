// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorConfigDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$ConfigDatabaseBuilder databaseBuilder(String name) =>
      _$ConfigDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$ConfigDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$ConfigDatabaseBuilder(null);
}

class _$ConfigDatabaseBuilder {
  _$ConfigDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$ConfigDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$ConfigDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<ConfigDatabase> build() async {
    // final path = name != null
    //     ? await sqfliteDatabaseFactory.getDatabasePath(name!)
    //     : ':memory:';
    const path = '/data/user/0/com.nearbai.receipt_generator/databases/config_database.db';
    final database = _$ConfigDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$ConfigDatabase extends ConfigDatabase {
  _$ConfigDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CodeValueDao? _codeValueDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `code_value` (`rtlLocId` TEXT NOT NULL, `category` TEXT NOT NULL, `code` TEXT NOT NULL, `value` TEXT NOT NULL, `description` TEXT, PRIMARY KEY (`rtlLocId`, `category`, `code`))');
        await database.execute(
            'CREATE INDEX `index_code_value_category` ON `code_value` (`category`)');
        await database.execute(
            'CREATE INDEX `index_code_value_code` ON `code_value` (`code`)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CodeValueDao get codeValueDao {
    return _codeValueDaoInstance ??= _$CodeValueDao(database, changeListener);
  }
}

class _$CodeValueDao extends CodeValueDao {
  _$CodeValueDao(this.database, this.changeListener)
      : _codeValueEntityInsertionAdapter = InsertionAdapter(
            database,
            'code_value',
            (CodeValueEntity item) => <String, Object?>{
                  'rtlLocId': item.rtlLocId,
                  'category': item.category,
                  'code': item.code,
                  'value': item.value,
                  'description': item.description
                }),
        _codeValueEntityUpdateAdapter = UpdateAdapter(
            database,
            'code_value',
            ['rtlLocId', 'category', 'code'],
            (CodeValueEntity item) => <String, Object?>{
                  'rtlLocId': item.rtlLocId,
                  'category': item.category,
                  'code': item.code,
                  'value': item.value,
                  'description': item.description
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final InsertionAdapter<CodeValueEntity> _codeValueEntityInsertionAdapter;

  final UpdateAdapter<CodeValueEntity> _codeValueEntityUpdateAdapter;

  @override
  Future<void> insertItem(CodeValueEntity item) async {
    await _codeValueEntityInsertionAdapter.insert(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertBulk(CodeValueEntity item) async {
    await _codeValueEntityInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(CodeValueEntity item) async {
    await _codeValueEntityUpdateAdapter.update(
        item, OnConflictStrategy.replace);
  }
}
