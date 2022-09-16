import 'dart:convert';

import 'package:isar/isar.dart';

import '../../model/address.dart';

part 'contact_entity.g.dart';

@Collection()
class ContactEntity {

  @Id()
  final int? id;

  @Index(unique: true)
  final String contactId;
  final String storeId;

  @Index()
  final String firstName;
  final String lastName;

  @Index()
  final String? phoneNumber;

  @Index()
  final String? email;

  @AddressConverter()
  final Address? shippingAddress;

  @AddressConverter()
  final Address? billingAddress;
  final int syncState;

  final String? panCard;
  final String? gstin;

  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastSyncAt;
  late int version;

  ContactEntity({
    this.id,
    required this.contactId,
    required this.firstName,
    required this.lastName,
    required this.storeId,
    this.phoneNumber,
    this.email,
    this.shippingAddress,
    this.billingAddress,
    this.panCard,
    this.gstin,
    required this.createTime,
    this.version = 1,
    this.syncState = 100,
    this.lastSyncAt,
    this.updateTime});
}


class AddressConverter extends TypeConverter<Address?, String?> {
  const AddressConverter(); // Converters need to have an empty const constructor

  @override
  Address? fromIsar(String? input) {
    if (input == null) {
      return null;
    }
    var inp = json.decode(input);
    return Address.fromJson(inp);
  }

  @override
  String? toIsar(Address? address) {
    if (address == null) {
      return null;
    }
    var out = address.toJson();
    return json.encode(out);
  }
}