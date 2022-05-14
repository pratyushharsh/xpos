import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/config/sale_status_codes.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:receipt_generator/src/repositories/contact_repository.dart';

part 'create_new_receipt_event.dart';
part 'create_new_receipt_state.dart';

class CreateNewReceiptBloc
    extends Bloc<CreateNewReceiptEvent, CreateNewReceiptState> {
  final log = Logger('CreateNewReceiptBloc');
  final AppDatabase db;
  final AuthenticationBloc authenticationBloc;
  final ContactRepository contactDb;

  CreateNewReceiptBloc({required this.db, required this.contactDb, required this.authenticationBloc})
      : super(const CreateNewReceiptState(
            status: CreateNewReceiptStatus.initial)) {
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
        price: event.product.listPrice ?? 0.00);
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
    String? storeId = authenticationBloc.state.store?.rtlLocId;
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
        shippingAddress: state.selectedCustomer?.shippingAddress, storeId: storeId, createTime: DateTime.now());
    List<TransactionLineItemEntity> lineItems =
        state.lineItem.map((e) => e.toEntity(state.transSeq)).toList();

    // Create If Contact Does not exist else override
    if (state.selectedCustomer != null) {
      try {
        await db.contactDao.insertBulk(state.selectedCustomer!);
      } catch (e) {
        log.severe(e);
      }
    }

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
        var contacts = await contactDb.getContact();
        log.info("${contacts.length} contacts found.");
        var x = contacts
            .where((con) {
              if (event.name != null) {
                if (con.name
                        .toLowerCase()
                        .contains(event.name!.toLowerCase())) {
                  return true;
                }
                return false;
              } else {
                return true;
              }
            })
            .take(5)
            .toList();
        emit(state.copyWith(
            customerSuggestion: customer,
            selectedCustomer: null,
            customerSearchState: CustomerSearchState.searching,
            phoneContactSuggestion: x));
      }
    } catch (e) {
      log.severe(e);
    }
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
        customerName: event.contact.name,
        selectedCustomer: event.contact,
        customerSearchState: CustomerSearchState.selected,
        customerAddress: event.contact.shippingAddress));
  }
}
