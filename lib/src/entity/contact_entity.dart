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
  final int syncState;
  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastSyncAt;
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
    this.syncState = 100,
    this.lastSyncAt,
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
      'contact_id': contactId,
      'store_id': storeId,
      'name': name,
      'phone_number': phoneNumber,
      'email': email,
      'shipping_address': shippingAddress,
      'billing_address': billingAddress,
      'create_date': createTime.toUtc().toIso8601String(),
      'update_date': updateTime?.toUtc().toIso8601String(),
      'last_sync_at': lastSyncAt?.toUtc().toIso8601String(),
      'version': version,
    };
  }

  static ContactEntity fromMap(Map<String, dynamic> map) {
    return ContactEntity(
      contactId: map['contactId'] as String,
      storeId: map['storeId'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String?,
      email: map['email'] as String?,
      shippingAddress: map['shippingAddress'] as String?,
      billingAddress: map['billingAddress'] as String?,
      createTime: DateTime.tryParse(map['create_date']) ?? DateTime.now(),
      updateTime: DateTime.tryParse(map['update_date']??""),
      lastSyncAt: DateTime.tryParse(map['last_sync_at']??""),
      version: map['version'] != null ? map['version'] as int : 1,
      syncState: 300
    );
  }
}
