import '../../entity/pos/entity.dart';

class TransactionHelper {

  static TransactionLineItemEntity updateSaleReturnLineItemPrice(TransactionLineItemEntity line, double unitPrice, String reasonCode) {
    double extendedAmount = unitPrice * line.quantity;
    double grossAmount = extendedAmount + line.taxAmount;
    double netAmount = extendedAmount - line.taxAmount;

    return TransactionLineItemEntity(
      storeId: line.storeId,
      businessDate: line.businessDate,
      posId: line.posId,
      extendedAmount: extendedAmount,
      grossAmount: grossAmount,
      grossQuantity: line.grossQuantity,
      itemDescription: line.itemDescription,
      itemId: line.itemId,
      itemIdEntryMethod: line.itemIdEntryMethod,
      lineItemSeq: line.lineItemSeq,
      netAmount: netAmount,
      netQuantity: line.netQuantity,
      nonExchangeableFlag: line.nonExchangeableFlag,
      nonReturnableFlag: line.nonReturnableFlag,
      originalBusinessDate: line.originalBusinessDate,
      originalLineItemSeq: line.originalLineItemSeq,
      originalPosId: line.originalPosId,
      originalTransSeq: line.originalTransSeq,
      priceEntryMethod: line.priceEntryMethod,
      quantity: line.quantity,
      returnComment: line.returnComment,
      returnFlag: line.returnFlag,
      returnReasonCode: line.returnReasonCode,
      returnTypeCode: line.returnTypeCode,
      returnedQuantity: line.returnedQuantity,
      serialNumber: line.serialNumber,
      taxAmount: line.taxAmount,
      taxGroupId: line.taxGroupId,
      unitPrice: unitPrice,
      vendorId: line.vendorId,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: true,
      priceOverrideAmount: unitPrice,
      priceOverrideReason: reasonCode,
    );
  }

  // TODO Calculate Tax for Sale Line ItemState

  // TODO Calculate Discount for Line Item
}