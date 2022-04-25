part of 'business_bloc.dart';

@immutable
abstract class BusinessEvent {}

class LoadBusinessDetail extends BusinessEvent {
  final String? businessId;

  LoadBusinessDetail(this.businessId);
}

class OnBusinessNameChange extends BusinessEvent {
  final String name;

  OnBusinessNameChange(this.name);
}

class OnBusinessContactChange extends BusinessEvent {
  final String contact;

  OnBusinessContactChange(this.contact);
}

class OnBusinessAddressChange extends BusinessEvent {
  final String address;

  OnBusinessAddressChange(this.address);
}

class OnCreateNewBusiness extends BusinessEvent {}

class OnSaveBusiness extends BusinessEvent {}