import 'dart:io';

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
import 'package:receipt_generator/src/repositories/contact_repository.dart';
import 'package:receipt_generator/src/repositories/sequence_repository.dart';
import 'package:receipt_generator/src/repositories/transaction_repository.dart';
import 'package:receipt_generator/src/util/helper/tax_helper.dart';

part 'create_new_receipt_event.dart';
part 'create_new_receipt_state.dart';

class CreateNewReceiptBloc
    extends Bloc<CreateNewReceiptEvent, CreateNewReceiptState> {
  final log = Logger('CreateNewReceiptBloc');
  final Isar db;
  final AuthenticationBloc authenticationBloc;
  final ContactRepository contactDb;
  final SequenceRepository sequenceRepository;
  final TransactionRepository transactionRepository;

  CreateNewReceiptBloc(
      {required this.db,
      required this.contactDb,
      required this.transactionRepository,
      required this.authenticationBloc,
      required this.sequenceRepository})
      : super(const CreateNewReceiptState(
            status: CreateNewReceiptStatus.initial)) {
    on<AddItemToReceipt>(_onAddNewLineItem);
    on<OnQuantityUpdate>(_onQuantityUpdate);
    on<OnUnitPriceUpdate>(_onPriceUpdate);
    on<OnInitiateNewTransaction>(_onInitiateTransaction);
    on<OnCreateNewTransaction>(_onCreateNewTransaction);
    // on<OnCustomerNameChange>(_onCustomerNameChange);
    // on<OnCustomerPhoneChange>(_onCustomerPhoneChange);
    // on<OnCustomerAddressChange>(_onCustomerAddressChange);
    // on<OnSuggestedCustomerSelect>(_onSuggestedCustomerSelectEvent);
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
    int seq = state.lineItem.length + state.tenderLine.length;

    SaleLine newLine = SaleLine(
        seq: seq + 1,
        product: event.product,
        price: event.product.listPrice ?? 0.00);

    List<SaleTaxModifier> taxModifiers = TaxHelper.calculateTax(newLine);
    newLine = newLine.copyWith(taxModifier: taxModifiers);

    List<SaleLine> newList = [...state.lineItem, newLine];

    emit(state.copyWith(lineItem: newList, step: CreateSaleStep.item));
    add(_VerifyOrderAndEmitState());
  }

  void _onPriceUpdate(
      OnUnitPriceUpdate event, Emitter<CreateNewReceiptState> emit) {
    List<SaleLine> newList = state.lineItem.map((e) {
      if (e == event.saleLine) {
        return e.copyWith(price: event.unitPrice);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(lineItem: newList));
    add(_VerifyOrderAndEmitState());
  }

  void _onQuantityUpdate(
      OnQuantityUpdate event, Emitter<CreateNewReceiptState> emit) {
    List<SaleLine> newList = state.lineItem.map((e) {
      if (e == event.saleLine) {
        return e.copyWith(qty: event.quantity);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(lineItem: newList));
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
        total: state.grandTotal,
        taxTotal: state.tax,
        subtotal: state.subTotal,
        roundTotal: 0.00,
        status: SaleStatus.pending,
        customerId: state.selectedCustomer?.contactId,
        customerName: state.selectedCustomer?.name,
        customerPhone: state.selectedCustomer?.phoneNumber,
        shippingAddress: state.selectedCustomer?.shippingAddress,
        storeId: storeId,
        createTime: DateTime.now());
    List<TransactionLineItemEntity> lineItems =
        state.lineItem.map((e) => e.toEntity(state.transSeq)).toList();

    // Create If Contact Does not exist else override
    if (state.selectedCustomer != null) {
      try {
        db.writeTxn((isar) async {
          if (state.selectedCustomer != null) {
            await isar.contactEntitys.put(state.selectedCustomer!);
          }
        });
      } catch (e) {
        log.severe(e);
      }
    }

    try {
      await transactionRepository.createNewSale(header, lineItems);
      emit(state.copyWith(status: CreateNewReceiptStatus.saleComplete, step: CreateSaleStep.confirmed));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: CreateNewReceiptStatus.error));
    }
    add(_VerifyOrderAndEmitState());
  }

  // void _onCustomerNameChange(
  //     OnCustomerNameChange event, Emitter<CreateNewReceiptState> emit) async {
  //   try {
  //     if (event.name != null && event.name!.isNotEmpty) {
  //       var customer = await db.contactEntitys
  //           .filter()
  //           .nameContains('${event.name}', caseSensitive: false)
  //           .findAll();
  //
  //       var contacts = <ContactEntity>[];
  //       if (Platform.isIOS || Platform.isAndroid) {
  //         contacts = await contactDb.getContact();
  //       }
  //       log.info("${contacts.length} contacts found.");
  //       var x = contacts
  //           .where((con) {
  //             if (event.name != null) {
  //               if (con.name
  //                   .toLowerCase()
  //                   .contains(event.name!.toLowerCase())) {
  //                 return true;
  //               }
  //               return false;
  //             } else {
  //               return true;
  //             }
  //           })
  //           .take(5)
  //           .toList();
  //       emit(state.copyWith(
  //           customerSuggestion: customer,
  //           selectedCustomer: null,
  //           customerSearchState: CustomerSearchState.searching,
  //           phoneContactSuggestion: x));
  //     }
  //   } catch (e) {
  //     log.severe(e);
  //   }
  // }

  // void _onCustomerPhoneChange(
  //     OnCustomerPhoneChange event, Emitter<CreateNewReceiptState> emit) async {
  //   emit(state.copyWith(customerPhone: event.phone));
  // }

  // void _onCustomerAddressChange(OnCustomerAddressChange event,
  //     Emitter<CreateNewReceiptState> emit) async {
  //   emit(state.copyWith(customerAddress: event.address));
  // }

  // void _onSuggestedCustomerSelectEvent(OnSuggestedCustomerSelect event,
  //     Emitter<CreateNewReceiptState> emit) async {
  //   emit(state.copyWith(
  //       customerSuggestion: List.empty(),
  //       customerId: event.contact.contactId,
  //       customerPhone: event.contact.phoneNumber,
  //       customerName: event.contact.name,
  //       selectedCustomer: event.contact,
  //       customerSearchState: CustomerSearchState.selected,
  //       customerAddress: event.contact.shippingAddress));
  // }

  void _onAddNewTenderLineItem(
      OnAddNewTenderLine event, Emitter<CreateNewReceiptState> emit) async {
    int seq = state.lineItem.length + state.tenderLine.length;

    TenderLineItem newLine = TenderLineItem(
        transSeq: state.transSeq,
        lineItemSequence: seq + 1,
        beginDate: DateTime.now(),
        amount: event.amount,
        currencyId: "INR",
        tenderId: event.tenderType,
        tenderStatusCode: "CNF");

    List<TenderLineItem> newList = [...state.tenderLine, newLine];

    emit(state.copyWith(tenderLine: newList));
    add(_VerifyOrderAndEmitState());
  }

  void _onChangeSaleStep(
      OnChangeSaleStep event, Emitter<CreateNewReceiptState> emit) async {
    // @TODO Add logic
    emit(state.copyWith(step: event.step));
  }

  void _onVerifyOrderAndEmitStep(
      _VerifyOrderAndEmitState event, Emitter<CreateNewReceiptState> emit) async {
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
