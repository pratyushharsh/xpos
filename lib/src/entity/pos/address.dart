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
  String toString() {
    return '$building, $street \n$city, $state \nPin-$zipcode';
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
