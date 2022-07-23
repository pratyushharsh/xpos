

class Address {
  final String? zipcode;
  final String? building;
  final String? street;
  final String? city;
  final String? state;

  Address(
      {required this.zipcode,
      required this.building,
      required this.street,
      required this.city,
      required this.state});

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
