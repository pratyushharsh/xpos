import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/config/sale_status_codes.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/sequence_repository.dart';
import 'package:receipt_generator/src/repositories/transaction_repository.dart';

import '../../../pos/config/config.dart';
import '../../../pos/helper/discount_helper.dart';
import '../../../pos/helper/transaction_helper.dart';
import '../../return_order/bloc/return_order_bloc.dart';

part 'create_new_receipt_event.dart';
part 'create_new_receipt_state.dart';

class CreateNewReceiptBloc
    extends Bloc<CreateNewReceiptEvent, CreateNewReceiptState> {
  final log = Logger('CreateNewReceiptBloc');
  final Isar db;
  final AuthenticationBloc authenticationBloc;
  final SequenceRepository sequenceRepository;
  final TransactionRepository transactionRepository;

  CreateNewReceiptBloc(
      {required this.db,
        required this.transactionRepository,
        required this.authenticationBloc,
        required this.sequenceRepository})
      : super(const CreateNewReceiptState(
      status: CreateNewReceiptStatus.initial)) {
    on<AddItemToReceipt>(_onAddNewLineItem);
    on<OnQuantityUpdate>(_onQuantityUpdate);
    on<OnUnitPriceUpdate>(_onPriceUpdate);
    on<OnApplyLineItemDiscountAmount>(_onLineItemDiscountAmount);
    on<OnApplyLineItemDiscountPercent>(_onLineItemDiscountPercent);
    on<OnChangeLineItemTaxAmount>(_onChangeLineItemTaxAmount);
    on<OnChangeLineItemTaxPercent>(_onChangeLineItemTaxPercent);
    on<OnInitiateNewTransaction>(_onInitiateTransaction);
    on<OnCreateNewTransaction>(_onCreateNewTransaction);
    on<OnCustomerSelect>(_onCustomerSelectEvent);
    on<OnCustomerRemove>(_onCustomerRemoveEvent);
    on<OnAddNewTenderLine>(_onAddNewTenderLineItem);
    on<OnChangeSaleStep>(_onChangeSaleStep);
    on<_VerifyOrderAndEmitState>(_onVerifyOrderAndEmitStep);

    on<OnReturnLineItemEvent>(_onReturnLineItem);
  }

  void _onInitiateTransaction(OnInitiateNewTransaction event,
      Emitter<CreateNewReceiptState> emit) async {
    var newSeq =
        (await sequenceRepository.getNextSequence(SequenceType.trans)).nextSeq;
    emit(state.copyWith(transSeq: newSeq));
  }

  void _onAddNewLineItem(
      AddItemToReceipt event, Emitter<CreateNewReceiptState> emit) async {
    assert(event.product.productId != null);
    int seq = state.lineItem.length + state.tenderLine.length;

    // SaleLine newLine = SaleLine(
    //     seq: seq + 1,
    //     product: event.product,
    //     price: event.product.listPrice ?? 0.00);
    // @TODO Change the business date from DateTime.now() to actual business date.
    // @TODO Change the pos id also
    // @TODO Change the entry method also
    TransactionLineItemEntity newLine = TransactionLineItemEntity(
        storeId: authenticationBloc.state.store!.rtlLocId,
        businessDate: DateTime.now(),
        posId: 1,
        transSeq: state.transSeq,
        lineItemSeq: seq + 1,
        itemId: event.product.productId!,
        itemDescription: event.product.displayName,
        quantity: 1,
        grossQuantity: 1,
        netQuantity: 1,
        uom: event.product.uom,
        unitPrice: min(event.product.salePrice ?? 999999.00,
            event.product.listPrice ?? 999999.00),
        extendedAmount: min(event.product.salePrice ?? 999999.00,
            event.product.listPrice ?? 999999.00),
        itemIdEntryMethod: EntryMethod.keyboard,
        priceEntryMethod: EntryMethod.keyboard,
        netAmount: min(event.product.salePrice ?? 999999.00,
            event.product.listPrice ?? 999999.00),
        grossAmount: min(event.product.salePrice ?? 999999.00,
            event.product.listPrice ?? 999999.00),
        taxGroupId: "TAX_GROUP",
        taxAmount: 0.00);

    // List<SaleTaxModifier> taxModifiers = TaxHelper.calculateTax(newLine);
    // newLine = newLine.copyWith(taxModifier: taxModifiers);

    Map<String, ProductEntity> pm = Map.from(state.productMap);
    pm.putIfAbsent(event.product.productId!, () => event.product);

    List<TransactionLineItemEntity> newList = [...state.lineItem, newLine];

    emit(state.copyWith(
        lineItem: newList, step: SaleStep.item, productMap: pm));
    add(_VerifyOrderAndEmitState());
  }

  // @TODO List different transaction status INITIATED, SALE_COMPLETED, SUSPENDED, CANCELLED, RETURNED, EXCHANGED
  void _onCreateNewTransaction(
      OnCreateNewTransaction event, Emitter<CreateNewReceiptState> emit) async {
    int? storeId = authenticationBloc.state.store?.rtlLocId;
    if (storeId == null) throw Exception("Store Not Found");

    TransactionHeaderEntity header = TransactionHeaderEntity(
        transId: state.transSeq,
        businessDate: DateTime.now(),
        beginDatetime: DateTime.now(),
        transactionType: TransactionType.cashSale,
        total: state.subTotal,
        taxTotal: state.tax,
        subtotal: state.subTotal,
        roundTotal: 0.00,
        discountTotal: 0.00,
        status: SaleStatus.completed,
        customerId: state.customer?.contactId,
        customerName: state.customer?.name,
        customerPhone: state.customer?.phoneNumber,
        shippingAddress: state.customer?.shippingAddress,
        storeId: storeId,
        createTime: DateTime.now());
    List<TransactionLineItemEntity> lineItems = state.lineItem;

    // Create If Contact Does not exist else override
    if (state.customer != null) {
      try {
        db.writeTxn((isar) async {
          if (state.customer != null) {
            await isar.contactEntitys.put(state.customer!);
          }
        });
      } catch (e) {
        log.severe(e);
      }
    }

    try {
      header.lineItems.addAll(lineItems);
      header.paymentLineItems.addAll(state.tenderLine.toList());
      await transactionRepository.createNewSale(header);
      emit(state.copyWith(
          status: CreateNewReceiptStatus.saleComplete,
          step: SaleStep.printAndEmail));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: CreateNewReceiptStatus.error));
    }
    // add(_VerifyOrderAndEmitState());
  }

  void _onCustomerSelectEvent(
      OnCustomerSelect event, Emitter<CreateNewReceiptState> emit) async {
    emit(state.copyWith(
      customer: event.contact,
    ));
  }

  void _onCustomerRemoveEvent(
      OnCustomerRemove event, Emitter<CreateNewReceiptState> emit) async {
    emit(state.copyWith(
      customer: null,
      customerAction: CustomerAction.remove
    ));
  }

  void _onQuantityUpdate(
      OnQuantityUpdate event, Emitter<CreateNewReceiptState> emit) async {
    List<TransactionLineItemEntity> newList = [];
    for (var line in state.lineItem) {
      if (line == event.saleLine) {
        TransactionLineItemEntity newLine =
        TransactionHelper.changeLineItemQuantity(
            line, event.quantity, event.reason);
        newList.add(newLine);
      } else {
        newList.add(line);
      }
    }
    emit(state.copyWith(lineItem: newList));
  }

  void _onPriceUpdate(
      OnUnitPriceUpdate event, Emitter<CreateNewReceiptState> emit) async {
    List<TransactionLineItemEntity> newList = [];
    for (var line in state.lineItem) {
      if (line == event.saleLine) {
        TransactionLineItemEntity newLineEntity =
        TransactionHelper.updateSaleReturnLineItemPrice(
            line, event.unitPrice, event.reason);
        newList.add(newLineEntity);
      } else {
        newList.add(line);
      }
    }
    emit(state.copyWith(lineItem: newList));
  }

  void _onLineItemDiscountAmount(OnApplyLineItemDiscountAmount event,
      Emitter<CreateNewReceiptState> emit) async {
    List<TransactionLineItemEntity> newList = [];
    for (var line in state.lineItem) {
      if (line == event.saleLine) {
        DiscountEntity discount = DiscountEntity(
            discountId: 'DUMMY_DISCOUNT_ID',
            amount: event.discountAmount,
            discountType: DiscountCalculationMethod.amount.name,
            description: '\$ ${event.discountAmount} OFF',
            discountCode: 'MANUAL_DISCOUNT_CODE');

        TransactionLineItemModifierEntity? discountLine =
        DiscountHelper.createNewDiscountLineModifier(
            line, discount, event.reason);
        if (discountLine != null) {
          TransactionLineItemEntity newLineEntity =
          TransactionHelper.addNewLineItemModifier(line, discountLine);
          newList.add(newLineEntity);
        } else {
          newList.add(line);
        }
      } else {
        newList.add(line);
      }
    }
    emit(state.copyWith(lineItem: newList));
  }

  void _onLineItemDiscountPercent(OnApplyLineItemDiscountPercent event,
      Emitter<CreateNewReceiptState> emit) async {
    List<TransactionLineItemEntity> newList = [];
    for (var line in state.lineItem) {
      if (line == event.saleLine) {
        DiscountEntity discount = DiscountEntity(
            discountId: 'DUMMY_DISCOUNT_ID',
            percent: event.discountPercent,
            discountType: DiscountCalculationMethod.percentage.name,
            description: '${event.discountPercent} % Discount OFF',
            discountCode: 'MANUAL_DISCOUNT_CODE');

        TransactionLineItemModifierEntity? discountLine =
        DiscountHelper.createNewDiscountLineModifier(
            line, discount, event.reason);
        if (discountLine != null) {
          TransactionLineItemEntity newLineEntity =
          TransactionHelper.addNewLineItemModifier(line, discountLine);
          newList.add(newLineEntity);
        } else {
          newList.add(line);
        }
      } else {
        newList.add(line);
      }
    }
    emit(state.copyWith(lineItem: newList));
  }

  void _onChangeLineItemTaxAmount(OnChangeLineItemTaxAmount event,
      Emitter<CreateNewReceiptState> emit) async {
    List<TransactionLineItemEntity> newList = [];
    for (var line in state.lineItem) {
      if (line == event.saleLine) {
        TransactionLineItemEntity newLineEntity =
        TransactionHelper.changeLineItemTax(
            line, event.taxAmount, event.reason,
            taxApplicationMethod: TaxApplicationMethod.all,
            taxCalculationMethod: TaxCalculationMethod.amount
        );
        newList.add(newLineEntity);
      } else {
        newList.add(line);
      }
    }
    emit(state.copyWith(lineItem: newList));
  }

  void _onChangeLineItemTaxPercent(OnChangeLineItemTaxPercent event,
      Emitter<CreateNewReceiptState> emit) async {
    List<TransactionLineItemEntity> newList = [];
    for (var line in state.lineItem) {
      if (line == event.saleLine) {
        TransactionLineItemEntity newLineEntity =
        TransactionHelper.changeLineItemTax(
            line, event.taxPercent, event.reason,
            taxApplicationMethod: TaxApplicationMethod.all,
            taxCalculationMethod: TaxCalculationMethod.percentage
        );
        newList.add(newLineEntity);
      } else {
        newList.add(line);
      }
    }
    emit(state.copyWith(lineItem: newList));
  }

  void _onAddNewTenderLineItem(
      OnAddNewTenderLine event, Emitter<CreateNewReceiptState> emit) async {
    int seq = state.tenderLine.length;

    TransactionPaymentLineItemEntity newLine = TransactionPaymentLineItemEntity(
        transId: state.transSeq,
        amount: event.amount,
        beginDate: DateTime.now(),
        currencyId: "INR",
        paymentSeq: seq + 1,
        tenderId: event.tenderType,
        tenderStatusCode: "CNF",
        endDate: DateTime.now());

    List<TransactionPaymentLineItemEntity> newList = [
      ...state.tenderLine,
      newLine
    ];

    emit(state.copyWith(tenderLine: newList));
    add(_VerifyOrderAndEmitState());
  }

  void _onChangeSaleStep(
      OnChangeSaleStep event, Emitter<CreateNewReceiptState> emit) async {
    // @TODO Add logic to handle the change of sale step
    if (state.amountDue <= 0 && event.step == SaleStep.complete) {
      add(OnCreateNewTransaction());
    } else {
      emit(state.copyWith(step: event.step));
    }
  }

  void _onVerifyOrderAndEmitStep(_VerifyOrderAndEmitState event,
      Emitter<CreateNewReceiptState> emit) async {
    if (state.step == SaleStep.confirmed) {
      return;
    }

    if (state.amountDue > 0 && state.step == SaleStep.complete) {
      emit(state.copyWith(step: SaleStep.payment));
    } else if (state.amountDue <= 0 && state.step != SaleStep.complete) {
      emit(state.copyWith(step: SaleStep.complete));
    }
  }

  void _onReturnLineItem(
      OnReturnLineItemEvent event, Emitter<CreateNewReceiptState> emit) async {
    // Create a new Return Line Item
    int seq = state.lineItem.length + state.tenderLine.length;

    List<TransactionLineItemEntity> newList = [...state.lineItem];
    Map<String, ProductEntity> pm = Map.from(state.productMap);

    for (var line in event.returnMap.keys) {
      var returnData = event.returnMap[line];
      var returnLine = TransactionLineItemEntity(
        storeId: line.storeId,
        businessDate: DateTime.now(),
        posId: line.posId,
        extendedAmount: -line.extendedAmount,
        grossAmount: -line.grossAmount,
        grossQuantity: line.grossQuantity,
        netQuantity: line.netQuantity,
        itemDescription: line.itemDescription,
        itemId: line.itemId,
        itemIdEntryMethod: line.itemIdEntryMethod,
        lineItemSeq: ++seq,
        netAmount: -line.netAmount,
        nonExchangeableFlag: line.nonExchangeableFlag,
        nonReturnableFlag: line.nonReturnableFlag,
        originalBusinessDate: line.businessDate,
        originalLineItemSeq: line.lineItemSeq,
        originalPosId: line.posId,
        originalTransSeq: line.transSeq,
        priceEntryMethod: line.priceEntryMethod,
        quantity: line.quantity,
        // @TODO Add Returned Comment
        returnComment: "RETURN COMMENT",
        returnFlag: true,
        returnReasonCode: returnData!.reasonCode.toString(),
        returnTypeCode: line.returnTypeCode,
        returnedQuantity: line.quantity,
        serialNumber: line.serialNumber,
        taxAmount: line.taxAmount,
        taxGroupId: line.taxGroupId,
        unitPrice: -line.unitPrice,
        vendorId: line.vendorId,
        uom: line.uom,
        shippingWeight: line.shippingWeight, transSeq: state.transSeq,
      );
      newList.add(returnLine);

      ProductEntity? pe = db.productEntitys
          .where()
          .productIdEqualTo(line.itemId)
          .findFirstSync();
      if (pe != null) {
        pm.putIfAbsent(line.itemId, () => pe);
      }
    }

    emit(state.copyWith(
        lineItem: newList, step: SaleStep.item, productMap: pm));
    // add(_VerifyOrderAndEmitState());
  }
}
