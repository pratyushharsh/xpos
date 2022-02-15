import 'package:floor/floor.dart';

@Entity(tableName: 'customer', indices: [Index(value: ['firstName', 'lastName', 'phoneNumber'])])
class ContactEntity {
  @PrimaryKey()
  final String contactId;
  final String firstName;
  final String? lastName;
  final String? phoneNumber;
  final String? email;
  final String? address;
  final String? city;
  final String? state;
  final String? country;
  final String? postalCode;

  ContactEntity(
      {required this.contactId,
      required this.firstName,
      this.lastName,
      this.phoneNumber,
      this.email,
      this.address,
      this.city,
      this.state,
      this.country,
      this.postalCode});
}
