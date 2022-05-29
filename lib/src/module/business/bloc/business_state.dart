part of 'business_bloc.dart';

enum BusinessStatus {
  initial,
  modified,
  loading,
  failure,
  success,
  newBusinessCreated,
  newBusinessFailure
}
enum BusinessOperation { create, update, delete }

class BusinessState extends Equatable {
  final BusinessStatus status;
  final RetailLocationEntity? entity;
  final BusinessOperation operation;
  final String businessName;
  final String businessContact;
  final String? businessEmail;
  final BusinessAddress? businessAddress;
  final String businessGst;
  final String businessPan;

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
        businessEmail
      ];

  BusinessState copyWith({
    BusinessStatus? status,
    RetailLocationEntity? entity,
    BusinessOperation? operation,
    String? businessName,
    String? businessContact,
    String? businessEmail,
    BusinessAddress? businessAddress,
    String? businessGst,
    String? businessPan,
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
    );
  }

  @override
  String toString() {
    return 'BusinessState{status: $status, entity: $entity, operation: $operation, businessName: $businessName, businessContact: $businessContact, businessEmail: $businessEmail, businessAddress: $businessAddress, businessGst: $businessGst, businessPan: $businessPan}';
  }
}
