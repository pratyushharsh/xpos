import '../../entity/pos/entity.dart';
import '../config/config.dart';

class TransactionHelper {

  static TransactionLineItemEntity updateSaleReturnLineItemPrice(
      TransactionLineItemEntity line, double unitPrice, String reasonCode) {
    // Calculate all the amount again for the item and assign
    double discountAmount = 0.00;

    double grossAmount = unitPrice * line.quantity;
    double netAmount = grossAmount - discountAmount;

    // @TODO Recalculate the tax based on the new discount amount
    double unitTaxAmount = line.taxAmount / line.quantity;
    double taxAmt = unitTaxAmount * line.quantity;

    double extendedAmount = netAmount + taxAmt;

    TransactionLineItemEntity res = TransactionLineItemEntity(
      storeId: line.storeId,
      businessDate: line.businessDate,
      posId: line.posId,
      extendedAmount: extendedAmount,
      grossAmount: grossAmount,
      taxAmount: taxAmt,
      netAmount: netAmount,
      discountAmount: discountAmount,
      grossQuantity: line.grossQuantity,
      itemDescription: line.itemDescription,
      itemId: line.itemId,
      itemIdEntryMethod: line.itemIdEntryMethod,
      lineItemSeq: line.lineItemSeq,
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
      taxGroupId: line.taxGroupId,
      unitPrice: unitPrice,
      vendorId: line.vendorId,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: true,
      uom: line.uom,
      priceOverrideAmount: unitPrice,
      priceOverrideReason: reasonCode,
    );
    return res;
  }

  ///
  /// On addition of new ine item modifier amount discounted will changes
  /// based on that tax needs to recalculated again and
  /// extended amount will be recalculated again.
  ///
  static TransactionLineItemEntity addNewLineItemModifier(
      TransactionLineItemEntity line,
      TransactionLineItemModifierEntity modifier) {
    // Calculate all the amount again for the item and assign
    double discountAmount = line.lineModifiers.fold(modifier.amount,
        (previousValue, element) => previousValue + element.amount);

    double grossAmount = line.unitPrice * line.quantity;
    double netAmount = grossAmount - discountAmount;

    // @TODO Recalculate the tax based on the new discount amount
    double unitTaxAmount = line.taxAmount / line.quantity;
    double taxAmt = unitTaxAmount * line.quantity;

    double extendedAmount = netAmount + taxAmt;

    TransactionLineItemEntity modifiedLine = TransactionLineItemEntity(
      storeId: line.storeId,
      businessDate: line.businessDate,
      posId: line.posId,
      extendedAmount: extendedAmount,
      grossAmount: grossAmount,
      taxAmount: taxAmt,
      netAmount: netAmount,
      discountAmount: discountAmount,
      grossQuantity: line.grossQuantity,
      itemDescription: line.itemDescription,
      itemId: line.itemId,
      itemIdEntryMethod: line.itemIdEntryMethod,
      lineItemSeq: line.lineItemSeq,
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
      taxGroupId: line.taxGroupId,
      unitPrice: line.unitPrice,
      vendorId: line.vendorId,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: line.priceOverride,
      uom: line.uom,
      priceOverrideAmount: line.priceOverrideAmount,
      priceOverrideReason: line.priceOverrideReason,
    );
    modifiedLine.lineModifiers.addAll(line.lineModifiers);
    modifiedLine.lineModifiers.add(modifier);
    return modifiedLine;
  }

  static TransactionLineItemEntity changeLineItemTax(
      TransactionLineItemEntity line, double taxAmount, String reasonCode,
      {required TaxCalculationMethod taxCalculationMethod,
      required TaxApplicationMethod taxApplicationMethod}) {
    // Calculate all the amount again for the item and assign
    double discountAmount = line.discountAmount;
    double unitPrice = line.unitPrice;

    double grossAmount = unitPrice * line.quantity;
    double netAmount = grossAmount - discountAmount;

    // @TODO Recalculate the tax based on the new discount amount
    double unitTaxAmount = taxAmount;
    if (TaxCalculationMethod.percentage == taxCalculationMethod) {
      unitTaxAmount = unitPrice * taxAmount / 100;
    } else if (TaxCalculationMethod.amount == taxCalculationMethod) {
      unitTaxAmount = taxAmount;
    }

    double taxAmt = unitTaxAmount * line.quantity;

    double extendedAmount = netAmount + taxAmt;

    TransactionLineItemEntity res = TransactionLineItemEntity(
      storeId: line.storeId,
      businessDate: line.businessDate,
      posId: line.posId,
      extendedAmount: extendedAmount,
      grossAmount: grossAmount,
      taxAmount: taxAmt,
      netAmount: netAmount,
      discountAmount: discountAmount,
      grossQuantity: line.grossQuantity,
      itemDescription: line.itemDescription,
      itemId: line.itemId,
      itemIdEntryMethod: line.itemIdEntryMethod,
      lineItemSeq: line.lineItemSeq,
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
      taxGroupId: line.taxGroupId,
      unitPrice: line.unitPrice,
      vendorId: line.vendorId,
      uom: line.uom,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: line.priceOverride,
      priceOverrideAmount: line.priceOverrideAmount,
      priceOverrideReason: line.priceOverrideReason,
    );
    res.lineModifiers.addAll(line.lineModifiers);
    return res;
  }

  static TransactionLineItemEntity changeLineItemQuantity(
      TransactionLineItemEntity line, double quantity, String reasonCode) {
    // Calculate all the amount again for the item and assign
    double discountAmount = 0.0;

    double grossAmount = line.unitPrice * quantity;
    double netAmount = grossAmount - discountAmount;

    // @TODO Recalculate the tax based on the new discount amount
    double unitTaxAmount = line.taxAmount / line.quantity;
    double taxAmt = unitTaxAmount * quantity;

    double extendedAmount = netAmount + taxAmt;

    TransactionLineItemEntity res = TransactionLineItemEntity(
      storeId: line.storeId,
      businessDate: line.businessDate,
      posId: line.posId,
      extendedAmount: extendedAmount,
      grossAmount: grossAmount,
      netAmount: netAmount,
      taxAmount: taxAmt,
      discountAmount: discountAmount,
      grossQuantity: line.grossQuantity,
      itemDescription: line.itemDescription,
      itemId: line.itemId,
      itemIdEntryMethod: line.itemIdEntryMethod,
      lineItemSeq: line.lineItemSeq,
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
      taxGroupId: line.taxGroupId,
      unitPrice: line.unitPrice,
      vendorId: line.vendorId,
      uom: line.uom,
      shippingWeight: line.shippingWeight,
      transSeq: line.transSeq,
      priceOverride: line.priceOverride,
      priceOverrideAmount: line.priceOverrideAmount,
      priceOverrideReason: line.priceOverrideReason,
    );
    return res;
  }
}
