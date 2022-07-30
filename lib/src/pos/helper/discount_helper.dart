import 'dart:math' as math;
import '../../entity/pos/entity.dart';
import '../config/config.dart';
import '../reason_code/reason_code.dart';

class DiscountHelper {
  TransactionLineItemModifierEntity? createNewDiscountOverrideLineModifier(TransactionLineItemEntity lineItem, DiscountEntity discount, String reason) {

    double itemQuantity = lineItem.quantity;
    double rawUnitPrice = lineItem.unitPrice;

    if (DiscountCalculationMethod.percentage.name == discount.discountType) {
      var unitDiscount = lineItem.unitPrice * discount.percent! / 100;

      double unitPrice = lineItem.unitPrice - unitDiscount;
      lineItem.unitPrice = unitPrice;

      return TransactionLineItemModifierEntity(
        storeId: lineItem.storeId,
        businessDate: lineItem.businessDate,
        posId: lineItem.posId,
        transSeq: lineItem.transSeq,
        lineItemSeq: lineItem.lineItemSeq,
        lineItemModSeq: lineItem.lineModifiers.length + 1,
        extendedAmount: unitDiscount * lineItem.quantity,
        amount: unitDiscount * lineItem.quantity,
        percent: discount.percent,
        priceModifierReasonCode: PriceModifierReasonCode.discountPercent.code,
        description: discount.description,
        discountCode: discount.discountCode,
        discountReasonCode: reason,
      );
    } else if (DiscountCalculationMethod.amount.name == discount.discountType) {

      var rawUnitDiscount = discount.amount! / itemQuantity;
      var unitDiscount = math.min(rawUnitDiscount, lineItem.unitPrice);

      double unitPrice = lineItem.unitPrice - unitDiscount;
      lineItem.unitPrice = unitPrice;

      return TransactionLineItemModifierEntity(
        storeId: lineItem.storeId,
        businessDate: lineItem.businessDate,
        posId: lineItem.posId,
        transSeq: lineItem.transSeq,
        lineItemSeq: lineItem.lineItemSeq,
        lineItemModSeq: lineItem.lineModifiers.length + 1,
        extendedAmount: unitDiscount * lineItem.quantity,
        amount: unitDiscount * lineItem.quantity,
        priceModifierReasonCode: PriceModifierReasonCode.discountAmount.code,
        description: discount.description,
        discountCode: discount.discountCode,
        discountReasonCode: reason,
      );
    } else if (DiscountCalculationMethod.group.name == discount.discountType) {

    }
    return null;
  }
}