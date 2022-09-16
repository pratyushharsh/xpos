// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetContactEntityCollection on Isar {
  IsarCollection<ContactEntity> get contactEntitys => getCollection();
}

const ContactEntitySchema = CollectionSchema(
  name: 'ContactEntity',
  schema:
      '{"name":"ContactEntity","idName":"id","properties":[{"name":"billingAddress","type":"String"},{"name":"contactId","type":"String"},{"name":"createTime","type":"Long"},{"name":"email","type":"String"},{"name":"firstName","type":"String"},{"name":"gstin","type":"String"},{"name":"lastName","type":"String"},{"name":"lastSyncAt","type":"Long"},{"name":"panCard","type":"String"},{"name":"phoneNumber","type":"String"},{"name":"shippingAddress","type":"String"},{"name":"storeId","type":"String"},{"name":"syncState","type":"Long"},{"name":"updateTime","type":"Long"},{"name":"version","type":"Long"}],"indexes":[{"name":"contactId","unique":true,"properties":[{"name":"contactId","type":"Hash","caseSensitive":true}]},{"name":"email","unique":false,"properties":[{"name":"email","type":"Hash","caseSensitive":true}]},{"name":"firstName","unique":false,"properties":[{"name":"firstName","type":"Hash","caseSensitive":true}]},{"name":"phoneNumber","unique":false,"properties":[{"name":"phoneNumber","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'billingAddress': 0,
    'contactId': 1,
    'createTime': 2,
    'email': 3,
    'firstName': 4,
    'gstin': 5,
    'lastName': 6,
    'lastSyncAt': 7,
    'panCard': 8,
    'phoneNumber': 9,
    'shippingAddress': 10,
    'storeId': 11,
    'syncState': 12,
    'updateTime': 13,
    'version': 14
  },
  listProperties: {},
  indexIds: {'contactId': 0, 'email': 1, 'firstName': 2, 'phoneNumber': 3},
  indexValueTypes: {
    'contactId': [
      IndexValueType.stringHash,
    ],
    'email': [
      IndexValueType.stringHash,
    ],
    'firstName': [
      IndexValueType.stringHash,
    ],
    'phoneNumber': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _contactEntityGetId,
  getLinks: _contactEntityGetLinks,
  attachLinks: _contactEntityAttachLinks,
  serializeNative: _contactEntitySerializeNative,
  deserializeNative: _contactEntityDeserializeNative,
  deserializePropNative: _contactEntityDeserializePropNative,
  serializeWeb: _contactEntitySerializeWeb,
  deserializeWeb: _contactEntityDeserializeWeb,
  deserializePropWeb: _contactEntityDeserializePropWeb,
  version: 3,
);

int? _contactEntityGetId(ContactEntity object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _contactEntityGetLinks(ContactEntity object) {
  return [];
}

const _contactEntityAddressConverter = AddressConverter();

void _contactEntitySerializeNative(
    IsarCollection<ContactEntity> collection,
    IsarRawObject rawObj,
    ContactEntity object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = _contactEntityAddressConverter.toIsar(object.billingAddress);
  IsarUint8List? _billingAddress;
  if (value0 != null) {
    _billingAddress = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_billingAddress?.length ?? 0) as int;
  final value1 = object.contactId;
  final _contactId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_contactId.length) as int;
  final value2 = object.createTime;
  final _createTime = value2;
  final value3 = object.email;
  IsarUint8List? _email;
  if (value3 != null) {
    _email = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_email?.length ?? 0) as int;
  final value4 = object.firstName;
  final _firstName = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_firstName.length) as int;
  final value5 = object.gstin;
  IsarUint8List? _gstin;
  if (value5 != null) {
    _gstin = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_gstin?.length ?? 0) as int;
  final value6 = object.lastName;
  final _lastName = IsarBinaryWriter.utf8Encoder.convert(value6);
  dynamicSize += (_lastName.length) as int;
  final value7 = object.lastSyncAt;
  final _lastSyncAt = value7;
  final value8 = object.panCard;
  IsarUint8List? _panCard;
  if (value8 != null) {
    _panCard = IsarBinaryWriter.utf8Encoder.convert(value8);
  }
  dynamicSize += (_panCard?.length ?? 0) as int;
  final value9 = object.phoneNumber;
  IsarUint8List? _phoneNumber;
  if (value9 != null) {
    _phoneNumber = IsarBinaryWriter.utf8Encoder.convert(value9);
  }
  dynamicSize += (_phoneNumber?.length ?? 0) as int;
  final value10 = _contactEntityAddressConverter.toIsar(object.shippingAddress);
  IsarUint8List? _shippingAddress;
  if (value10 != null) {
    _shippingAddress = IsarBinaryWriter.utf8Encoder.convert(value10);
  }
  dynamicSize += (_shippingAddress?.length ?? 0) as int;
  final value11 = object.storeId;
  final _storeId = IsarBinaryWriter.utf8Encoder.convert(value11);
  dynamicSize += (_storeId.length) as int;
  final value12 = object.syncState;
  final _syncState = value12;
  final value13 = object.updateTime;
  final _updateTime = value13;
  final value14 = object.version;
  final _version = value14;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _billingAddress);
  writer.writeBytes(offsets[1], _contactId);
  writer.writeDateTime(offsets[2], _createTime);
  writer.writeBytes(offsets[3], _email);
  writer.writeBytes(offsets[4], _firstName);
  writer.writeBytes(offsets[5], _gstin);
  writer.writeBytes(offsets[6], _lastName);
  writer.writeDateTime(offsets[7], _lastSyncAt);
  writer.writeBytes(offsets[8], _panCard);
  writer.writeBytes(offsets[9], _phoneNumber);
  writer.writeBytes(offsets[10], _shippingAddress);
  writer.writeBytes(offsets[11], _storeId);
  writer.writeLong(offsets[12], _syncState);
  writer.writeDateTime(offsets[13], _updateTime);
  writer.writeLong(offsets[14], _version);
}

ContactEntity _contactEntityDeserializeNative(
    IsarCollection<ContactEntity> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = ContactEntity(
    billingAddress: _contactEntityAddressConverter
        .fromIsar(reader.readStringOrNull(offsets[0])),
    contactId: reader.readString(offsets[1]),
    createTime: reader.readDateTime(offsets[2]),
    email: reader.readStringOrNull(offsets[3]),
    firstName: reader.readString(offsets[4]),
    gstin: reader.readStringOrNull(offsets[5]),
    id: id,
    lastName: reader.readString(offsets[6]),
    lastSyncAt: reader.readDateTimeOrNull(offsets[7]),
    panCard: reader.readStringOrNull(offsets[8]),
    phoneNumber: reader.readStringOrNull(offsets[9]),
    shippingAddress: _contactEntityAddressConverter
        .fromIsar(reader.readStringOrNull(offsets[10])),
    storeId: reader.readString(offsets[11]),
    syncState: reader.readLong(offsets[12]),
    updateTime: reader.readDateTimeOrNull(offsets[13]),
    version: reader.readLong(offsets[14]),
  );
  return object;
}

P _contactEntityDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (_contactEntityAddressConverter
          .fromIsar(reader.readStringOrNull(offset))) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (_contactEntityAddressConverter
          .fromIsar(reader.readStringOrNull(offset))) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _contactEntitySerializeWeb(
    IsarCollection<ContactEntity> collection, ContactEntity object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'billingAddress',
      _contactEntityAddressConverter.toIsar(object.billingAddress));
  IsarNative.jsObjectSet(jsObj, 'contactId', object.contactId);
  IsarNative.jsObjectSet(
      jsObj, 'createTime', object.createTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'email', object.email);
  IsarNative.jsObjectSet(jsObj, 'firstName', object.firstName);
  IsarNative.jsObjectSet(jsObj, 'gstin', object.gstin);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'lastName', object.lastName);
  IsarNative.jsObjectSet(
      jsObj, 'lastSyncAt', object.lastSyncAt?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'panCard', object.panCard);
  IsarNative.jsObjectSet(jsObj, 'phoneNumber', object.phoneNumber);
  IsarNative.jsObjectSet(jsObj, 'shippingAddress',
      _contactEntityAddressConverter.toIsar(object.shippingAddress));
  IsarNative.jsObjectSet(jsObj, 'storeId', object.storeId);
  IsarNative.jsObjectSet(jsObj, 'syncState', object.syncState);
  IsarNative.jsObjectSet(
      jsObj, 'updateTime', object.updateTime?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'version', object.version);
  return jsObj;
}

ContactEntity _contactEntityDeserializeWeb(
    IsarCollection<ContactEntity> collection, dynamic jsObj) {
  final object = ContactEntity(
    billingAddress: _contactEntityAddressConverter
        .fromIsar(IsarNative.jsObjectGet(jsObj, 'billingAddress')),
    contactId: IsarNative.jsObjectGet(jsObj, 'contactId') ?? '',
    createTime: IsarNative.jsObjectGet(jsObj, 'createTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'createTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    email: IsarNative.jsObjectGet(jsObj, 'email'),
    firstName: IsarNative.jsObjectGet(jsObj, 'firstName') ?? '',
    gstin: IsarNative.jsObjectGet(jsObj, 'gstin'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    lastName: IsarNative.jsObjectGet(jsObj, 'lastName') ?? '',
    lastSyncAt: IsarNative.jsObjectGet(jsObj, 'lastSyncAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'lastSyncAt'),
                isUtc: true)
            .toLocal()
        : null,
    panCard: IsarNative.jsObjectGet(jsObj, 'panCard'),
    phoneNumber: IsarNative.jsObjectGet(jsObj, 'phoneNumber'),
    shippingAddress: _contactEntityAddressConverter
        .fromIsar(IsarNative.jsObjectGet(jsObj, 'shippingAddress')),
    storeId: IsarNative.jsObjectGet(jsObj, 'storeId') ?? '',
    syncState:
        IsarNative.jsObjectGet(jsObj, 'syncState') ?? double.negativeInfinity,
    updateTime: IsarNative.jsObjectGet(jsObj, 'updateTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'updateTime'),
                isUtc: true)
            .toLocal()
        : null,
    version:
        IsarNative.jsObjectGet(jsObj, 'version') ?? double.negativeInfinity,
  );
  return object;
}

P _contactEntityDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'billingAddress':
      return (_contactEntityAddressConverter
          .fromIsar(IsarNative.jsObjectGet(jsObj, 'billingAddress'))) as P;
    case 'contactId':
      return (IsarNative.jsObjectGet(jsObj, 'contactId') ?? '') as P;
    case 'createTime':
      return (IsarNative.jsObjectGet(jsObj, 'createTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'email':
      return (IsarNative.jsObjectGet(jsObj, 'email')) as P;
    case 'firstName':
      return (IsarNative.jsObjectGet(jsObj, 'firstName') ?? '') as P;
    case 'gstin':
      return (IsarNative.jsObjectGet(jsObj, 'gstin')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'lastName':
      return (IsarNative.jsObjectGet(jsObj, 'lastName') ?? '') as P;
    case 'lastSyncAt':
      return (IsarNative.jsObjectGet(jsObj, 'lastSyncAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'lastSyncAt'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'panCard':
      return (IsarNative.jsObjectGet(jsObj, 'panCard')) as P;
    case 'phoneNumber':
      return (IsarNative.jsObjectGet(jsObj, 'phoneNumber')) as P;
    case 'shippingAddress':
      return (_contactEntityAddressConverter
          .fromIsar(IsarNative.jsObjectGet(jsObj, 'shippingAddress'))) as P;
    case 'storeId':
      return (IsarNative.jsObjectGet(jsObj, 'storeId') ?? '') as P;
    case 'syncState':
      return (IsarNative.jsObjectGet(jsObj, 'syncState') ??
          double.negativeInfinity) as P;
    case 'updateTime':
      return (IsarNative.jsObjectGet(jsObj, 'updateTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updateTime'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'version':
      return (IsarNative.jsObjectGet(jsObj, 'version') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _contactEntityAttachLinks(
    IsarCollection col, int id, ContactEntity object) {}

extension ContactEntityByIndex on IsarCollection<ContactEntity> {
  Future<ContactEntity?> getByContactId(String contactId) {
    return getByIndex('contactId', [contactId]);
  }

  ContactEntity? getByContactIdSync(String contactId) {
    return getByIndexSync('contactId', [contactId]);
  }

  Future<bool> deleteByContactId(String contactId) {
    return deleteByIndex('contactId', [contactId]);
  }

  bool deleteByContactIdSync(String contactId) {
    return deleteByIndexSync('contactId', [contactId]);
  }

  Future<List<ContactEntity?>> getAllByContactId(List<String> contactIdValues) {
    final values = contactIdValues.map((e) => [e]).toList();
    return getAllByIndex('contactId', values);
  }

  List<ContactEntity?> getAllByContactIdSync(List<String> contactIdValues) {
    final values = contactIdValues.map((e) => [e]).toList();
    return getAllByIndexSync('contactId', values);
  }

  Future<int> deleteAllByContactId(List<String> contactIdValues) {
    final values = contactIdValues.map((e) => [e]).toList();
    return deleteAllByIndex('contactId', values);
  }

  int deleteAllByContactIdSync(List<String> contactIdValues) {
    final values = contactIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('contactId', values);
  }
}

extension ContactEntityQueryWhereSort
    on QueryBuilder<ContactEntity, ContactEntity, QWhere> {
  QueryBuilder<ContactEntity, ContactEntity, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhere> anyContactId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'contactId'));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhere> anyEmail() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'email'));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhere> anyFirstName() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'firstName'));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhere> anyPhoneNumber() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'phoneNumber'));
  }
}

extension ContactEntityQueryWhere
    on QueryBuilder<ContactEntity, ContactEntity, QWhereClause> {
  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause> idNotEqualTo(
      int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      contactIdEqualTo(String contactId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'contactId',
      value: [contactId],
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      contactIdNotEqualTo(String contactId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'contactId',
        upper: [contactId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'contactId',
        lower: [contactId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'contactId',
        lower: [contactId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'contactId',
        upper: [contactId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause> emailEqualTo(
      String? email) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'email',
      value: [email],
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause> emailNotEqualTo(
      String? email) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'email',
        upper: [email],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'email',
        lower: [email],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'email',
        lower: [email],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'email',
        upper: [email],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause> emailIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'email',
      value: [null],
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      emailIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'email',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      firstNameEqualTo(String firstName) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'firstName',
      value: [firstName],
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      firstNameNotEqualTo(String firstName) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'firstName',
        upper: [firstName],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'firstName',
        lower: [firstName],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'firstName',
        lower: [firstName],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'firstName',
        upper: [firstName],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      phoneNumberEqualTo(String? phoneNumber) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'phoneNumber',
      value: [phoneNumber],
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      phoneNumberNotEqualTo(String? phoneNumber) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'phoneNumber',
        upper: [phoneNumber],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'phoneNumber',
        lower: [phoneNumber],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'phoneNumber',
        lower: [phoneNumber],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'phoneNumber',
        upper: [phoneNumber],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      phoneNumberIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'phoneNumber',
      value: [null],
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterWhereClause>
      phoneNumberIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'phoneNumber',
      lower: [null],
      includeLower: false,
    ));
  }
}

extension ContactEntityQueryFilter
    on QueryBuilder<ContactEntity, ContactEntity, QFilterCondition> {
  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'billingAddress',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressEqualTo(
    Address? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'billingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressGreaterThan(
    Address? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'billingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressLessThan(
    Address? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'billingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressBetween(
    Address? lower,
    Address? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'billingAddress',
      lower: _contactEntityAddressConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _contactEntityAddressConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressStartsWith(
    Address value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'billingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressEndsWith(
    Address value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'billingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressContains(Address value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'billingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      billingAddressMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'billingAddress',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      contactIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'contactId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      contactIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'contactId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      contactIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'contactId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      contactIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'contactId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      contactIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'contactId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      contactIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'contactId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      contactIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'contactId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      contactIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'contactId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      createTimeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      createTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      createTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createTime',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      createTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'email',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'email',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'email',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      firstNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      firstNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      firstNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      firstNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'firstName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      firstNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      firstNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'firstName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'gstin',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'gstin',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'gstin',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'gstin',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'gstin',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'gstin',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'gstin',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'gstin',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      gstinMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'gstin',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'lastName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastSyncAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastSyncAt',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastSyncAtEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastSyncAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastSyncAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastSyncAt',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      lastSyncAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastSyncAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'panCard',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'panCard',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'panCard',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'panCard',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'panCard',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'panCard',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'panCard',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'panCard',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      panCardMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'panCard',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'phoneNumber',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'phoneNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'phoneNumber',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'shippingAddress',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressEqualTo(
    Address? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'shippingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressGreaterThan(
    Address? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'shippingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressLessThan(
    Address? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'shippingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressBetween(
    Address? lower,
    Address? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'shippingAddress',
      lower: _contactEntityAddressConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _contactEntityAddressConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressStartsWith(
    Address value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'shippingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressEndsWith(
    Address value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'shippingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressContains(Address value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'shippingAddress',
      value: _contactEntityAddressConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      shippingAddressMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'shippingAddress',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      storeIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      storeIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      storeIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      storeIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      storeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      storeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      storeIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'storeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      storeIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'storeId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      syncStateEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncState',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      syncStateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'syncState',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      syncStateLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'syncState',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      syncStateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'syncState',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      updateTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'updateTime',
      value: null,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      updateTimeEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      updateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      updateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      updateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      versionEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      versionLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'version',
      value: value,
    ));
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterFilterCondition>
      versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'version',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ContactEntityQueryLinks
    on QueryBuilder<ContactEntity, ContactEntity, QFilterCondition> {}

extension ContactEntityQueryWhereSortBy
    on QueryBuilder<ContactEntity, ContactEntity, QSortBy> {
  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByBillingAddress() {
    return addSortByInternal('billingAddress', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByBillingAddressDesc() {
    return addSortByInternal('billingAddress', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByContactId() {
    return addSortByInternal('contactId', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByContactIdDesc() {
    return addSortByInternal('contactId', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByCreateTime() {
    return addSortByInternal('createTime', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return addSortByInternal('createTime', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByFirstName() {
    return addSortByInternal('firstName', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByFirstNameDesc() {
    return addSortByInternal('firstName', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByGstin() {
    return addSortByInternal('gstin', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByGstinDesc() {
    return addSortByInternal('gstin', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByLastName() {
    return addSortByInternal('lastName', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByLastNameDesc() {
    return addSortByInternal('lastName', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByLastSyncAt() {
    return addSortByInternal('lastSyncAt', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByLastSyncAtDesc() {
    return addSortByInternal('lastSyncAt', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByPanCard() {
    return addSortByInternal('panCard', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByPanCardDesc() {
    return addSortByInternal('panCard', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByPhoneNumber() {
    return addSortByInternal('phoneNumber', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByPhoneNumberDesc() {
    return addSortByInternal('phoneNumber', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByShippingAddress() {
    return addSortByInternal('shippingAddress', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByShippingAddressDesc() {
    return addSortByInternal('shippingAddress', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortBySyncState() {
    return addSortByInternal('syncState', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortBySyncStateDesc() {
    return addSortByInternal('syncState', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByVersion() {
    return addSortByInternal('version', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> sortByVersionDesc() {
    return addSortByInternal('version', Sort.desc);
  }
}

extension ContactEntityQueryWhereSortThenBy
    on QueryBuilder<ContactEntity, ContactEntity, QSortThenBy> {
  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByBillingAddress() {
    return addSortByInternal('billingAddress', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByBillingAddressDesc() {
    return addSortByInternal('billingAddress', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByContactId() {
    return addSortByInternal('contactId', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByContactIdDesc() {
    return addSortByInternal('contactId', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByCreateTime() {
    return addSortByInternal('createTime', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return addSortByInternal('createTime', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByFirstName() {
    return addSortByInternal('firstName', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByFirstNameDesc() {
    return addSortByInternal('firstName', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByGstin() {
    return addSortByInternal('gstin', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByGstinDesc() {
    return addSortByInternal('gstin', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByLastName() {
    return addSortByInternal('lastName', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByLastNameDesc() {
    return addSortByInternal('lastName', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByLastSyncAt() {
    return addSortByInternal('lastSyncAt', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByLastSyncAtDesc() {
    return addSortByInternal('lastSyncAt', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByPanCard() {
    return addSortByInternal('panCard', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByPanCardDesc() {
    return addSortByInternal('panCard', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByPhoneNumber() {
    return addSortByInternal('phoneNumber', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByPhoneNumberDesc() {
    return addSortByInternal('phoneNumber', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByShippingAddress() {
    return addSortByInternal('shippingAddress', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByShippingAddressDesc() {
    return addSortByInternal('shippingAddress', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByStoreId() {
    return addSortByInternal('storeId', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByStoreIdDesc() {
    return addSortByInternal('storeId', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenBySyncState() {
    return addSortByInternal('syncState', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenBySyncStateDesc() {
    return addSortByInternal('syncState', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByVersion() {
    return addSortByInternal('version', Sort.asc);
  }

  QueryBuilder<ContactEntity, ContactEntity, QAfterSortBy> thenByVersionDesc() {
    return addSortByInternal('version', Sort.desc);
  }
}

extension ContactEntityQueryWhereDistinct
    on QueryBuilder<ContactEntity, ContactEntity, QDistinct> {
  QueryBuilder<ContactEntity, ContactEntity, QDistinct>
      distinctByBillingAddress({bool caseSensitive = true}) {
    return addDistinctByInternal('billingAddress',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByContactId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('contactId', caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByCreateTime() {
    return addDistinctByInternal('createTime');
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('email', caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('firstName', caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByGstin(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('gstin', caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('lastName', caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByLastSyncAt() {
    return addDistinctByInternal('lastSyncAt');
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByPanCard(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('panCard', caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('phoneNumber', caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct>
      distinctByShippingAddress({bool caseSensitive = true}) {
    return addDistinctByInternal('shippingAddress',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByStoreId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('storeId', caseSensitive: caseSensitive);
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctBySyncState() {
    return addDistinctByInternal('syncState');
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByUpdateTime() {
    return addDistinctByInternal('updateTime');
  }

  QueryBuilder<ContactEntity, ContactEntity, QDistinct> distinctByVersion() {
    return addDistinctByInternal('version');
  }
}

extension ContactEntityQueryProperty
    on QueryBuilder<ContactEntity, ContactEntity, QQueryProperty> {
  QueryBuilder<ContactEntity, Address?, QQueryOperations>
      billingAddressProperty() {
    return addPropertyNameInternal('billingAddress');
  }

  QueryBuilder<ContactEntity, String, QQueryOperations> contactIdProperty() {
    return addPropertyNameInternal('contactId');
  }

  QueryBuilder<ContactEntity, DateTime, QQueryOperations> createTimeProperty() {
    return addPropertyNameInternal('createTime');
  }

  QueryBuilder<ContactEntity, String?, QQueryOperations> emailProperty() {
    return addPropertyNameInternal('email');
  }

  QueryBuilder<ContactEntity, String, QQueryOperations> firstNameProperty() {
    return addPropertyNameInternal('firstName');
  }

  QueryBuilder<ContactEntity, String?, QQueryOperations> gstinProperty() {
    return addPropertyNameInternal('gstin');
  }

  QueryBuilder<ContactEntity, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ContactEntity, String, QQueryOperations> lastNameProperty() {
    return addPropertyNameInternal('lastName');
  }

  QueryBuilder<ContactEntity, DateTime?, QQueryOperations>
      lastSyncAtProperty() {
    return addPropertyNameInternal('lastSyncAt');
  }

  QueryBuilder<ContactEntity, String?, QQueryOperations> panCardProperty() {
    return addPropertyNameInternal('panCard');
  }

  QueryBuilder<ContactEntity, String?, QQueryOperations> phoneNumberProperty() {
    return addPropertyNameInternal('phoneNumber');
  }

  QueryBuilder<ContactEntity, Address?, QQueryOperations>
      shippingAddressProperty() {
    return addPropertyNameInternal('shippingAddress');
  }

  QueryBuilder<ContactEntity, String, QQueryOperations> storeIdProperty() {
    return addPropertyNameInternal('storeId');
  }

  QueryBuilder<ContactEntity, int, QQueryOperations> syncStateProperty() {
    return addPropertyNameInternal('syncState');
  }

  QueryBuilder<ContactEntity, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return addPropertyNameInternal('updateTime');
  }

  QueryBuilder<ContactEntity, int, QQueryOperations> versionProperty() {
    return addPropertyNameInternal('version');
  }
}
