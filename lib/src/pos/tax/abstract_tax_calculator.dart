import '../../entity/pos/entity.dart';

abstract class AbstractTaxCalculator {
  TransactionLineItemEntity calculateTaxForLineItem(TransactionLineItemEntity lineItem);
}