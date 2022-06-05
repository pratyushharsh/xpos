part of 'business_bloc.dart';

@immutable
abstract class BusinessEvent {}

class LoadBusinessDetail extends BusinessEvent {
  final int? businessId;

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
  final BusinessAddress address;

  OnBusinessAddressChange(this.address);
}

class OnBusinessGstChange extends BusinessEvent {
  final String gst;

  OnBusinessGstChange(this.gst);
}

class OnBusinessPanChange extends BusinessEvent {
  final String pan;

  OnBusinessPanChange(this.pan);
}

class OnBusinessEmailChange extends BusinessEvent {
  final String email;

  OnBusinessEmailChange(this.email);
}

class OnCreateNewBusiness extends BusinessEvent {}

class OnSaveBusiness extends BusinessEvent {}