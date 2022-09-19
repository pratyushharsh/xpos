
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
    await db.writeTxn(() async {
      await db.transactionHeaderEntitys.put(header);
      // await header.lineItems.save();
      // await header.paymentLineItems.save();
      // for (var element in header.lineItems) {
      //   await element.lineModifiers.save();
      //   await element.taxModifiers.save();
      // }
    });
  }

  Future<TransactionHeaderEntity?> getTransaction(int id) async {
    TransactionHeaderEntity? order = await db.transactionHeaderEntitys.get(id);
    if (order != null) {
      // await order.lineItems.load();
      // for (var element in order.lineItems) {
      //   await element.lineModifiers.load();
      //   await element.taxModifiers.load();
      // }
      // await order.paymentLineItems.load();
      return order;
    }
    return null;
  }

  // @TODO
  Future<List<TransactionLineItemEntity>> getLineItemWithOriginalTransactionNo(int id) async {
    // var order = await db.transactionHeaderEntitys.where().lineItemsProperty().originalTransSeqProperty().equalTo(id).findAll();
    return [];
  }
}