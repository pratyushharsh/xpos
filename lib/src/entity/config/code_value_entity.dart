import 'package:isar/isar.dart';

class CodeValueEntity {
  final String rtlLocId;
  final String category;
  final String code;
  final String value;
  final String? description;

  CodeValueEntity(
      {required this.rtlLocId, required this.category, required this.code, required this.value, this.description});
}
