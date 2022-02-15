import 'package:floor/floor.dart';
import 'package:receipt_generator/src/config/sale_status_codes.dart';
import 'package:receipt_generator/src/entity/entity.dart';

@dao
abstract class TransactionDao {
  @insert
  Future<void> insertTransaction(TransactionHeaderEntity header);

  @update
  Future<void> updateTransaction(TransactionHeaderEntity header);

  @insert
  Future<void> insertTransactionLineItem(TransactionLineItemEntity lineItem);

  @insert
  Future<List<int>> insertTransactionLineItems(
      List<TransactionLineItemEntity> lineItems);

  @update
  Future<void> updateTransactionLineItem(TransactionLineItemEntity lineItem);

  @update
  Future<int> updateTransactionLineItems(
      List<TransactionLineItemEntity> lineItems);

  @Query('SELECT seq FROM sqlite_sequence where name = :tableName')
  Future<int?> getNextTransSeq(String tableName);

  @transaction
  Future<void> createNewSale(TransactionHeaderEntity header,
      List<TransactionLineItemEntity> lineItems) async {
    await insertTransaction(header);
    var trans = await insertTransactionLineItems(lineItems);
  }

  @Query('SELECT * FROM trn_header order by beginDatetime desc')
  Future<List<TransactionHeaderEntity>> findAllReceipt();

  @Query('SELECT * FROM trn_header where transId = :transSeq')
  Future<TransactionHeaderEntity?> findHeaderByTransactionSeq(int transSeq);

  @Query('SELECT * FROM trn_line_item where transId = :transSeq')
  Future<List<TransactionLineItemEntity>> findLineItemByTransactionSeq(
      int transSeq);

  @transaction
  Future<bool> updateTransactionStatus(int transId, String status) async {
    var header = await findHeaderByTransactionSeq(transId);
    // @TODO Logic to change the status

    if (header != null) {
      if (SaleStatus.completed == status) {
        if (header.status == SaleStatus.initiated ||
            header.status == SaleStatus.pending) {
          TransactionHeaderEntity newData = header.copyWith(
              status: status,
              endDateTime: DateTime.now().microsecondsSinceEpoch);
          await updateTransaction(newData);
          return true;
        }
      } else if (SaleStatus.cancelled == status) {
        if (header.status == SaleStatus.initiated ||
            header.status == SaleStatus.pending ||
            header.status == SaleStatus.suspended) {
          TransactionHeaderEntity newData = header.copyWith(
              status: status,
              endDateTime: DateTime.now().microsecondsSinceEpoch);
          await updateTransaction(newData);
          return true;
        }
      } else if (SaleStatus.suspended == status) {}
    }
    return false;
  }
}
