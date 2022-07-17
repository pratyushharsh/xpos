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
}
