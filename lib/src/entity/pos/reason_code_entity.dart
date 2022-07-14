import 'package:isar/isar.dart';

part 'reason_code_entity.g.dart';

@Collection()
class ReasonCodeEntity {
  @Id()
  final int? id;

  @Index(composite: [CompositeIndex("reasonCode")])
  final String reasonTypeCode;
  final String reasonCode;
  final String description;
  final String? parentCode;
  final bool commentRequired;

  ReasonCodeEntity({
    this.id,
    required this.reasonTypeCode,
    required this.reasonCode,
    required this.description,
    this.parentCode,
    required this.commentRequired,
  });
}

