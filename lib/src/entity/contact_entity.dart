import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/base_entity.dart';
import 'package:receipt_generator/src/entity/types.dart';

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
class ContactEntity extends BaseEntity {

  @PrimaryKey()
  final String contactId;
  final String storeId;
  final String name;
  final String? phoneNumber;
  final String? email;
  final String? shippingAddress;
  final String? billingAddress;
  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastChangedAt;
  late int version;

  ContactEntity({
    required this.contactId,
    required this.name,
    required this.storeId,
    this.phoneNumber,
    this.email,
    this.shippingAddress,
    this.billingAddress,
    required this.createTime,
    this.version = 1,
    this.lastChangedAt,
    this.updateTime});

  @override
  String getPK() {
    return "STORE#$storeId";
  }

  @override
  String getSK() {
    return "CST#$contactId";
  }

  @override
  String getStoreId() {
    return storeId;
  }

  @override
  String lastUpdatedAtISOString() {
    DateTime lastUpdate = updateTime ?? DateTime.now();
    return lastUpdate.toIso8601String();
  }

  @override
  EntityType type() {
    return EntityType.contact;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'contactId': contactId,
      'storeId': storeId,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'shippingAddress': shippingAddress,
      'billingAddress': billingAddress,
      'createTime': createTime,
      'updateTime': updateTime,
      'lastChangedAt': lastChangedAt,
      'version': version,
    };
  }

  @override
  ContactEntity fromMap(Map<String, dynamic> map) {
    return ContactEntity(
      contactId: map['contactId'] as String,
      storeId: map['storeId'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      email: map['email'] as String,
      shippingAddress: map['shippingAddress'] as String,
      billingAddress: map['billingAddress'] as String,
      createTime: map['createTime'] as DateTime,
      updateTime: map['updateTime'] as DateTime,
      lastChangedAt: map['lastChangedAt'] as DateTime,
      version: map['version'] as int,
    );
  }
}
