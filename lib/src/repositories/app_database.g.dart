// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ProductDao? _productDaoInstance;

  SkuDao? _skuDaoInstance;

  TransactionDao? _transactionDaoInstance;

  SequenceDao? _sequenceDaoInstance;

  ContactDao? _contactDaoInstance;

  RetailLocationDao? _retailLocationDaoInstance;

  SyncDao? _syncDaoInstance;

  SettingsDao? _settingDaoInstance;

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
            'CREATE TABLE IF NOT EXISTS `product` (`productId` TEXT, `storeId` TEXT NOT NULL, `description` TEXT NOT NULL, `listPrice` REAL, `salePrice` REAL, `purchasePrice` REAL, `uom` TEXT NOT NULL, `enable` INTEGER NOT NULL, `brand` TEXT, `skuCode` TEXT, `hsn` TEXT, `tax` REAL, `imageUrl` TEXT, `syncState` INTEGER NOT NULL, `createTime` INTEGER NOT NULL, `updateTime` INTEGER, `lastSyncAt` INTEGER, `version` INTEGER NOT NULL, PRIMARY KEY (`productId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `trn_header` (`transId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `storeId` TEXT NOT NULL, `transactionType` TEXT NOT NULL, `businessDate` INTEGER NOT NULL, `beginDatetime` INTEGER NOT NULL, `endDateTime` INTEGER, `total` REAL NOT NULL, `taxTotal` REAL NOT NULL, `subtotal` REAL NOT NULL, `roundTotal` REAL NOT NULL, `status` TEXT NOT NULL, `customerId` TEXT, `customerPhone` TEXT, `shippingAddress` TEXT, `billingAddress` TEXT, `customerName` TEXT, `syncState` INTEGER NOT NULL, `createTime` INTEGER NOT NULL, `updateTime` INTEGER, `lastChangedAt` INTEGER, `version` INTEGER NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `trn_line_item` (`transId` INTEGER, `transSeq` INTEGER NOT NULL, `brand` TEXT, `productId` TEXT NOT NULL, `itemId` TEXT, `hsn` TEXT, `productDescription` TEXT NOT NULL, `qty` REAL NOT NULL, `uom` TEXT NOT NULL, `amount` REAL NOT NULL, `salePrice` REAL NOT NULL, `listPrice` REAL NOT NULL, `itemDiscount` REAL NOT NULL, `orderDiscount` REAL NOT NULL, `taxClass` TEXT NOT NULL, `taxRate` REAL NOT NULL, `taxAmount` REAL NOT NULL, `shipmentId` TEXT, FOREIGN KEY (`transId`) REFERENCES `trn_header` (`transId`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`transId`, `transSeq`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `sequence` (`name` TEXT NOT NULL, `nextSeq` INTEGER NOT NULL, PRIMARY KEY (`name`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `customer` (`contactId` TEXT NOT NULL, `storeId` TEXT NOT NULL, `name` TEXT NOT NULL, `phoneNumber` TEXT, `email` TEXT, `shippingAddress` TEXT, `billingAddress` TEXT, `syncState` INTEGER NOT NULL, `createTime` INTEGER NOT NULL, `updateTime` INTEGER, `lastSyncAt` INTEGER, `version` INTEGER NOT NULL, PRIMARY KEY (`contactId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `rtl_loc` (`rtlLocId` TEXT NOT NULL, `storeName` TEXT, `storeContact` TEXT, `storeNumber` TEXT, `currencyId` TEXT, `locale` TEXT, `address1` TEXT, `address2` TEXT, `city` TEXT, `country` TEXT, `postalCode` TEXT, `createTime` INTEGER NOT NULL, `updateTime` INTEGER, `lastChangedAt` INTEGER, `version` INTEGER NOT NULL, PRIMARY KEY (`rtlLocId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `sync` (`type` TEXT NOT NULL, `lastSyncAt` INTEGER, `status` INTEGER NOT NULL, `syncStartTime` INTEGER, `syncEndTime` INTEGER, PRIMARY KEY (`type`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `setting` (`category` TEXT NOT NULL, `subCategory` TEXT NOT NULL, `value` TEXT NOT NULL, `createAt` INTEGER, `updatedAt` INTEGER, PRIMARY KEY (`category`, `subCategory`))');
        await database.execute(
            'CREATE INDEX `index_product_description` ON `product` (`description`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_product_skuCode` ON `product` (`skuCode`)');
        await database.execute(
            'CREATE INDEX `index_customer_name` ON `customer` (`name`)');
        await database.execute(
            'CREATE INDEX `index_customer_phoneNumber` ON `customer` (`phoneNumber`)');
        await database.execute(
            'CREATE INDEX `index_customer_email` ON `customer` (`email`)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ProductDao get productDao {
    return _productDaoInstance ??= _$ProductDao(database, changeListener);
  }

  @override
  SkuDao get skuDao {
    return _skuDaoInstance ??= _$SkuDao(database, changeListener);
  }

  @override
  TransactionDao get transactionDao {
    return _transactionDaoInstance ??=
        _$TransactionDao(database, changeListener);
  }

  @override
  SequenceDao get sequenceDao {
    return _sequenceDaoInstance ??= _$SequenceDao(database, changeListener);
  }

  @override
  ContactDao get contactDao {
    return _contactDaoInstance ??= _$ContactDao(database, changeListener);
  }

  @override
  RetailLocationDao get retailLocationDao {
    return _retailLocationDaoInstance ??=
        _$RetailLocationDao(database, changeListener);
  }

  @override
  SyncDao get syncDao {
    return _syncDaoInstance ??= _$SyncDao(database, changeListener);
  }

  @override
  SettingsDao get settingDao {
    return _settingDaoInstance ??= _$SettingsDao(database, changeListener);
  }
}

class _$ProductDao extends ProductDao {
  _$ProductDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _productEntityInsertionAdapter = InsertionAdapter(
            database,
            'product',
            (ProductEntity item) => <String, Object?>{
                  'productId': item.productId,
                  'storeId': item.storeId,
                  'description': item.description,
                  'listPrice': item.listPrice,
                  'salePrice': item.salePrice,
                  'purchasePrice': item.purchasePrice,
                  'uom': item.uom,
                  'enable': item.enable ? 1 : 0,
                  'brand': item.brand,
                  'skuCode': item.skuCode,
                  'hsn': item.hsn,
                  'tax': item.tax,
                  'imageUrl': item.imageUrl,
                  'syncState': item.syncState,
                  'createTime': _dateTimeConverter.encode(item.createTime),
                  'updateTime': _dateTimeNullConverter.encode(item.updateTime),
                  'lastSyncAt': _dateTimeNullConverter.encode(item.lastSyncAt),
                  'version': item.version
                }),
        _productEntityUpdateAdapter = UpdateAdapter(
            database,
            'product',
            ['productId'],
            (ProductEntity item) => <String, Object?>{
                  'productId': item.productId,
                  'storeId': item.storeId,
                  'description': item.description,
                  'listPrice': item.listPrice,
                  'salePrice': item.salePrice,
                  'purchasePrice': item.purchasePrice,
                  'uom': item.uom,
                  'enable': item.enable ? 1 : 0,
                  'brand': item.brand,
                  'skuCode': item.skuCode,
                  'hsn': item.hsn,
                  'tax': item.tax,
                  'imageUrl': item.imageUrl,
                  'syncState': item.syncState,
                  'createTime': _dateTimeConverter.encode(item.createTime),
                  'updateTime': _dateTimeNullConverter.encode(item.updateTime),
                  'lastSyncAt': _dateTimeNullConverter.encode(item.lastSyncAt),
                  'version': item.version
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ProductEntity> _productEntityInsertionAdapter;

  final UpdateAdapter<ProductEntity> _productEntityUpdateAdapter;

  @override
  Future<List<ProductEntity>> findAllProducts() async {
    return _queryAdapter.queryList('SELECT * FROM product',
        mapper: (Map<String, Object?> row) => ProductEntity(
            productId: row['productId'] as String?,
            storeId: row['storeId'] as String,
            description: row['description'] as String,
            listPrice: row['listPrice'] as double?,
            salePrice: row['salePrice'] as double?,
            purchasePrice: row['purchasePrice'] as double?,
            uom: row['uom'] as String,
            enable: (row['enable'] as int) != 0,
            brand: row['brand'] as String?,
            skuCode: row['skuCode'] as String?,
            hsn: row['hsn'] as String?,
            tax: row['tax'] as double?,
            imageUrl: row['imageUrl'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            syncState: row['syncState'] as int,
            lastSyncAt:
                _dateTimeNullConverter.decode(row['lastSyncAt'] as int?),
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)));
  }

  @override
  Future<ProductEntity?> findProductById(String productId) async {
    return _queryAdapter.query('SELECT * FROM product where productId = ?1',
        mapper: (Map<String, Object?> row) => ProductEntity(
            productId: row['productId'] as String?,
            storeId: row['storeId'] as String,
            description: row['description'] as String,
            listPrice: row['listPrice'] as double?,
            salePrice: row['salePrice'] as double?,
            purchasePrice: row['purchasePrice'] as double?,
            uom: row['uom'] as String,
            enable: (row['enable'] as int) != 0,
            brand: row['brand'] as String?,
            skuCode: row['skuCode'] as String?,
            hsn: row['hsn'] as String?,
            tax: row['tax'] as double?,
            imageUrl: row['imageUrl'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            syncState: row['syncState'] as int,
            lastSyncAt:
                _dateTimeNullConverter.decode(row['lastSyncAt'] as int?),
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)),
        arguments: [productId]);
  }

  @override
  Future<List<ProductEntity>> findAllProductsByText(String filter) async {
    return _queryAdapter.queryList(
        'SELECT * FROM product where description like ?1 or productId like ?1  limit 10',
        mapper: (Map<String, Object?> row) => ProductEntity(productId: row['productId'] as String?, storeId: row['storeId'] as String, description: row['description'] as String, listPrice: row['listPrice'] as double?, salePrice: row['salePrice'] as double?, purchasePrice: row['purchasePrice'] as double?, uom: row['uom'] as String, enable: (row['enable'] as int) != 0, brand: row['brand'] as String?, skuCode: row['skuCode'] as String?, hsn: row['hsn'] as String?, tax: row['tax'] as double?, imageUrl: row['imageUrl'] as String?, createTime: _dateTimeConverter.decode(row['createTime'] as int), version: row['version'] as int, syncState: row['syncState'] as int, lastSyncAt: _dateTimeNullConverter.decode(row['lastSyncAt'] as int?), updateTime: _dateTimeNullConverter.decode(row['updateTime'] as int?)),
        arguments: [filter]);
  }

  @override
  Future<List<ProductEntity>> getProductByStatus(int status) async {
    return _queryAdapter.queryList('SELECT * FROM product where syncState = ?1',
        mapper: (Map<String, Object?> row) => ProductEntity(
            productId: row['productId'] as String?,
            storeId: row['storeId'] as String,
            description: row['description'] as String,
            listPrice: row['listPrice'] as double?,
            salePrice: row['salePrice'] as double?,
            purchasePrice: row['purchasePrice'] as double?,
            uom: row['uom'] as String,
            enable: (row['enable'] as int) != 0,
            brand: row['brand'] as String?,
            skuCode: row['skuCode'] as String?,
            hsn: row['hsn'] as String?,
            tax: row['tax'] as double?,
            imageUrl: row['imageUrl'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            syncState: row['syncState'] as int,
            lastSyncAt:
                _dateTimeNullConverter.decode(row['lastSyncAt'] as int?),
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)),
        arguments: [status]);
  }

  @override
  Future<void> insertItem(ProductEntity item) async {
    await _productEntityInsertionAdapter.insert(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertBulk(ProductEntity item) async {
    await _productEntityInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(ProductEntity item) async {
    await _productEntityUpdateAdapter.update(item, OnConflictStrategy.replace);
  }
}

class _$SkuDao extends SkuDao {
  _$SkuDao(this.database, this.changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;
}

class _$TransactionDao extends TransactionDao {
  _$TransactionDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _transactionHeaderEntityInsertionAdapter = InsertionAdapter(
            database,
            'trn_header',
            (TransactionHeaderEntity item) => <String, Object?>{
                  'transId': item.transId,
                  'storeId': item.storeId,
                  'transactionType': item.transactionType,
                  'businessDate': _dateTimeConverter.encode(item.businessDate),
                  'beginDatetime':
                      _dateTimeConverter.encode(item.beginDatetime),
                  'endDateTime':
                      _dateTimeNullConverter.encode(item.endDateTime),
                  'total': item.total,
                  'taxTotal': item.taxTotal,
                  'subtotal': item.subtotal,
                  'roundTotal': item.roundTotal,
                  'status': item.status,
                  'customerId': item.customerId,
                  'customerPhone': item.customerPhone,
                  'shippingAddress': item.shippingAddress,
                  'billingAddress': item.billingAddress,
                  'customerName': item.customerName,
                  'syncState': item.syncState,
                  'createTime': _dateTimeConverter.encode(item.createTime),
                  'updateTime': _dateTimeNullConverter.encode(item.updateTime),
                  'lastChangedAt':
                      _dateTimeNullConverter.encode(item.lastChangedAt),
                  'version': item.version
                }),
        _transactionLineItemEntityInsertionAdapter = InsertionAdapter(
            database,
            'trn_line_item',
            (TransactionLineItemEntity item) => <String, Object?>{
                  'transId': item.transId,
                  'transSeq': item.transSeq,
                  'brand': item.brand,
                  'productId': item.productId,
                  'itemId': item.itemId,
                  'hsn': item.hsn,
                  'productDescription': item.productDescription,
                  'qty': item.qty,
                  'uom': item.uom,
                  'amount': item.amount,
                  'salePrice': item.salePrice,
                  'listPrice': item.listPrice,
                  'itemDiscount': item.itemDiscount,
                  'orderDiscount': item.orderDiscount,
                  'taxClass': item.taxClass,
                  'taxRate': item.taxRate,
                  'taxAmount': item.taxAmount,
                  'shipmentId': item.shipmentId
                }),
        _transactionHeaderEntityUpdateAdapter = UpdateAdapter(
            database,
            'trn_header',
            ['transId'],
            (TransactionHeaderEntity item) => <String, Object?>{
                  'transId': item.transId,
                  'storeId': item.storeId,
                  'transactionType': item.transactionType,
                  'businessDate': _dateTimeConverter.encode(item.businessDate),
                  'beginDatetime':
                      _dateTimeConverter.encode(item.beginDatetime),
                  'endDateTime':
                      _dateTimeNullConverter.encode(item.endDateTime),
                  'total': item.total,
                  'taxTotal': item.taxTotal,
                  'subtotal': item.subtotal,
                  'roundTotal': item.roundTotal,
                  'status': item.status,
                  'customerId': item.customerId,
                  'customerPhone': item.customerPhone,
                  'shippingAddress': item.shippingAddress,
                  'billingAddress': item.billingAddress,
                  'customerName': item.customerName,
                  'syncState': item.syncState,
                  'createTime': _dateTimeConverter.encode(item.createTime),
                  'updateTime': _dateTimeNullConverter.encode(item.updateTime),
                  'lastChangedAt':
                      _dateTimeNullConverter.encode(item.lastChangedAt),
                  'version': item.version
                }),
        _transactionLineItemEntityUpdateAdapter = UpdateAdapter(
            database,
            'trn_line_item',
            ['transId', 'transSeq'],
            (TransactionLineItemEntity item) => <String, Object?>{
                  'transId': item.transId,
                  'transSeq': item.transSeq,
                  'brand': item.brand,
                  'productId': item.productId,
                  'itemId': item.itemId,
                  'hsn': item.hsn,
                  'productDescription': item.productDescription,
                  'qty': item.qty,
                  'uom': item.uom,
                  'amount': item.amount,
                  'salePrice': item.salePrice,
                  'listPrice': item.listPrice,
                  'itemDiscount': item.itemDiscount,
                  'orderDiscount': item.orderDiscount,
                  'taxClass': item.taxClass,
                  'taxRate': item.taxRate,
                  'taxAmount': item.taxAmount,
                  'shipmentId': item.shipmentId
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TransactionHeaderEntity>
      _transactionHeaderEntityInsertionAdapter;

  final InsertionAdapter<TransactionLineItemEntity>
      _transactionLineItemEntityInsertionAdapter;

  final UpdateAdapter<TransactionHeaderEntity>
      _transactionHeaderEntityUpdateAdapter;

  final UpdateAdapter<TransactionLineItemEntity>
      _transactionLineItemEntityUpdateAdapter;

  @override
  Future<int?> getNextTransSeq(String tableName) async {
    await _queryAdapter.queryNoReturn(
        'SELECT seq FROM sqlite_sequence where name = ?1',
        arguments: [tableName]);
  }

  @override
  Future<List<TransactionHeaderEntity>> findAllReceipt() async {
    return _queryAdapter.queryList(
        'SELECT * FROM trn_header order by beginDatetime desc',
        mapper: (Map<String, Object?> row) => TransactionHeaderEntity(
            transId: row['transId'] as int,
            storeId: row['storeId'] as String,
            businessDate: _dateTimeConverter.decode(row['businessDate'] as int),
            beginDatetime:
                _dateTimeConverter.decode(row['beginDatetime'] as int),
            transactionType: row['transactionType'] as String,
            endDateTime:
                _dateTimeNullConverter.decode(row['endDateTime'] as int?),
            total: row['total'] as double,
            taxTotal: row['taxTotal'] as double,
            subtotal: row['subtotal'] as double,
            roundTotal: row['roundTotal'] as double,
            status: row['status'] as String,
            customerId: row['customerId'] as String?,
            customerPhone: row['customerPhone'] as String?,
            shippingAddress: row['shippingAddress'] as String?,
            billingAddress: row['billingAddress'] as String?,
            customerName: row['customerName'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            lastChangedAt:
                _dateTimeNullConverter.decode(row['lastChangedAt'] as int?),
            syncState: row['syncState'] as int,
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)));
  }

  @override
  Future<TransactionHeaderEntity?> findHeaderByTransactionSeq(
      int transSeq) async {
    return _queryAdapter.query('SELECT * FROM trn_header where transId = ?1',
        mapper: (Map<String, Object?> row) => TransactionHeaderEntity(
            transId: row['transId'] as int,
            storeId: row['storeId'] as String,
            businessDate: _dateTimeConverter.decode(row['businessDate'] as int),
            beginDatetime:
                _dateTimeConverter.decode(row['beginDatetime'] as int),
            transactionType: row['transactionType'] as String,
            endDateTime:
                _dateTimeNullConverter.decode(row['endDateTime'] as int?),
            total: row['total'] as double,
            taxTotal: row['taxTotal'] as double,
            subtotal: row['subtotal'] as double,
            roundTotal: row['roundTotal'] as double,
            status: row['status'] as String,
            customerId: row['customerId'] as String?,
            customerPhone: row['customerPhone'] as String?,
            shippingAddress: row['shippingAddress'] as String?,
            billingAddress: row['billingAddress'] as String?,
            customerName: row['customerName'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            lastChangedAt:
                _dateTimeNullConverter.decode(row['lastChangedAt'] as int?),
            syncState: row['syncState'] as int,
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)),
        arguments: [transSeq]);
  }

  @override
  Future<List<TransactionLineItemEntity>> findLineItemByTransactionSeq(
      int transSeq) async {
    return _queryAdapter.queryList(
        'SELECT * FROM trn_line_item where transId = ?1',
        mapper: (Map<String, Object?> row) => TransactionLineItemEntity(
            transId: row['transId'] as int?,
            transSeq: row['transSeq'] as int,
            brand: row['brand'] as String?,
            productId: row['productId'] as String,
            itemId: row['itemId'] as String?,
            hsn: row['hsn'] as String?,
            productDescription: row['productDescription'] as String,
            qty: row['qty'] as double,
            uom: row['uom'] as String,
            amount: row['amount'] as double,
            salePrice: row['salePrice'] as double,
            listPrice: row['listPrice'] as double,
            itemDiscount: row['itemDiscount'] as double,
            orderDiscount: row['orderDiscount'] as double,
            taxClass: row['taxClass'] as String,
            taxRate: row['taxRate'] as double,
            taxAmount: row['taxAmount'] as double,
            shipmentId: row['shipmentId'] as String?),
        arguments: [transSeq]);
  }

  @override
  Future<List<TransactionLineItemEntity>> getAllTransactionLineItem() async {
    return _queryAdapter.queryList('SELECT * FROM trn_line_item',
        mapper: (Map<String, Object?> row) => TransactionLineItemEntity(
            transId: row['transId'] as int?,
            transSeq: row['transSeq'] as int,
            brand: row['brand'] as String?,
            productId: row['productId'] as String,
            itemId: row['itemId'] as String?,
            hsn: row['hsn'] as String?,
            productDescription: row['productDescription'] as String,
            qty: row['qty'] as double,
            uom: row['uom'] as String,
            amount: row['amount'] as double,
            salePrice: row['salePrice'] as double,
            listPrice: row['listPrice'] as double,
            itemDiscount: row['itemDiscount'] as double,
            orderDiscount: row['orderDiscount'] as double,
            taxClass: row['taxClass'] as String,
            taxRate: row['taxRate'] as double,
            taxAmount: row['taxAmount'] as double,
            shipmentId: row['shipmentId'] as String?));
  }

  @override
  Future<List<TransactionHeaderEntity>> getTransactionHeaderByStatus(
      int status) async {
    return _queryAdapter.queryList(
        'SELECT * FROM trn_header where syncState = ?1',
        mapper: (Map<String, Object?> row) => TransactionHeaderEntity(
            transId: row['transId'] as int,
            storeId: row['storeId'] as String,
            businessDate: _dateTimeConverter.decode(row['businessDate'] as int),
            beginDatetime:
                _dateTimeConverter.decode(row['beginDatetime'] as int),
            transactionType: row['transactionType'] as String,
            endDateTime:
                _dateTimeNullConverter.decode(row['endDateTime'] as int?),
            total: row['total'] as double,
            taxTotal: row['taxTotal'] as double,
            subtotal: row['subtotal'] as double,
            roundTotal: row['roundTotal'] as double,
            status: row['status'] as String,
            customerId: row['customerId'] as String?,
            customerPhone: row['customerPhone'] as String?,
            shippingAddress: row['shippingAddress'] as String?,
            billingAddress: row['billingAddress'] as String?,
            customerName: row['customerName'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            lastChangedAt:
                _dateTimeNullConverter.decode(row['lastChangedAt'] as int?),
            syncState: row['syncState'] as int,
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)),
        arguments: [status]);
  }

  @override
  Future<void> insertTransaction(TransactionHeaderEntity header) async {
    await _transactionHeaderEntityInsertionAdapter.insert(
        header, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertTransactionLineItem(
      TransactionLineItemEntity lineItem) async {
    await _transactionLineItemEntityInsertionAdapter.insert(
        lineItem, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> insertTransactionLineItems(
      List<TransactionLineItemEntity> lineItems) {
    return _transactionLineItemEntityInsertionAdapter.insertListAndReturnIds(
        lineItems, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateTransaction(TransactionHeaderEntity header) async {
    await _transactionHeaderEntityUpdateAdapter.update(
        header, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateTransactionLineItem(
      TransactionLineItemEntity lineItem) async {
    await _transactionLineItemEntityUpdateAdapter.update(
        lineItem, OnConflictStrategy.abort);
  }

  @override
  Future<int> updateTransactionLineItems(
      List<TransactionLineItemEntity> lineItems) {
    return _transactionLineItemEntityUpdateAdapter
        .updateListAndReturnChangedRows(lineItems, OnConflictStrategy.abort);
  }

  @override
  Future<void> createNewSale(TransactionHeaderEntity header,
      List<TransactionLineItemEntity> lineItems) async {
    if (database is sqflite.Transaction) {
      await super.createNewSale(header, lineItems);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.transactionDao
            .createNewSale(header, lineItems);
      });
    }
  }

  @override
  Future<bool> updateTransactionStatus(int transId, String status) async {
    if (database is sqflite.Transaction) {
      return super.updateTransactionStatus(transId, status);
    } else {
      return (database as sqflite.Database)
          .transaction<bool>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        return transactionDatabase.transactionDao
            .updateTransactionStatus(transId, status);
      });
    }
  }
}

class _$SequenceDao extends SequenceDao {
  _$SequenceDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _sequenceEntityInsertionAdapter = InsertionAdapter(
            database,
            'sequence',
            (SequenceEntity item) =>
                <String, Object?>{'name': item.name, 'nextSeq': item.nextSeq}),
        _sequenceEntityUpdateAdapter = UpdateAdapter(
            database,
            'sequence',
            ['name'],
            (SequenceEntity item) =>
                <String, Object?>{'name': item.name, 'nextSeq': item.nextSeq});

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SequenceEntity> _sequenceEntityInsertionAdapter;

  final UpdateAdapter<SequenceEntity> _sequenceEntityUpdateAdapter;

  @override
  Future<SequenceEntity?> getSequenceByType(String type) async {
    return _queryAdapter.query('Select * from sequence where name = ?1',
        mapper: (Map<String, Object?> row) => SequenceEntity(
            name: row['name'] as String, nextSeq: row['nextSeq'] as int),
        arguments: [type]);
  }

  @override
  Future<int> createNewSequence(SequenceEntity sequenceEntity) {
    return _sequenceEntityInsertionAdapter.insertAndReturnId(
        sequenceEntity, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertItem(SequenceEntity item) async {
    await _sequenceEntityInsertionAdapter.insert(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertBulk(SequenceEntity item) async {
    await _sequenceEntityInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<int> updateSequence(SequenceEntity sequenceEntity) {
    return _sequenceEntityUpdateAdapter.updateAndReturnChangedRows(
        sequenceEntity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(SequenceEntity item) async {
    await _sequenceEntityUpdateAdapter.update(item, OnConflictStrategy.replace);
  }

  @override
  Future<SequenceEntity> getNextSequence(String type) async {
    if (database is sqflite.Transaction) {
      return super.getNextSequence(type);
    } else {
      return (database as sqflite.Database)
          .transaction<SequenceEntity>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        return transactionDatabase.sequenceDao.getNextSequence(type);
      });
    }
  }
}

class _$ContactDao extends ContactDao {
  _$ContactDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _contactEntityInsertionAdapter = InsertionAdapter(
            database,
            'customer',
            (ContactEntity item) => <String, Object?>{
                  'contactId': item.contactId,
                  'storeId': item.storeId,
                  'name': item.name,
                  'phoneNumber': item.phoneNumber,
                  'email': item.email,
                  'shippingAddress': item.shippingAddress,
                  'billingAddress': item.billingAddress,
                  'syncState': item.syncState,
                  'createTime': _dateTimeConverter.encode(item.createTime),
                  'updateTime': _dateTimeNullConverter.encode(item.updateTime),
                  'lastSyncAt': _dateTimeNullConverter.encode(item.lastSyncAt),
                  'version': item.version
                }),
        _contactEntityUpdateAdapter = UpdateAdapter(
            database,
            'customer',
            ['contactId'],
            (ContactEntity item) => <String, Object?>{
                  'contactId': item.contactId,
                  'storeId': item.storeId,
                  'name': item.name,
                  'phoneNumber': item.phoneNumber,
                  'email': item.email,
                  'shippingAddress': item.shippingAddress,
                  'billingAddress': item.billingAddress,
                  'syncState': item.syncState,
                  'createTime': _dateTimeConverter.encode(item.createTime),
                  'updateTime': _dateTimeNullConverter.encode(item.updateTime),
                  'lastSyncAt': _dateTimeNullConverter.encode(item.lastSyncAt),
                  'version': item.version
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactEntity> _contactEntityInsertionAdapter;

  final UpdateAdapter<ContactEntity> _contactEntityUpdateAdapter;

  @override
  Future<List<ContactEntity>> findAllCustomers() async {
    return _queryAdapter.queryList('SELECT * FROM customer',
        mapper: (Map<String, Object?> row) => ContactEntity(
            contactId: row['contactId'] as String,
            name: row['name'] as String,
            storeId: row['storeId'] as String,
            phoneNumber: row['phoneNumber'] as String?,
            email: row['email'] as String?,
            shippingAddress: row['shippingAddress'] as String?,
            billingAddress: row['billingAddress'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            syncState: row['syncState'] as int,
            lastSyncAt:
                _dateTimeNullConverter.decode(row['lastSyncAt'] as int?),
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)));
  }

  @override
  Future<List<ContactEntity>> findAllProductsByName(String filter) async {
    return _queryAdapter.queryList(
        'SELECT * FROM customer where name like ?1 or phoneNumber like ?1 or email like ?1 limit 10',
        mapper: (Map<String, Object?> row) => ContactEntity(contactId: row['contactId'] as String, name: row['name'] as String, storeId: row['storeId'] as String, phoneNumber: row['phoneNumber'] as String?, email: row['email'] as String?, shippingAddress: row['shippingAddress'] as String?, billingAddress: row['billingAddress'] as String?, createTime: _dateTimeConverter.decode(row['createTime'] as int), version: row['version'] as int, syncState: row['syncState'] as int, lastSyncAt: _dateTimeNullConverter.decode(row['lastSyncAt'] as int?), updateTime: _dateTimeNullConverter.decode(row['updateTime'] as int?)),
        arguments: [filter]);
  }

  @override
  Future<List<ContactEntity>> getCustomerByStatus(int status) async {
    return _queryAdapter.queryList(
        'SELECT * FROM customer where syncState = ?1',
        mapper: (Map<String, Object?> row) => ContactEntity(
            contactId: row['contactId'] as String,
            name: row['name'] as String,
            storeId: row['storeId'] as String,
            phoneNumber: row['phoneNumber'] as String?,
            email: row['email'] as String?,
            shippingAddress: row['shippingAddress'] as String?,
            billingAddress: row['billingAddress'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            syncState: row['syncState'] as int,
            lastSyncAt:
                _dateTimeNullConverter.decode(row['lastSyncAt'] as int?),
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)),
        arguments: [status]);
  }

  @override
  Future<void> insertItem(ContactEntity item) async {
    await _contactEntityInsertionAdapter.insert(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertBulk(ContactEntity item) async {
    await _contactEntityInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(ContactEntity item) async {
    await _contactEntityUpdateAdapter.update(item, OnConflictStrategy.replace);
  }
}

class _$RetailLocationDao extends RetailLocationDao {
  _$RetailLocationDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _retailLocationEntityInsertionAdapter = InsertionAdapter(
            database,
            'rtl_loc',
            (RetailLocationEntity item) => <String, Object?>{
                  'rtlLocId': item.rtlLocId,
                  'storeName': item.storeName,
                  'storeContact': item.storeContact,
                  'storeNumber': item.storeNumber,
                  'currencyId': item.currencyId,
                  'locale': item.locale,
                  'address1': item.address1,
                  'address2': item.address2,
                  'city': item.city,
                  'country': item.country,
                  'postalCode': item.postalCode,
                  'createTime': _dateTimeConverter.encode(item.createTime),
                  'updateTime': _dateTimeNullConverter.encode(item.updateTime),
                  'lastChangedAt':
                      _dateTimeNullConverter.encode(item.lastChangedAt),
                  'version': item.version
                }),
        _retailLocationEntityUpdateAdapter = UpdateAdapter(
            database,
            'rtl_loc',
            ['rtlLocId'],
            (RetailLocationEntity item) => <String, Object?>{
                  'rtlLocId': item.rtlLocId,
                  'storeName': item.storeName,
                  'storeContact': item.storeContact,
                  'storeNumber': item.storeNumber,
                  'currencyId': item.currencyId,
                  'locale': item.locale,
                  'address1': item.address1,
                  'address2': item.address2,
                  'city': item.city,
                  'country': item.country,
                  'postalCode': item.postalCode,
                  'createTime': _dateTimeConverter.encode(item.createTime),
                  'updateTime': _dateTimeNullConverter.encode(item.updateTime),
                  'lastChangedAt':
                      _dateTimeNullConverter.encode(item.lastChangedAt),
                  'version': item.version
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<RetailLocationEntity>
      _retailLocationEntityInsertionAdapter;

  final UpdateAdapter<RetailLocationEntity> _retailLocationEntityUpdateAdapter;

  @override
  Future<RetailLocationEntity?> findRetailLocById(String rtlLocId) async {
    return _queryAdapter.query('SELECT * FROM rtl_loc where rtlLocId = ?1',
        mapper: (Map<String, Object?> row) => RetailLocationEntity(
            rtlLocId: row['rtlLocId'] as String,
            storeName: row['storeName'] as String?,
            storeContact: row['storeContact'] as String?,
            storeNumber: row['storeNumber'] as String?,
            currencyId: row['currencyId'] as String?,
            locale: row['locale'] as String?,
            address1: row['address1'] as String?,
            address2: row['address2'] as String?,
            city: row['city'] as String?,
            country: row['country'] as String?,
            postalCode: row['postalCode'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            lastChangedAt:
                _dateTimeNullConverter.decode(row['lastChangedAt'] as int?),
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)),
        arguments: [rtlLocId]);
  }

  @override
  Future<List<RetailLocationEntity>> listAllRtlLocation() async {
    return _queryAdapter.queryList('SELECT * FROM rtl_loc',
        mapper: (Map<String, Object?> row) => RetailLocationEntity(
            rtlLocId: row['rtlLocId'] as String,
            storeName: row['storeName'] as String?,
            storeContact: row['storeContact'] as String?,
            storeNumber: row['storeNumber'] as String?,
            currencyId: row['currencyId'] as String?,
            locale: row['locale'] as String?,
            address1: row['address1'] as String?,
            address2: row['address2'] as String?,
            city: row['city'] as String?,
            country: row['country'] as String?,
            postalCode: row['postalCode'] as String?,
            createTime: _dateTimeConverter.decode(row['createTime'] as int),
            version: row['version'] as int,
            lastChangedAt:
                _dateTimeNullConverter.decode(row['lastChangedAt'] as int?),
            updateTime:
                _dateTimeNullConverter.decode(row['updateTime'] as int?)));
  }

  @override
  Future<void> insertItem(RetailLocationEntity item) async {
    await _retailLocationEntityInsertionAdapter.insert(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertBulk(RetailLocationEntity item) async {
    await _retailLocationEntityInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(RetailLocationEntity item) async {
    await _retailLocationEntityUpdateAdapter.update(
        item, OnConflictStrategy.replace);
  }
}

class _$SyncDao extends SyncDao {
  _$SyncDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _syncEntityInsertionAdapter = InsertionAdapter(
            database,
            'sync',
            (SyncEntity item) => <String, Object?>{
                  'type': item.type,
                  'lastSyncAt': _dateTimeNullConverter.encode(item.lastSyncAt),
                  'status': item.status,
                  'syncStartTime':
                      _dateTimeNullConverter.encode(item.syncStartTime),
                  'syncEndTime': _dateTimeNullConverter.encode(item.syncEndTime)
                }),
        _syncEntityUpdateAdapter = UpdateAdapter(
            database,
            'sync',
            ['type'],
            (SyncEntity item) => <String, Object?>{
                  'type': item.type,
                  'lastSyncAt': _dateTimeNullConverter.encode(item.lastSyncAt),
                  'status': item.status,
                  'syncStartTime':
                      _dateTimeNullConverter.encode(item.syncStartTime),
                  'syncEndTime': _dateTimeNullConverter.encode(item.syncEndTime)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SyncEntity> _syncEntityInsertionAdapter;

  final UpdateAdapter<SyncEntity> _syncEntityUpdateAdapter;

  @override
  Future<SyncEntity?> findSyncById(String type) async {
    return _queryAdapter.query('SELECT * FROM sync where type = ?1',
        mapper: (Map<String, Object?> row) => SyncEntity(
            type: row['type'] as String,
            lastSyncAt:
                _dateTimeNullConverter.decode(row['lastSyncAt'] as int?),
            status: row['status'] as int,
            syncStartTime:
                _dateTimeNullConverter.decode(row['syncStartTime'] as int?),
            syncEndTime:
                _dateTimeNullConverter.decode(row['syncEndTime'] as int?)),
        arguments: [type]);
  }

  @override
  Future<List<SyncEntity>> listAllSyncStatus() async {
    return _queryAdapter.queryList('SELECT * FROM sync',
        mapper: (Map<String, Object?> row) => SyncEntity(
            type: row['type'] as String,
            lastSyncAt:
                _dateTimeNullConverter.decode(row['lastSyncAt'] as int?),
            status: row['status'] as int,
            syncStartTime:
                _dateTimeNullConverter.decode(row['syncStartTime'] as int?),
            syncEndTime:
                _dateTimeNullConverter.decode(row['syncEndTime'] as int?)));
  }

  @override
  Future<void> insertItem(SyncEntity item) async {
    await _syncEntityInsertionAdapter.insert(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertBulk(SyncEntity item) async {
    await _syncEntityInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(SyncEntity item) async {
    await _syncEntityUpdateAdapter.update(item, OnConflictStrategy.replace);
  }
}

class _$SettingsDao extends SettingsDao {
  _$SettingsDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _settingEntityInsertionAdapter = InsertionAdapter(
            database,
            'setting',
            (SettingEntity item) => <String, Object?>{
                  'category': item.category,
                  'subCategory': item.subCategory,
                  'value': item.value,
                  'createAt': _dateTimeNullConverter.encode(item.createAt),
                  'updatedAt': _dateTimeNullConverter.encode(item.updatedAt)
                }),
        _settingEntityUpdateAdapter = UpdateAdapter(
            database,
            'setting',
            ['category', 'subCategory'],
            (SettingEntity item) => <String, Object?>{
                  'category': item.category,
                  'subCategory': item.subCategory,
                  'value': item.value,
                  'createAt': _dateTimeNullConverter.encode(item.createAt),
                  'updatedAt': _dateTimeNullConverter.encode(item.updatedAt)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SettingEntity> _settingEntityInsertionAdapter;

  final UpdateAdapter<SettingEntity> _settingEntityUpdateAdapter;

  @override
  Future<SettingEntity?> findSetting(
      String category, String subCategory) async {
    return _queryAdapter.query(
        'SELECT * FROM setting where category = ?1 and subCategory = ?2',
        mapper: (Map<String, Object?> row) => SettingEntity(
            category: row['category'] as String,
            subCategory: row['subCategory'] as String,
            value: row['value'] as String,
            createAt: _dateTimeNullConverter.decode(row['createAt'] as int?),
            updatedAt: _dateTimeNullConverter.decode(row['updatedAt'] as int?)),
        arguments: [category, subCategory]);
  }

  @override
  Future<List<SettingEntity>> findSettingsByCategory(String category) async {
    return _queryAdapter.queryList('SELECT * FROM setting where category = ?1',
        mapper: (Map<String, Object?> row) => SettingEntity(
            category: row['category'] as String,
            subCategory: row['subCategory'] as String,
            value: row['value'] as String,
            createAt: _dateTimeNullConverter.decode(row['createAt'] as int?),
            updatedAt: _dateTimeNullConverter.decode(row['updatedAt'] as int?)),
        arguments: [category]);
  }

  @override
  Future<List<SettingEntity>> findAllSettingsByCategory() async {
    return _queryAdapter.queryList('SELECT * FROM setting',
        mapper: (Map<String, Object?> row) => SettingEntity(
            category: row['category'] as String,
            subCategory: row['subCategory'] as String,
            value: row['value'] as String,
            createAt: _dateTimeNullConverter.decode(row['createAt'] as int?),
            updatedAt:
                _dateTimeNullConverter.decode(row['updatedAt'] as int?)));
  }

  @override
  Future<void> insertItem(SettingEntity item) async {
    await _settingEntityInsertionAdapter.insert(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertBulk(SettingEntity item) async {
    await _settingEntityInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(SettingEntity item) async {
    await _settingEntityUpdateAdapter.update(item, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
final _dateTimeNullConverter = DateTimeNullConverter();
