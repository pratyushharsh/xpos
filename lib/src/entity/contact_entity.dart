import 'package:floor/floor.dart';

@Entity(tableName: 'customer', indices: [
  Index(
    value: ['name'],
  ),
  Index(
    value: ['phoneNumber'],
  ),
  Index(
    value: ['email'],
  ),
])
class ContactEntity {
  @PrimaryKey()
  final String contactId;
  final String name;
  final String? phoneNumber;
  final String? email;
  final String? shippingAddress;
  final String? billingAddress;

  ContactEntity(
      {required this.contactId,
      required this.name,
      this.phoneNumber,
      this.email,
      this.shippingAddress,
      this.billingAddress});
}
