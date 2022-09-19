import 'package:isar/isar.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

// @Entity(tableName: 'product', indices: [
//   Index(value: ['description']),
//   Index(value: ['skuCode'], unique: true)
// ])
part 'product_entity.g.dart';

@Collection()
class ProductEntity {
  Id? id;

  @Index(unique: true, type: IndexType.value)
  String? productId;
  int storeId;

  final String displayName;
  final String? description;
  final double? listPrice;
  final double? salePrice;
  final double? purchasePrice;
  final String uom;
  final bool enable;
  final String? brand;
  final String? skuCode;
  final String? hsn;
  final double? tax;
  final String? taxGroupId;
  final List<String> imageUrl;
  final int syncState;
  late DateTime createTime;
  late DateTime? updateTime;
  late DateTime? lastSyncAt;
  late int version;

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get descriptionWords => Isar.splitWords(displayName);

  ProductEntity(
      {this.id,
      this.productId,
      required this.storeId,
      required this.displayName,
      this.description,
      required this.listPrice,
      required this.salePrice,
      this.purchasePrice,
      required this.uom,
      required this.enable,
      this.brand,
      this.skuCode,
      this.hsn,
      this.tax,
      this.taxGroupId,
      this.imageUrl = const [],
      required this.createTime,
      this.version = 1,
      this.syncState = 100,
      this.lastSyncAt,
      this.updateTime});
}
