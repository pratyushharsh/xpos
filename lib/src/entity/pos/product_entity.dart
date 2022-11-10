import 'package:isar/isar.dart';

// @Entity(tableName: 'product', indices: [
//   Index(value: ['description']),
//   Index(value: ['skuCode'], unique: true)
// ])
part 'product_entity.g.dart';

@Collection()
class ProductEntity {
  Id? id;

  @Index(unique: true, type: IndexType.value, replace: true, name: 'product')
  String? productId;
  String? skuId;

  final String displayName;
  final String? description;
  final double? listPrice;
  final double? salePrice;
  final String uom;
  final bool enable;
  final String? brand;
  final String? skuCode;
  final String? hsn;
  final String? taxGroupId;
  final List<String> category;
  final List<String> imageUrl;
  late DateTime createTime;

  @Index(type: IndexType.value)
  DateTime? lastChangedAt;

  @Index(type: IndexType.value)
  DateTime? lastSyncAt;

  @Index(type: IndexType.value)
  int? syncState;

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get descriptionWords => Isar.splitWords(displayName);

  ProductEntity(
      {this.id,
      this.productId,
      required this.displayName,
      this.description,
      required this.listPrice,
      required this.salePrice,
      required this.uom,
      required this.enable,
      this.brand,
      this.skuCode,
      this.hsn,
      this.taxGroupId,
      this.category = const [],
      this.imageUrl = const [],
      required this.createTime,
      this.syncState,
      this.lastSyncAt,
      this.lastChangedAt,});
}
