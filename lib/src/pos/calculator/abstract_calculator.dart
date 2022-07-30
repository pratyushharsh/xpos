import 'package:receipt_generator/src/entity/pos/entity.dart';

abstract class AbstractCalculator {
  List<TransactionLineItemEntity> handleLineItemEvent(List<TransactionLineItemEntity> lineItems);
}