import 'package:floor/floor.dart';

@Entity(tableName: 'rtl_loc')
class RetailLocationEntity {
  @PrimaryKey()
  final String rtlLocId;
  final String? storeName;
  final String? storeContact;
  final String? storeNumber;
  final String? currencyId;
  final String? locale;
  final String? address1;
  final String? address2;
  final String? city;
  final String? country;
  final String? postalCode;

  const RetailLocationEntity({
      required this.rtlLocId,
      this.storeName,
      this.storeContact,
      this.storeNumber,
      this.currencyId,
      this.locale,
      this.address1,
      this.address2,
      this.city,
      this.country,
      this.postalCode});

  RetailLocationEntity copyWith({String? storeName, String?  storeContact, String? storeNumber, String? address1}) {
    return RetailLocationEntity(
      rtlLocId: rtlLocId,
      storeName: storeName ?? this.storeName,
      storeContact: storeContact ?? this.storeContact,
      storeNumber: storeNumber ?? this.storeNumber,
      currencyId: currencyId,
      locale: locale,
      address1: address1 ?? this.address1,
      address2: address2,
      city: city,
      country: country,
      postalCode: postalCode
    );
  }

}
