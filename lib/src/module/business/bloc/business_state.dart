part of 'business_bloc.dart';

enum BusinessStatus { initial, modified, loading, failure, success }

class BusinessState extends Equatable {
  final BusinessStatus status;
  final RetailLocationEntity? entity;

  const BusinessState({this.status = BusinessStatus.initial, this.entity});

  BusinessState copyWith(
      {BusinessStatus? status, RetailLocationEntity? entity}) {
    return BusinessState(
        status: status ?? this.status, entity: entity ?? this.entity);
  }

  @override
  List<Object?> get props => [status, entity];
}
