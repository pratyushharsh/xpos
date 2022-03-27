import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/business_entity.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';

part 'business_event.dart';
part 'business_state.dart';

class BusinessBloc extends Bloc<BusinessEvent, BusinessState> {

  final log = Logger('BusinessBloc');
  final AppDatabase db;
  static const String dummyBusinessId = 'D10001';

  BusinessBloc({ required this.db}) : super(const BusinessState()) {
    on<LoadBusinessDetail>(_onLoadBusinessDetail);
    on<OnBusinessNameChange>(_onBusinessNameChange);
    on<OnBusinessContactChange>(_onBusinessContactChange);
    on<OnBusinessAddressChange>(_onBusinessAddressChange);
    on<OnSaveBusiness>(_onSaveBusinessDetail);
  }

  void _onLoadBusinessDetail(
      LoadBusinessDetail event, Emitter<BusinessState> emit) async {
    emit(state.copyWith(status: BusinessStatus.loading));
    try {
      var data = await db.retailLocationDao.findRetailLocById(dummyBusinessId);
      data ??= RetailLocationEntity(rtlLocId: dummyBusinessId, createTime: DateTime.now());
      emit(state.copyWith(status: BusinessStatus.success, entity: data));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: BusinessStatus.failure));
    }
  }

  void _onSaveBusinessDetail(
      OnSaveBusiness event, Emitter<BusinessState> emit) async {
    emit(state.copyWith(status: BusinessStatus.loading));
    try {
      if (state.entity != null) {
        await db.retailLocationDao.insertBulk(state.entity!);
      }
      emit(state.copyWith(status: BusinessStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: BusinessStatus.failure));
    }
  }


  void _onBusinessContactChange(
      OnBusinessContactChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
        entity: state.entity?.copyWith(
          storeContact: event.contact,
        ),
        status: BusinessStatus.modified
      ),
    );
  }

  void _onBusinessNameChange(
      OnBusinessNameChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
          entity: state.entity?.copyWith(
            storeName: event.name,
          ),
          status: BusinessStatus.modified
      ),
    );
  }

  void _onBusinessAddressChange(
      OnBusinessAddressChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
          entity: state.entity?.copyWith(
            address1: event.address,
          ),
          status: BusinessStatus.modified
      ),
    );
  }
}
