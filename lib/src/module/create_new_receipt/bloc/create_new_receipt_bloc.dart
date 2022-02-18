
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/config/sale_status_codes.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'create_new_receipt_event.dart';
part 'create_new_receipt_state.dart';

class CreateNewReceiptBloc
    extends Bloc<CreateNewReceiptEvent, CreateNewReceiptState> {
  final log = Logger('CreateNewReceiptBloc');
  final AppDatabase db;

  CreateNewReceiptBloc({required this.db})
      : super(CreateNewReceiptState(status: CreateNewReceiptStatus.initial)) {
    on<AddItemToReceipt>(_onAddNewLineItem);
    on<OnQuantityUpdate>(_onQuantityUpdate);
    on<OnUnitPriceUpdate>(_onPriceUpdate);
    on<OnInitiateNewTransaction>(_onInitiateTransaction);
    on<OnCreateNewTransaction>(_onCreateNewTransaction);
    on<OnCustomerNameChange>(_onCustomerNameChange);
    on<OnCustomerPhoneChange>(_onCustomerPhoneChange);
    on<OnCustomerAddressChange>(_onCustomerAddressChange);
    on<OnSuggestedCustomerSelect>(_onSuggestedCustomerSelectEvent);
  }

  void _onInitiateTransaction(OnInitiateNewTransaction event,
      Emitter<CreateNewReceiptState> emit) async {
    var newSeq = await db.sequenceDao.getNextSequence("RECEIPT_ID");
    emit(state.copyWith(transSeq: newSeq.nextSeq));
  }

  void _onAddNewLineItem(
      AddItemToReceipt event, Emitter<CreateNewReceiptState> emit) async {
    SaleLine newLine = SaleLine(
        seq: state.lineItem.length + 1,
        product: event.product,
        price: event.product.listPrice!);
    List<SaleLine> newList = [...state.lineItem, newLine];
    emit(state.copyWith(lineItem: newList));
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
  }

  // @TODO List different transaction status INITIATED, SALE_COMPLETED, SUSPENDED, CANCELLED, RETURNED, EXCHANGED
  void _onCreateNewTransaction(
      OnCreateNewTransaction event, Emitter<CreateNewReceiptState> emit) async {
    TransactionHeaderEntity header = TransactionHeaderEntity(
        transId: state.transSeq,
        businessDate: DateTime.now().microsecondsSinceEpoch,
        beginDatetime: DateTime.now().microsecondsSinceEpoch,
        total: state.grandTotal,
        taxTotal: state.tax,
        subtotal: state.subTotal,
        roundTotal: 0.00,
        status: SaleStatus.pending,
        customerId: state.customerId,
        customerName: state.customerName,
        customerPhone: state.customerPhone,
        customerAddress: state.customerAddress);
    List<TransactionLineItemEntity> lineItems =
        state.lineItem.map((e) => e.toEntity(state.transSeq)).toList();

    try {
      await db.transactionDao.createNewSale(header, lineItems);
      emit(state.copyWith(status: CreateNewReceiptStatus.paymentAwaiting));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: CreateNewReceiptStatus.error));
    }
  }

  void _onCustomerNameChange(
      OnCustomerNameChange event, Emitter<CreateNewReceiptState> emit) async {
    try {
      if (event.name != null && event.name!.isNotEmpty) {
        var customer =
            await db.contactDao.findAllProductsByName('%${event.name}%');
        emit(state.copyWith(customerSuggestion: customer));
      }
    } catch (e) {
      log.severe(e);
    }
    emit(state.copyWith(customerName: event.name));
  }

  void _onCustomerPhoneChange(
      OnCustomerPhoneChange event, Emitter<CreateNewReceiptState> emit) async {
    emit(state.copyWith(customerPhone: event.phone));
  }

  void _onCustomerAddressChange(OnCustomerAddressChange event,
      Emitter<CreateNewReceiptState> emit) async {
    emit(state.copyWith(customerAddress: event.address));
  }

  void _onSuggestedCustomerSelectEvent(OnSuggestedCustomerSelect event,
      Emitter<CreateNewReceiptState> emit) async {
    emit(state.copyWith(
      customerSuggestion: List.empty(),
      customerId: event.contact.contactId,
      customerPhone: event.contact.phoneNumber,
      customerName: '${event.contact.firstName} ${event.contact.lastName ?? ''}',
      customerAddress: event.contact.address
    ));
  }
}
