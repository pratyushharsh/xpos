import 'package:floor/floor.dart';

@Entity(
  tableName: 'setting',
  primaryKeys: ['category', 'subCategory'],
)
class SettingEntity {
  final String category;
  final String subCategory;
  final String value;
  final DateTime? createAt;
  final DateTime? updatedAt;

  SettingEntity(
      {required this.category,
      required this.subCategory,
      required this.value,
      this.createAt,
      this.updatedAt});
}
