import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/config/sale_status_codes.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/model/tender_line.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/sequence_repository.dart';
import 'package:receipt_generator/src/repositories/transaction_repository.dart';

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
    // on<OnQuantityUpdate>(_onQuantityUpdate);
    // on<OnUnitPriceUpdate>(_onPriceUpdate);
    on<OnInitiateNewTransaction>(_onInitiateTransaction);
    on<OnCreateNewTransaction>(_onCreateNewTransaction);
    on<OnCustomerSelect>(_onCustomerSelectEvent);
    on<OnAddNewTenderLine>(_onAddNewTenderLineItem);
    on<OnChangeSaleStep>(_onChangeSaleStep);
    on<_VerifyOrderAndEmitState>(_onVerifyOrderAndEmitStep);
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
    print(seq);
    TransactionLineItemEntity newLine = TransactionLineItemEntity(
        storeId: authenticationBloc.state.store!.rtlLocId,
        businessDate: DateTime.now(),
        posId: 1,
        transSeq: state.transSeq,
        lineItemSeq: seq + 1, 
        itemId: event.product.productId!,
        itemDescription: event.product.description,
        quantity: 1,
        grossQuantity: 1,
        netQuantity: 1,
        unitPrice: min(event.product.salePrice ?? 999999.00, event.product.listPrice ?? 999999.00),
        extendedAmount: min(event.product.salePrice ?? 999999.00, event.product.listPrice ?? 999999.00),
        itemIdEntryMethod: EntryMethod.keyboard,
        priceEntryMethod: EntryMethod.keyboard,
        netAmount: min(event.product.salePrice ?? 999999.00, event.product.listPrice ?? 999999.00),
        grossAmount: min(event.product.salePrice ?? 999999.00, event.product.listPrice ?? 999999.00),
        taxGroupId: "TAX_GROUP",
        taxAmount: 0.00);

    // List<SaleTaxModifier> taxModifiers = TaxHelper.calculateTax(newLine);
    // newLine = newLine.copyWith(taxModifier: taxModifiers);

    Map<String, ProductModel> pm = Map.from(state.productMap);
    pm.putIfAbsent(event.product.productId!, () => event.product);

    List<TransactionLineItemEntity> newList = [...state.lineItem, newLine];

    emit(state.copyWith(lineItem: newList, step: CreateSaleStep.item, productMap: pm));
    add(_VerifyOrderAndEmitState());
  }

  // void _onPriceUpdate(
  //     OnUnitPriceUpdate event, Emitter<CreateNewReceiptState> emit) {
  //   List<TransactionLineItemEntity> newList = state.lineItem.map((e) {
  //     if (e == event.saleLine) {
  //       return e.copyWith(price: event.unitPrice);
  //     } else {
  //       return e;
  //     }
  //   }).toList();
  //   emit(state.copyWith(lineItem: newList));
  //   add(_VerifyOrderAndEmitState());
  // }

  // void _onQuantityUpdate(
  //     OnQuantityUpdate event, Emitter<CreateNewReceiptState> emit) {
  //   List<SaleLine> newList = state.lineItem.map((e) {
  //     if (e == event.saleLine) {
  //       return e.copyWith(qty: event.quantity);
  //     } else {
  //       return e;
  //     }
  //   }).toList();
  //   emit(state.copyWith(lineItem: newList));
  //   add(_VerifyOrderAndEmitState());
  // }

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
        total: state.grandTotal,
        taxTotal: state.tax,
        subtotal: state.subTotal,
        roundTotal: 0.00,
        status: SaleStatus.pending,
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
          step: CreateSaleStep.confirmed));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: CreateNewReceiptStatus.error));
    }
    add(_VerifyOrderAndEmitState());
  }

  // void _onCustomerPhoneChange(
  //     OnCustomerPhoneChange event, Emitter<CreateNewReceiptState> emit) async {
  //   emit(state.copyWith(customerPhone: event.phone));
  // }

  // void _onCustomerAddressChange(OnCustomerAddressChange event,
  //     Emitter<CreateNewReceiptState> emit) async {
  //   emit(state.copyWith(customerAddress: event.address));
  // }

  void _onCustomerSelectEvent(
      OnCustomerSelect event, Emitter<CreateNewReceiptState> emit) async {
    emit(state.copyWith(
      customer: event.contact,
    ));
  }

  void _onAddNewTenderLineItem(
      OnAddNewTenderLine event, Emitter<CreateNewReceiptState> emit) async {
    int seq =  state.tenderLine.length;


    TransactionPaymentLineItemEntity newLine = TransactionPaymentLineItemEntity(
      transId: state.transSeq,
      amount: event.amount,
      beginDate: DateTime.now(),
      currencyId: "INR",
      paymentSeq: seq + 1,
      tenderId: event.tenderType,
      tenderStatusCode: "CNF",
      endDate: DateTime.now()
    );

    List<TransactionPaymentLineItemEntity> newList = [...state.tenderLine, newLine];

    emit(state.copyWith(tenderLine: newList));
    add(_VerifyOrderAndEmitState());
  }

  void _onChangeSaleStep(
      OnChangeSaleStep event, Emitter<CreateNewReceiptState> emit) async {
    // @TODO Add logic
    emit(state.copyWith(step: event.step));
  }

  void _onVerifyOrderAndEmitStep(_VerifyOrderAndEmitState event,
      Emitter<CreateNewReceiptState> emit) async {
    if (state.step == CreateSaleStep.confirmed) {
      return;
    }

    if (state.amountDue > 0 && state.step == CreateSaleStep.complete) {
      emit(state.copyWith(step: CreateSaleStep.payment));
    } else if (state.amountDue <= 0 && state.step != CreateSaleStep.complete) {
      emit(state.copyWith(step: CreateSaleStep.complete));
    }
  }
}
