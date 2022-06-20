part of 'create_new_receipt_bloc.dart';

@immutable
abstract class CreateNewReceiptEvent {}

class AddItemToReceipt extends CreateNewReceiptEvent {
  final ProductModel product;

  AddItemToReceipt(this.product);
}

class OnQuantityUpdate extends CreateNewReceiptEvent {
  final SaleLine saleLine;
  final double quantity;

  OnQuantityUpdate({required this.saleLine, required this.quantity});
}

class OnUnitPriceUpdate extends CreateNewReceiptEvent {
  final SaleLine saleLine;
  final double unitPrice;

  OnUnitPriceUpdate({required this.saleLine, required this.unitPrice});
}

class OnInitiateNewTransaction extends CreateNewReceiptEvent {}

class OnCreateNewTransaction extends CreateNewReceiptEvent {}

class OnCustomerNameChange extends CreateNewReceiptEvent {
  final String? name;
  OnCustomerNameChange({this.name});
}

class OnCustomerPhoneChange extends CreateNewReceiptEvent {
  final String? phone;
  OnCustomerPhoneChange({this.phone});
}

class OnCustomerAddressChange extends CreateNewReceiptEvent {
  final String? address;
  OnCustomerAddressChange({this.address});
}

class OnSuggestedCustomerSelect extends CreateNewReceiptEvent {
  final ContactEntity contact;
  OnSuggestedCustomerSelect(this.contact);
}

class OnAddNewTenderLine extends CreateNewReceiptEvent {
  final String tenderType;
  final double amount;

  OnAddNewTenderLine({required this.tenderType, required this.amount });
}

class OnChangeSaleStep extends CreateNewReceiptEvent {
  final CreateSaleStep step;

  OnChangeSaleStep(this.step);
}

class _VerifyOrderAndEmitState extends CreateNewReceiptEvent {}