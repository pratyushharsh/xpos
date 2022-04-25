import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/business_entity.dart';
import 'package:receipt_generator/src/model/api/api.dart';
import 'package:receipt_generator/src/repositories/business_repository.dart';

part 'business_event.dart';
part 'business_state.dart';

class BusinessBloc extends Bloc<BusinessEvent, BusinessState> {
  final log = Logger('BusinessBloc');
  final BusinessRepository repo;
  final BusinessOperation operation;
  static const String dummyBusinessId = 'D10001';

  BusinessBloc({required this.repo, this.operation = BusinessOperation.create})
      : super(BusinessState(operation: operation)) {
    on<LoadBusinessDetail>(_onLoadBusinessDetail);
    on<OnBusinessNameChange>(_onBusinessNameChange);
    on<OnBusinessContactChange>(_onBusinessContactChange);
    on<OnBusinessAddressChange>(_onBusinessAddressChange);
    on<OnSaveBusiness>(_onSaveBusinessDetail);
    on<OnCreateNewBusiness>(_onCreateNewBusiness);
  }

  void _onLoadBusinessDetail(
      LoadBusinessDetail event, Emitter<BusinessState> emit) async {
    emit(state.copyWith(status: BusinessStatus.loading));
    try {
      if (event.businessId == null) {
        throw "No BusinessId to fetch.";
      }
      var data = await repo.getBusinessById(event.businessId!);
      emit(state.copyWith(
          status: BusinessStatus.success,
          entity: data,
          businessName: data.storeName,
          businessAddress: data.address1,
          businessContact: data.storeContact));
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
        var entity = await repo.updateBusiness(state.entity!.copyWith(
            storeName: state.businessName,
            storeContact: state.businessContact,
            address1: state.businessAddress));
        emit(state.copyWith(status: BusinessStatus.success, entity: entity));
      }
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: BusinessStatus.failure));
    }
  }

  void _onCreateNewBusiness(
      OnCreateNewBusiness event, Emitter<BusinessState> emit) async {
    emit(state.copyWith(status: BusinessStatus.loading));
    try {
      var resp = await repo.createNewBusiness(CreateBusinessRequest(
          name: state.businessName,
          address: state.businessAddress,
          phone: state.businessContact));
      log.info(resp);
      emit(state.copyWith(status: BusinessStatus.newBusinessCreated, entity: resp));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: BusinessStatus.newBusinessFailure));
    }
  }

  void _onBusinessContactChange(
      OnBusinessContactChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
          businessContact: event.contact,
          status: BusinessStatus.modified),
    );
  }

  void _onBusinessNameChange(
      OnBusinessNameChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
          businessName: event.name, status: BusinessStatus.modified),
    );
  }

  void _onBusinessAddressChange(
      OnBusinessAddressChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
          businessAddress: event.address, status: BusinessStatus.modified),
    );
  }
}
