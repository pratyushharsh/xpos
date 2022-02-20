part of 'new_customer_bloc.dart';

enum NewCustomerStatus {
  initial,
  loading,
  addingCustomer,
  addingSuccess,
  addingFailure
}

class NewCustomerState extends Equatable {
  final NewCustomerStatus status;

  const NewCustomerState({this.status = NewCustomerStatus.initial});

  NewCustomerState copyWith({NewCustomerStatus? status}) {
    return NewCustomerState(status: status ?? this.status);
  }

  @override
  List<Object?> get props => [status];
}
