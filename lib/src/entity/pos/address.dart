import 'package:isar/isar.dart';
part 'address.g.dart';
@embedded
class Address {
  final String? zipcode;
  final String? building;
  final String? street;
  final String? city;
  final String? state;

  Address(
      {this.zipcode,
      this.building,
      this.street,
      this.city,
      this.state});


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          zipcode == other.zipcode &&
          building == other.building &&
          street == other.street &&
          city == other.city &&
          state == other.state;

  @override
  int get hashCode =>
      zipcode.hashCode ^
      building.hashCode ^
      street.hashCode ^
      city.hashCode ^
      state.hashCode;

  @override
  String toString() {

    if (building != null && street != null && city != null && state != null) {
      return '$building, $street, $city, $state';
    } else if (building != null && street != null && city != null) {
      return '$building, $street, $city';
    } else if (building != null && street != null) {
      return '$building, $street';
    } else if (building != null) {
      return '$building';
    } else if (street != null && city != null && state != null) {
      return '$street, $city, $state';
    } else if (street != null && city != null) {
      return '$street, $city';
    } else if (street != null) {
      return '$street';
    } else if (city != null && state != null) {
      return '$city, $state';
    } else if (city != null) {
      return '$city';
    } else if (state != null) {
      return '$state';
    } else {
      return '';
    }
  }

  Address.fromJson(Map<String, dynamic> json)
      : zipcode = json['zipcode'],
        building = json['building'],
        street = json['street'],
        city = json['city'],
        state = json['state'];

  Map<String, dynamic> toJson() => {
        'zipcode': zipcode,
        'building': building,
        'street': street,
        'city': city,
        'state': state,
  };
}
