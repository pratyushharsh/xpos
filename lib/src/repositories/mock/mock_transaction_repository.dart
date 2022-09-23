import 'package:isar/isar.dart';

import 'package:receipt_generator/src/util/helper/rest_api.dart';

import '../../entity/pos/entity.dart';
import '../transaction_repository.dart';

class MockTransactionRepository extends TransactionRepository {
  MockTransactionRepository(
      {required Isar db, required RestApiClient restClient})
      : super(db: db, restClient: restClient);

  @override
  Future<void> createNewSale(TransactionHeaderEntity header) async {
    throw UnimplementedError('Cannot Implement in the Mock Interface');
  }

  @override
  Future<TransactionHeaderEntity?> getTransaction(int id) async {

    TransactionLineItemTaxModifier taxModifier = TransactionLineItemTaxModifier(
      transSeq: 1000,
      lineItemSeq: 1,
      authorityId: 'INGST',
      authorityName: 'INGST',
      authorityType: 'INGST',
      taxGroupId: 'GST',
      taxRuleId: 'GST28',
      taxRuleName: 'GST 28%',
      taxableAmount: 100,
      taxAmount: 28,
      taxPercent: 28,
      originalTaxableAmount: 100,
      rawTaxPercentage: 28,
      rawTaxAmount: 28,
      taxOverride: false,
      taxOverrideAmount: null,
      taxOverridePercent: null,
    );

    TransactionLineItemEntity lineItem1 = TransactionLineItemEntity(
      unitCost: 100,
      itemIdEntryMethod: EntryMethod.keyboard,
      itemId: 'TEST00001',
      transSeq: 1000,
      lineItemSeq: 1,
      itemDescription: 'Test Item',
      quantity: 5,
      unitPrice: 20,
      extendedAmount: 100,
      netAmount: 128,
      grossAmount: 100,
      uom: 'EA',
      priceOverride: false,
      priceOverrideAmount: null,
      priceOverrideReason: null,
      returnedQuantity: null,
      isVoid: false,
      originalPosId: null,
      originalTransSeq: null,
      originalLineItemSeq: null,
      originalBusinessDate: null,
      returnReasonCode: null,
      returnComment: null,
      returnTypeCode: null,
      nonReturnableFlag: false,
      nonExchangeableFlag: false,
      baseUnitPrice: 100,
      storeId: 99999,
      businessDate: DateTime.now(),
      posId: 99999,
      category: 'Test',
      taxAmount: 28.00,
      priceEntryMethod: 'Keyboard',
      serialNumber: null,
      discountAmount: 0.00,
      returnFlag: false,
    );

    lineItem1.taxModifiers = [taxModifier];

    TransactionHeaderEntity header = TransactionHeaderEntity(
      transId: 1000,
      storeId: 99999,
      businessDate: DateTime.now(),
      beginDatetime: DateTime.now(),
      transactionType: 'SALE',
        endDateTime: DateTime.now(),
      total: 128,
      taxTotal: 28,
      subtotal: 100,
      roundTotal: 0.00,
      discountTotal: 0.00,
      status: 'COMPLETED',
      createTime: DateTime.now(),
    );
    header.lineItems = [lineItem1, lineItem1, lineItem1, lineItem1, lineItem1];

    return header;
  }

  @override
  Future<List<TransactionLineItemEntity>> getLineItemWithOriginalTransactionNo(
      int id) async {
    throw UnimplementedError('Cannot Implement in the Mock Interface');
  }
}
