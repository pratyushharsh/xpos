import 'package:floor/floor.dart';

@Entity(tableName: 'code_value', indices: [
  Index(
    value: ['category'],
  ),
  Index(
    value: ['code'],
  ),
], primaryKeys: [
  'rtlLocId',
  'category',
  'code'
])
class CodeValueEntity {
  final String rtlLocId;
  final String category;
  final String code;
  final String value;
  final String? description;

  CodeValueEntity(
      {required this.rtlLocId, required this.category, required this.code, required this.value, this.description});
}
