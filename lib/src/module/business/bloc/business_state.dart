part of 'business_bloc.dart';

enum BusinessStatus {
  initial,
  modified,
  loading,
  failure,
  success,
  newBusinessCreated,
  newBusinessFailure,
  uploadingImage,
  imageUploadedFailure,
  imageUploaded,
}

enum BusinessOperation { create, update, delete }

class BusinessState extends Equatable {
  final BusinessStatus status;
  final RetailLocationEntity? entity;
  final BusinessOperation operation;
  final String businessName;
  final String businessContact;
  final String? businessEmail;
  final Address? businessAddress;
  final String businessGst;
  final String businessPan;
  final File? photo;

  bool get error {
    return businessName.isNotEmpty;
  }

  const BusinessState({
    this.status = BusinessStatus.initial,
    this.entity,
    this.operation = BusinessOperation.create,
    this.businessName = '',
    this.businessContact = '',
    this.businessEmail,
    this.businessAddress,
    this.businessGst = '',
    this.businessPan = '',
    this.photo,
  });

  @override
  List<Object?> get props => [
        status,
        entity,
        operation,
        businessName,
        businessAddress,
        businessContact,
        businessGst,
        businessPan,
        businessEmail,
        photo
      ];

  BusinessState copyWith({
    BusinessStatus? status,
    RetailLocationEntity? entity,
    BusinessOperation? operation,
    String? businessName,
    String? businessContact,
    String? businessEmail,
    Address? businessAddress,
    String? businessGst,
    String? businessPan,
    File? photo,
  }) {
    return BusinessState(
      status: status ?? this.status,
      entity: entity ?? this.entity,
      operation: operation ?? this.operation,
      businessName: businessName ?? this.businessName,
      businessContact: businessContact ?? this.businessContact,
      businessEmail: businessEmail ?? this.businessEmail,
      businessAddress: businessAddress ?? this.businessAddress,
      businessGst: businessGst ?? this.businessGst,
      businessPan: businessPan ?? this.businessPan,
      photo: photo ?? this.photo,
    );
  }

  @override
  String toString() {
    return 'BusinessState{status: $status, entity: $entity, operation: $operation, businessName: $businessName, businessContact: $businessContact, businessEmail: $businessEmail, businessAddress: $businessAddress, businessGst: $businessGst, businessPan: $businessPan}';
  }
}
