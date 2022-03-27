class CreateBusinessResponse {
  String businessId;
  String name;
  String? address;
  String? phone;
  String createdBy;
  String createdAt;

  CreateBusinessResponse({
    required this.businessId,
    required this.name,
    this.address,
    this.phone,
    required this.createdBy,
    required this.createdAt});

  Map<String, dynamic> toMap() {
    return {
      'business_id': businessId,
      'name': name,
      'address': address,
      'phone': phone,
      'created_by': createdBy,
      'created_at': createdAt,
    };
  }

  factory CreateBusinessResponse.fromMap(Map<String, dynamic> map) {
    return CreateBusinessResponse(
      businessId: map['business_id'] as String,
      name: map['name'] as String,
      address: map['address'] as String?,
      phone: map['phone'] as String?,
      createdBy: map['created_by'] as String,
      createdAt: map['created_at'] as String,
    );
  }
}