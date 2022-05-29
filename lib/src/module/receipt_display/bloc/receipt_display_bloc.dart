import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/model/hsn_tax_summary.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:receipt_generator/src/repositories/setting_repository.dart';

part 'receipt_display_event.dart';
part 'receipt_display_state.dart';

class ReceiptDisplayBloc
    extends Bloc<ReceiptDisplayEvent, ReceiptDisplayState> {
  final log = Logger('ReceiptDisplayBloc');
  final int transId;
  final AppDatabase db;
  final SettingsRepository settingsRepo;
  final AuthenticationBloc authBloc;

  ReceiptDisplayBloc(
      {required this.transId, required this.db, required this.settingsRepo, required this.authBloc})
      : super(ReceiptDisplayState(taxSummary: List.empty())) {
    on<FetchReceiptDataEvent>(_onFetchReceiptData);
    on<UpdateReceiptStatusEvent>(_onUpdateReceiptStatusEvent);
    on<UpdateGlobalKey>(_onUpdateGlobalKeys);
  }

  void _onFetchReceiptData(
      ReceiptDisplayEvent event, Emitter<ReceiptDisplayState> emit) async {
    try {
      ReceiptSettingsModel recSetting = await settingsRepo.getReceiptSettings();
      emit(state.copyWith(
          status: ReceiptDisplayStatus.loading, receiptSettings: recSetting));
      TransactionHeaderEntity? header =
          await db.transactionDao.findHeaderByTransactionSeq(transId);
      List<TransactionLineItemEntity> lineItem =
          await db.transactionDao.findLineItemByTransactionSeq(transId);

      // build tax detail
      HashMap<String, List<TransactionLineItemEntity>> hsnCategory = HashMap();
      for (TransactionLineItemEntity li in lineItem) {
        if (li.hsn == null) continue;
        hsnCategory.putIfAbsent(li.hsn!, () => List.empty(growable: true));
        hsnCategory[li.hsn!]?.add(li);
      }

      var taxDetail = hsnCategory.entries
          .map((e) => HsnTaxSummary(
              hsn: e.key,
              amount: e.value.fold(0.0,
                  (previousValue, element) => previousValue + element.amount),
              cgstRate: e.value.first.taxRate / 2,
              cgstAmount: (e.value.fold<double>(
                      0.0,
                      (previousValue, element) =>
                          previousValue + element.taxAmount)) /
                  2,
              sgstRate: e.value.first.taxRate / 2,
              sgstAmont: e.value.fold<double>(
                      0.0,
                      (previousValue, element) =>
                          previousValue + element.taxAmount) /
                  2,
              taxTotal: e.value.fold(
                  0.0,
                  (previousValue, element) =>
                      previousValue + element.taxAmount)))
          .toList(growable: false);

      // List<TransactionLineItemEntity> tmp = await db.transactionDao.getAllTransactionLineItem();
      if (header != null) {
        emit(state.copyWith(
            header: header,
            lineItems: lineItem,
            status: ReceiptDisplayStatus.success,
            taxSummary: taxDetail));
      } else {
        emit(state.copyWith(status: ReceiptDisplayStatus.failure));
      }
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: ReceiptDisplayStatus.failure));
    }
  }

  void _onUpdateReceiptStatusEvent(
      UpdateReceiptStatusEvent event, Emitter<ReceiptDisplayState> emit) async {
    try {
      var data = await db.transactionDao
          .updateTransactionStatus(transId, event.status);
      if (data) {
        add(FetchReceiptDataEvent());
      }
    } catch (e) {
      log.severe(e);
    }
  }

  void _onUpdateGlobalKeys(
      UpdateGlobalKey event, Emitter<ReceiptDisplayState> emit) async {
    emit(state.copyWith(globalKeys: event.globalKey));
  }
}
