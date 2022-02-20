part of 'new_customer_bloc.dart';

@immutable
abstract class NewCustomerEvent {}

class OnCreateCustomer extends NewCustomerEvent {
  final CustomerParty customer;

  OnCreateCustomer({ required this.customer });
}