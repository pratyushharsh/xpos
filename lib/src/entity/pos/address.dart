import 'package:isar/isar.dart';
part 'address.g.dart';
@embedded
class Address {
  final String? building;
  final String? street;
  final String? city;
  final String? state;
  final String? country;
  final String? zipcode;

  Address(
      {this.building,
      this.street,
      this.city,
      this.state,
      this.country,
      this.zipcode});


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          building == other.building &&
          street == other.street &&
          city == other.city &&
          state == other.state &&
          country == other.country &&
          zipcode == other.zipcode;

  @override
  int get hashCode =>
      building.hashCode ^
      street.hashCode ^
      city.hashCode ^
      state.hashCode ^
      country.hashCode ^
      zipcode.hashCode;

  @override
  String toString() {
    return '$building, $street\n$city, $state\n$country, $zipcode';
  }

  Address.fromJson(Map<String, dynamic> json)
      : zipcode = json['zipcode'],
        building = json['building'],
        street = json['street'],
        city = json['city'],
        state = json['state'],
        country = json['country'];

  Map<String, dynamic> toJson() => {
        'zipcode': zipcode,
        'building': building,
        'street': street,
        'city': city,
        'state': state,
        'country': country,
  };
}
