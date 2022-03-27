part of 'business_bloc.dart';

enum BusinessStatus { initial, modified, loading, failure, success, newBusinessCreated, newBusinessFailure }
enum BusinessOperation { create, update, delete }

class BusinessState extends Equatable {
  final BusinessStatus status;
  final RetailLocationEntity? entity;
  final BusinessOperation operation;
  final String businessName;
  final String businessContact;
  final String businessAddress;

  bool get error {
    return businessName.isNotEmpty;
  }

  const BusinessState({
    this.status = BusinessStatus.initial,
    this.entity,
    this.operation = BusinessOperation.create,
    this.businessName = '',
    this.businessContact = '',
    this.businessAddress = '',
  });

  @override
  List<Object?> get props => [
        status,
        entity,
        operation,
        businessName,
        businessAddress,
        businessContact
      ];

  BusinessState copyWith({
    BusinessStatus? status,
    RetailLocationEntity? entity,
    BusinessOperation? operation,
    String? businessName,
    String? businessContact,
    String? businessAddress,
  }) {
    return BusinessState(
      status: status ?? this.status,
      entity: entity ?? this.entity,
      operation: operation ?? this.operation,
      businessName: businessName ?? this.businessName,
      businessContact: businessContact ?? this.businessContact,
      businessAddress: businessAddress ?? this.businessAddress,
    );
  }
}
