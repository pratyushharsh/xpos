class CreateBusinessRequest {
  String name;
  String? address;
  String? phone;

  CreateBusinessRequest({required this.name, this.address, this.phone});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'phone': phone,
    };
  }

  factory CreateBusinessRequest.fromMap(Map<String, dynamic> map) {
    return CreateBusinessRequest(
      name: map['name'] as String,
      address: map['address'] as String,
      phone: map['phone'] as String,
    );
  }
}