class CreateBusinessResponse {
  int businessId;
  String name;
  String? email;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postalCode;
  String? country;
  String? currency;
  String? phone;
  String? locale;
  String? gst;
  String? pan;
  String createdBy;
  DateTime createdAt;

  CreateBusinessResponse(
      {required this.businessId,
      required this.name,
        this.email,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postalCode,
      this.country,
      this.currency,
      this.phone,
      this.locale,
      this.gst,
      this.pan,
      required this.createdBy,
      required this.createdAt});

  Map<String, dynamic> toMap() {
    return {
      'businessId': businessId,
      'name': name,
      'email': email,
      'address1': address1,
      'address2': address2,
      'city': city,
      'state': state,
      'postal_code': postalCode,
      'country': country,
      'currency': currency,
      'phone': phone,
      'locale': locale,
      'gst': gst,
      'pan': pan,
      'created_by': createdBy,
      'created_at': createdAt,
    };
  }

  factory CreateBusinessResponse.fromMap(Map<String, dynamic> map) {
    return CreateBusinessResponse(
        businessId: map['business_id'] as int,
        name: map['name'] as String,
        email: map['email'] as String?,
        address1: map['address1'] as String?,
        address2: map['address2'] as String?,
        city: map['city'] as String?,
        state: map['state'] as String?,
        postalCode: map['postal_code'] as String?,
        country: map['country'] as String?,
        currency: map['currency'] as String?,
        phone: map['phone'] as String?,
        locale: map['locale'] as String?,
        gst: map['gst'] as String?,
        pan: map['pan'] as String?,
        createdBy: map['created_by'] as String,
        createdAt:
            DateTime.tryParse(map['created_at'].toString()) ?? DateTime.now());
  }
}
