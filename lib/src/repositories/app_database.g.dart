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
            'CREATE TABLE IF NOT EXISTS `product` (`productId` TEXT, `description` TEXT NOT NULL, `listPrice` REAL, `salePrice` REAL, `purchasePrice` REAL, `uom` TEXT, `enable` INTEGER NOT NULL, `brand` TEXT, `skuCode` TEXT, `hsn` TEXT, `tax` REAL, `imageUrl` TEXT, PRIMARY KEY (`productId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `trn_header` (`transId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `transactionType` TEXT NOT NULL, `businessDate` INTEGER NOT NULL, `beginDatetime` INTEGER NOT NULL, `endDateTime` INTEGER, `total` REAL NOT NULL, `taxTotal` REAL NOT NULL, `subtotal` REAL NOT NULL, `roundTotal` REAL NOT NULL, `status` TEXT NOT NULL, `customerId` TEXT, `customerPhone` TEXT, `shippingAddress` TEXT, `billingAddress` TEXT, `customerName` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `trn_line_item` (`transId` INTEGER, `transSeq` INTEGER NOT NULL, `productId` TEXT NOT NULL, `productDescription` TEXT NOT NULL, `qty` REAL NOT NULL, `price` REAL NOT NULL, `amount` REAL NOT NULL, `discount` REAL NOT NULL, `createDate` INTEGER NOT NULL, `updateDate` INTEGER NOT NULL, FOREIGN KEY (`transId`) REFERENCES `trn_header` (`transId`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`transId`, `transSeq`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `sequence` (`name` TEXT NOT NULL, `nextSeq` INTEGER NOT NULL, PRIMARY KEY (`name`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `customer` (`contactId` TEXT NOT NULL, `name` TEXT NOT NULL, `phoneNumber` TEXT, `email` TEXT, `shippingAddress` TEXT, `billingAddress` TEXT, PRIMARY KEY (`contactId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `rtl_loc` (`rtlLocId` TEXT NOT NULL, `storeName` TEXT, `storeContact` TEXT, `storeNumber` TEXT, `currencyId` TEXT, `locale` TEXT, `address1` TEXT, `address2` TEXT, `city` TEXT, `country` TEXT, `postalCode` TEXT, PRIMARY KEY (`rtlLocId`))');
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
}

class _$ProductDao extends ProductDao {
  _$ProductDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _productEntityInsertionAdapter = InsertionAdapter(
            database,
            'product',
            (ProductEntity item) => <String, Object?>{
                  'productId': item.productId,
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
                  'imageUrl': item.imageUrl
                }),
        _productEntityUpdateAdapter = UpdateAdapter(
            database,
            'product',
            ['productId'],
            (ProductEntity item) => <String, Object?>{
                  'productId': item.productId,
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
                  'imageUrl': item.imageUrl
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
            description: row['description'] as String,
            listPrice: row['listPrice'] as double?,
            salePrice: row['salePrice'] as double?,
            purchasePrice: row['purchasePrice'] as double?,
            uom: row['uom'] as String?,
            enable: (row['enable'] as int) != 0,
            brand: row['brand'] as String?,
            skuCode: row['skuCode'] as String?,
            hsn: row['hsn'] as String?,
            tax: row['tax'] as double?,
            imageUrl: row['imageUrl'] as String?));
  }

  @override
  Future<ProductEntity?> findProductById(String productId) async {
    return _queryAdapter.query('SELECT * FROM product where productId = ?1',
        mapper: (Map<String, Object?> row) => ProductEntity(
            productId: row['productId'] as String?,
            description: row['description'] as String,
            listPrice: row['listPrice'] as double?,
            salePrice: row['salePrice'] as double?,
            purchasePrice: row['purchasePrice'] as double?,
            uom: row['uom'] as String?,
            enable: (row['enable'] as int) != 0,
            brand: row['brand'] as String?,
            skuCode: row['skuCode'] as String?,
            hsn: row['hsn'] as String?,
            tax: row['tax'] as double?,
            imageUrl: row['imageUrl'] as String?),
        arguments: [productId]);
  }

  @override
  Future<List<ProductEntity>> findAllProductsByText(String filter) async {
    return _queryAdapter.queryList(
        'SELECT * FROM product where description like ?1 or productId like ?1  limit 10',
        mapper: (Map<String, Object?> row) => ProductEntity(productId: row['productId'] as String?, description: row['description'] as String, listPrice: row['listPrice'] as double?, salePrice: row['salePrice'] as double?, purchasePrice: row['purchasePrice'] as double?, uom: row['uom'] as String?, enable: (row['enable'] as int) != 0, brand: row['brand'] as String?, skuCode: row['skuCode'] as String?, hsn: row['hsn'] as String?, tax: row['tax'] as double?, imageUrl: row['imageUrl'] as String?),
        arguments: [filter]);
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
                  'transactionType': item.transactionType,
                  'businessDate': item.businessDate,
                  'beginDatetime': item.beginDatetime,
                  'endDateTime': item.endDateTime,
                  'total': item.total,
                  'taxTotal': item.taxTotal,
                  'subtotal': item.subtotal,
                  'roundTotal': item.roundTotal,
                  'status': item.status,
                  'customerId': item.customerId,
                  'customerPhone': item.customerPhone,
                  'shippingAddress': item.shippingAddress,
                  'billingAddress': item.billingAddress,
                  'customerName': item.customerName
                }),
        _transactionLineItemEntityInsertionAdapter = InsertionAdapter(
            database,
            'trn_line_item',
            (TransactionLineItemEntity item) => <String, Object?>{
                  'transId': item.transId,
                  'transSeq': item.transSeq,
                  'productId': item.productId,
                  'productDescription': item.productDescription,
                  'qty': item.qty,
                  'price': item.price,
                  'amount': item.amount,
                  'discount': item.discount,
                  'createDate': item.createDate,
                  'updateDate': item.updateDate
                }),
        _transactionHeaderEntityUpdateAdapter = UpdateAdapter(
            database,
            'trn_header',
            ['transId'],
            (TransactionHeaderEntity item) => <String, Object?>{
                  'transId': item.transId,
                  'transactionType': item.transactionType,
                  'businessDate': item.businessDate,
                  'beginDatetime': item.beginDatetime,
                  'endDateTime': item.endDateTime,
                  'total': item.total,
                  'taxTotal': item.taxTotal,
                  'subtotal': item.subtotal,
                  'roundTotal': item.roundTotal,
                  'status': item.status,
                  'customerId': item.customerId,
                  'customerPhone': item.customerPhone,
                  'shippingAddress': item.shippingAddress,
                  'billingAddress': item.billingAddress,
                  'customerName': item.customerName
                }),
        _transactionLineItemEntityUpdateAdapter = UpdateAdapter(
            database,
            'trn_line_item',
            ['transId', 'transSeq'],
            (TransactionLineItemEntity item) => <String, Object?>{
                  'transId': item.transId,
                  'transSeq': item.transSeq,
                  'productId': item.productId,
                  'productDescription': item.productDescription,
                  'qty': item.qty,
                  'price': item.price,
                  'amount': item.amount,
                  'discount': item.discount,
                  'createDate': item.createDate,
                  'updateDate': item.updateDate
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
            businessDate: row['businessDate'] as int,
            beginDatetime: row['beginDatetime'] as int,
            transactionType: row['transactionType'] as String,
            endDateTime: row['endDateTime'] as int?,
            total: row['total'] as double,
            taxTotal: row['taxTotal'] as double,
            subtotal: row['subtotal'] as double,
            roundTotal: row['roundTotal'] as double,
            status: row['status'] as String,
            customerId: row['customerId'] as String?,
            customerPhone: row['customerPhone'] as String?,
            shippingAddress: row['shippingAddress'] as String?,
            billingAddress: row['billingAddress'] as String?,
            customerName: row['customerName'] as String?));
  }

  @override
  Future<TransactionHeaderEntity?> findHeaderByTransactionSeq(
      int transSeq) async {
    return _queryAdapter.query('SELECT * FROM trn_header where transId = ?1',
        mapper: (Map<String, Object?> row) => TransactionHeaderEntity(
            transId: row['transId'] as int,
            businessDate: row['businessDate'] as int,
            beginDatetime: row['beginDatetime'] as int,
            transactionType: row['transactionType'] as String,
            endDateTime: row['endDateTime'] as int?,
            total: row['total'] as double,
            taxTotal: row['taxTotal'] as double,
            subtotal: row['subtotal'] as double,
            roundTotal: row['roundTotal'] as double,
            status: row['status'] as String,
            customerId: row['customerId'] as String?,
            customerPhone: row['customerPhone'] as String?,
            shippingAddress: row['shippingAddress'] as String?,
            billingAddress: row['billingAddress'] as String?,
            customerName: row['customerName'] as String?),
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
            productId: row['productId'] as String,
            productDescription: row['productDescription'] as String,
            qty: row['qty'] as double,
            price: row['price'] as double,
            amount: row['amount'] as double,
            discount: row['discount'] as double,
            createDate: row['createDate'] as int,
            updateDate: row['updateDate'] as int),
        arguments: [transSeq]);
  }

  @override
  Future<List<TransactionLineItemEntity>> getAllTransactionLineItem() async {
    return _queryAdapter.queryList('SELECT * FROM trn_line_item',
        mapper: (Map<String, Object?> row) => TransactionLineItemEntity(
            transId: row['transId'] as int?,
            transSeq: row['transSeq'] as int,
            productId: row['productId'] as String,
            productDescription: row['productDescription'] as String,
            qty: row['qty'] as double,
            price: row['price'] as double,
            amount: row['amount'] as double,
            discount: row['discount'] as double,
            createDate: row['createDate'] as int,
            updateDate: row['updateDate'] as int));
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
                  'name': item.name,
                  'phoneNumber': item.phoneNumber,
                  'email': item.email,
                  'shippingAddress': item.shippingAddress,
                  'billingAddress': item.billingAddress
                }),
        _contactEntityUpdateAdapter = UpdateAdapter(
            database,
            'customer',
            ['contactId'],
            (ContactEntity item) => <String, Object?>{
                  'contactId': item.contactId,
                  'name': item.name,
                  'phoneNumber': item.phoneNumber,
                  'email': item.email,
                  'shippingAddress': item.shippingAddress,
                  'billingAddress': item.billingAddress
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
            phoneNumber: row['phoneNumber'] as String?,
            email: row['email'] as String?,
            shippingAddress: row['shippingAddress'] as String?,
            billingAddress: row['billingAddress'] as String?));
  }

  @override
  Future<List<ContactEntity>> findAllProductsByName(String filter) async {
    return _queryAdapter.queryList(
        'SELECT * FROM customer where name like ?1 or phoneNumber like ?1 or email like ?1 limit 10',
        mapper: (Map<String, Object?> row) => ContactEntity(contactId: row['contactId'] as String, name: row['name'] as String, phoneNumber: row['phoneNumber'] as String?, email: row['email'] as String?, shippingAddress: row['shippingAddress'] as String?, billingAddress: row['billingAddress'] as String?),
        arguments: [filter]);
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
                  'postalCode': item.postalCode
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
                  'postalCode': item.postalCode
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
            postalCode: row['postalCode'] as String?),
        arguments: [rtlLocId]);
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

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
