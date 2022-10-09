import 'dart:io';

import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/business_entity.dart';
import 'package:receipt_generator/src/entity/pos/address.dart';
import 'package:receipt_generator/src/model/api/api.dart';
import 'package:receipt_generator/src/repositories/business_repository.dart';

part 'business_event.dart';
part 'business_state.dart';

class BusinessBloc extends Bloc<BusinessEvent, BusinessState> {
  final log = Logger('BusinessBloc');
  final BusinessRepository repo;
  final BusinessOperation operation;
  final CognitoUserPool userPool;

  BusinessBloc(
      {required this.repo,
      this.operation = BusinessOperation.create,
      required this.userPool})
      : super(BusinessState(operation: operation)) {
    on<LoadBusinessDetail>(_onLoadBusinessDetail);
    on<OnBusinessNameChange>(_onBusinessNameChange);
    on<OnBusinessContactChange>(_onBusinessContactChange);
    on<OnBusinessEmailChange>(_onBusinessEmailChange);
    on<OnBusinessAddressChange>(_onBusinessAddressChange);
    on<OnBusinessGstChange>(_onBusinessGstChange);
    on<OnBusinessPanChange>(_onBusinessPanChange);
    on<OnSaveBusiness>(_onSaveBusinessDetail);
    on<OnCreateNewBusiness>(_onCreateNewBusiness);
    on<OnChangePhoto>(_onChangePhoto);
  }

  void _onLoadBusinessDetail(
      LoadBusinessDetail event, Emitter<BusinessState> emit) async {
    emit(state.copyWith(status: BusinessStatus.loading));
    try {
      if (event.businessId == null) {
        throw "No BusinessId to fetch.";
      }
      var data = await repo.getBusinessById(event.businessId!);
      emit(
        state.copyWith(
            status: BusinessStatus.success,
            entity: data,
            businessName: data.storeName,
            businessGst: data.gst,
            businessPan: data.pan,
            businessEmail: data.storeEmail,
            businessAddress: data.address,
            businessContact: data.storeContact),
      );
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
        // var entity = await repo.updateBusiness(
        //     state.entity!.rtlLocId,
        //     CreateBusinessRequest(
        //       name: state.businessName,
        //       address1: state.businessAddress?.building,
        //       address2: state.businessAddress?.street,
        //       city: state.businessAddress?.city,
        //       state: state.businessAddress?.state,
        //       postalCode: state.businessAddress?.zipcode,
        //       email: state.businessEmail,
        //       country: "India",
        //       currency: "INR",
        //       locale: "en_IN",
        //       gst: state.businessGst,
        //       pan: state.businessPan,
        //       phone: state.businessContact,
        //     ));
        // emit(state.copyWith(status: BusinessStatus.success, entity: entity));


        emit(state.copyWith(status: BusinessStatus.uploadingImage));
        var uploadUrl = await repo.getLogoUploadUrl(state.entity!.rtlLocId);
        var data = await state.photo!.readAsBytes();
        var response = await repo.uploadImage(uploadUrl, data);
        emit(state.copyWith(status: BusinessStatus.modified));
      }
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: BusinessStatus.failure));
    }
  }

  void _onCreateNewBusiness(
      OnCreateNewBusiness event, Emitter<BusinessState> emit) async {
    emit(state.copyWith(status: BusinessStatus.loading));

    var user = await userPool.getCurrentUser();

    try {
      var resp = await repo.createNewBusiness(CreateBusinessRequest(
          name: state.businessName,
          address1: state.businessAddress?.building,
          address2: state.businessAddress?.street,
          city: state.businessAddress?.city,
          state: state.businessAddress?.state,
          postalCode: state.businessAddress?.zipcode,
          email: state.businessEmail,
          country: "India",
          currency: "INR",
          locale: "en_IN",
          gst: state.businessGst,
          pan: state.businessPan,
          phone: state.businessContact,
          createdBy: user?.getUsername()));
      log.info(resp);

      // Save in the shared preferences
      await userPool.storage.setItem("CURRENT_STORE", resp.rtlLocId.toString());

      emit(state.copyWith(
          status: BusinessStatus.newBusinessCreated, entity: resp));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: BusinessStatus.newBusinessFailure));
    }
  }

  void _onBusinessContactChange(
      OnBusinessContactChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
          businessContact: event.contact, status: BusinessStatus.modified),
    );
  }

  void _onBusinessEmailChange(
      OnBusinessEmailChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
          businessEmail: event.email, status: BusinessStatus.modified),
    );
  }

  void _onBusinessNameChange(
      OnBusinessNameChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(businessName: event.name, status: BusinessStatus.modified),
    );
  }

  void _onBusinessAddressChange(
      OnBusinessAddressChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(
          businessAddress: event.address, status: BusinessStatus.modified),
    );
  }

  void _onBusinessPanChange(
      OnBusinessPanChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(businessPan: event.pan, status: BusinessStatus.modified),
    );
  }

  void _onBusinessGstChange(
      OnBusinessGstChange event, Emitter<BusinessState> emit) async {
    emit(
      state.copyWith(businessGst: event.gst, status: BusinessStatus.modified),
    );
  }

  void _onChangePhoto(OnChangePhoto event, Emitter<BusinessState> emit) async {
    emit(state.copyWith(photo: event.photo, status: BusinessStatus.modified));
  }
}
