
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';

class TransactionRepository {
  final log = Logger('TransactionRepository');

  final Isar db;
  final RestApiClient restClient;

  TransactionRepository({required this.db, required this.restClient });

  Future<void> createNewSale(TransactionHeaderEntity header) async {
    await db.writeTxn((isar) async {
      await isar.transactionHeaderEntitys.put(header, saveLinks: true);
    });
  }

  Future<TransactionHeaderEntity?> getTransaction(int id) async {
    TransactionHeaderEntity? order = await db.transactionHeaderEntitys.get(id);
    if (order != null) {
      order.lineItems.loadSync();
      order.paymentLineItems.loadSync();
      return order;
    }
    return null;
  }

  Future<List<TransactionLineItemEntity>> getLineItemWithOriginalTransactionNo(int id) async {
    List<TransactionLineItemEntity> order = await db.transactionLineItemEntitys.where().originalTransSeqEqualTo(id).findAll();
    return order;
  }
}