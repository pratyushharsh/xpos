import '../../entity/pos/entity.dart';
import '../../entity/pos/trn_line_item_modifier.dart';

class TransactionHelper {

  static TransactionLineItemEntity copyLineItem(TransactionLineItemEntity line) {
    return TransactionLineItemEntity(
      storeId: line.storeId,
      businessDate: line.businessDate,
      posId: line.posId,
      extendedAmount: line.extendedAmount,
      grossAmount: line.grossAmount,
      grossQuantity: line.grossQuantity,
      itemDescription: line.itemDescription,
      itemId: line.itemId,
      itemIdEntryMethod: line.itemIdEntryMethod,
      lineItemSeq: line.lineItemSeq,
      netAmount: line.netAmount,
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
      unitPrice: line.unitPrice,
      vendorId: line.vendorId,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: line.priceOverride,
      priceOverrideAmount: line.priceOverrideAmount,
      priceOverrideReason: line.priceOverrideReason,
    );
  }

  static TransactionLineItemEntity updateSaleReturnLineItemPrice(TransactionLineItemEntity line, double unitPrice, String reasonCode) {

    double unitTaxAmount = line.taxAmount / line.quantity;

    double grossAmount = unitPrice * line.quantity;
    double taxAmount = unitTaxAmount * line.quantity;
    double extendedAmount = grossAmount - line.discountAmount + taxAmount;
    double netAmount = grossAmount;

    TransactionLineItemEntity res = TransactionLineItemEntity(
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
      taxAmount: taxAmount,
      taxGroupId: line.taxGroupId,
      unitPrice: unitPrice,
      vendorId: line.vendorId,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: true,
      priceOverrideAmount: unitPrice,
      priceOverrideReason: reasonCode,
    );
    return res;
  }

  static TransactionLineItemEntity addNewLineItemDiscount(TransactionLineItemEntity line, double discountAmount, String reasonCode) {
    TransactionLineItemModifierEntity modifier = TransactionLineItemModifierEntity(
      amount: discountAmount,
      lineItemSeq: line.lineItemSeq,
      posId: line.posId,
      storeId: line.storeId,
      transSeq: line.transSeq,
      businessDate: DateTime.now(),
      category: "Discount",
      description: "Amount Discount",
      lineItemModSeq: line.lineModifiers.length + 1,
    );

    TransactionLineItemEntity modifiedLine = TransactionLineItemEntity(
      storeId: line.storeId,
      businessDate: line.businessDate,
      posId: line.posId,
      extendedAmount: line.extendedAmount,
      grossAmount: line.grossAmount,
      grossQuantity: line.grossQuantity,
      itemDescription: line.itemDescription,
      itemId: line.itemId,
      itemIdEntryMethod: line.itemIdEntryMethod,
      lineItemSeq: line.lineItemSeq,
      netAmount: line.netAmount,
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
      unitPrice: line.unitPrice,
      vendorId: line.vendorId,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: line.priceOverride,
      priceOverrideAmount: line.priceOverrideAmount,
      priceOverrideReason: line.priceOverrideReason,
      discountAmount: line.lineModifiers.fold(discountAmount,
              (previousValue, element) => previousValue + element.amount)
    );
    modifiedLine.lineModifiers.addAll(line.lineModifiers);
    modifiedLine.lineModifiers.add(modifier);
    return modifiedLine;
  }

  static TransactionLineItemEntity changeLineItemTax(TransactionLineItemEntity line, double taxAmount, String reasonCode) {


    double grossAmount = line.unitPrice * line.quantity;
    double taxAmt = taxAmount * line.quantity;
    double extendedAmount = grossAmount - line.discountAmount + taxAmt;
    double netAmount = grossAmount;
    double discountAmount = line.discountAmount;

    TransactionLineItemEntity res = TransactionLineItemEntity(
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
      taxAmount: taxAmt,
      discountAmount: discountAmount,
      taxGroupId: line.taxGroupId,
      unitPrice: line.unitPrice,
      vendorId: line.vendorId,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: line.priceOverride,
      priceOverrideAmount: line.priceOverrideAmount,
      priceOverrideReason: line.priceOverrideReason,
    );
    res.lineModifiers.addAll(line.lineModifiers);
    return res;
  }

  static TransactionLineItemEntity changeLineItemQuantity(TransactionLineItemEntity line, double quantity, String reasonCode) {

    double unitTaxAmount = line.taxAmount / line.quantity;
    double grossAmount = line.unitPrice * quantity;
    double taxAmt = unitTaxAmount * quantity;
    double extendedAmount = grossAmount - line.discountAmount + taxAmt;
    double netAmount = grossAmount;
    double discountAmount = line.discountAmount;

    TransactionLineItemEntity res = TransactionLineItemEntity(
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
      quantity: quantity,
      returnComment: line.returnComment,
      returnFlag: line.returnFlag,
      returnReasonCode: line.returnReasonCode,
      returnTypeCode: line.returnTypeCode,
      returnedQuantity: line.returnedQuantity,
      serialNumber: line.serialNumber,
      taxAmount: taxAmt,
      discountAmount: discountAmount,
      taxGroupId: line.taxGroupId,
      unitPrice: line.unitPrice,
      vendorId: line.vendorId,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: line.priceOverride,
      priceOverrideAmount: line.priceOverrideAmount,
      priceOverrideReason: line.priceOverrideReason,
    );
    res.lineModifiers.addAll(line.lineModifiers);
    return res;
  }
}