import 'package:isar/isar.dart';

part 'code_value_entity.g.dart';

@Collection()
class CodeValueEntity {

  final int? id;

  @Index(type: IndexType.value)
  @Index(composite: [CompositeIndex("code")], unique: true)
  final String category;
  final String code;
  final String value;
  final String? description;

  CodeValueEntity(
      { this.id, required this.category, required this.code, required this.value, this.description});
}
