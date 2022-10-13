import 'package:isar/isar.dart';
part 'address.g.dart';
@embedded
class Address {
  final String? address1;
  final String? address2;
  final String? city;
  final String? state;
  final String? stateCode;
  final String? country;
  final String? zipcode;

  Address(
      {this.address1,
      this.address2,
      this.city,
      this.state,
        this.stateCode,
      this.country,
      this.zipcode});


  @override
  bool operator == (Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          address1 == other.address1 &&
          address2 == other.address2 &&
          city == other.city &&
          state == other.state &&
          stateCode == other.stateCode &&
          country == other.country &&
          zipcode == other.zipcode;

  @override
  String toString() {
    return '$address1, $address2\n$city, $state\n$country, $zipcode';
  }

  Address.fromJson(Map<String, dynamic> json)
      : zipcode = json['zipcode'],
        address1 = json['address1'],
        address2 = json['address2'],
        city = json['city'],
        state = json['state'],
        stateCode = json['stateCode'],
        country = json['country'];

  Map<String, dynamic> toJson() => {
        'zipcode': zipcode,
        'address1': address1,
        'address2': address2,
        'city': city,
        'state': state,
        'stateCode': stateCode,
        'country': country,
  };
}
