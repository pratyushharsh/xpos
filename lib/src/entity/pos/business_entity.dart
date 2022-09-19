import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

part 'business_entity.g.dart';

@Collection()
class RetailLocationEntity extends BaseEntity {

  final Id rtlLocId;
  final String? storeName;
  final String? storeEmail;
  final String? storeContact;
  final String? storeNumber;
  final String? currencyId;
  final String? locale;
  final String? address1;
  final String? address2;
  final String? city;
  final String? state;
  final String? country;
  final String? postalCode;
  final String? gst;
  final String? pan;
  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastChangedAt;
  late int version;

  RetailLocationEntity(
      {required this.rtlLocId,
      this.storeName,
      this.storeEmail,
      this.storeContact,
      this.storeNumber,
      this.currencyId,
      this.locale,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.country,
      this.postalCode,
      this.gst,
      this.pan,
      required this.createTime,
      this.version = 1,
      this.lastChangedAt,
      this.updateTime});

  @override
  String getPK() {
    return "STORE#$rtlLocId";
  }

  @override
  String getSK() {
    return "STORE#$rtlLocId";
  }

  @override
  String getStoreId() {
    return '$rtlLocId';
  }

  @override
  String lastUpdatedAtISOString() {
    DateTime lastUpdate = updateTime ?? DateTime.now();
    return lastUpdate.toIso8601String();
  }

  @override
  EntityType type() {
    return EntityType.store;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'rtlLocId': rtlLocId,
      'storeName': storeName,
      'storeEmail': storeEmail,
      'storeContact': storeContact,
      'storeNumber': storeNumber,
      'currencyId': currencyId,
      'locale': locale,
      'address1': address1,
      'address2': address2,
      'city': city,
      'state': state,
      'country': country,
      'postalCode': postalCode,
      'gst': gst,
      'pan': pan,
      'createTime': createTime,
      'updateTime': updateTime,
      'lastChangedAt': lastChangedAt,
      'version': version,
    };
  }

  factory RetailLocationEntity.fromMap(Map<String, dynamic> map) {
    return RetailLocationEntity(
      rtlLocId: map['rtlLocId'] as int,
      storeName: map['storeName'] as String,
      storeEmail: map['storeEmail'] as String,
      storeContact: map['storeContact'] as String,
      storeNumber: map['storeNumber'] as String,
      currencyId: map['currencyId'] as String,
      locale: map['locale'] as String,
      address1: map['address1'] as String,
      address2: map['address2'] as String,
      city: map['city'] as String,
      state: map['state'] as String,
      country: map['country'] as String,
      postalCode: map['postalCode'] as String,
      createTime: map['createTime'] as DateTime,
      updateTime: map['updateTime'] as DateTime,
      lastChangedAt: map['lastChangedAt'] as DateTime,
      version: map['version'] as int,
    );
  }

  RetailLocationEntity copyWith({
    int? rtlLocId,
    String? storeName,
    String? storeEmail,
    String? storeContact,
    String? storeNumber,
    String? currencyId,
    String? locale,
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? gst,
    String? pan,
    DateTime? createTime,
    DateTime? updateTime,
    DateTime? lastChangedAt,
    int? version,
    DateTime? lastUpdate,
  }) {
    return RetailLocationEntity(
      rtlLocId: rtlLocId ?? this.rtlLocId,
      storeName: storeName ?? this.storeName,
      storeEmail: storeEmail ?? this.storeEmail,
      storeContact: storeContact ?? this.storeContact,
      storeNumber: storeNumber ?? this.storeNumber,
      currencyId: currencyId ?? this.currencyId,
      locale: locale ?? this.locale,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      postalCode: postalCode ?? this.postalCode,
      gst: gst ?? this.gst,
      pan: pan ?? this.pan,
      createTime: createTime ?? this.createTime,
      updateTime: updateTime ?? this.updateTime,
      lastChangedAt: lastChangedAt ?? this.lastChangedAt,
      version: version ?? this.version,
    );
  }
}
