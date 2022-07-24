import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'reason_code_entity.g.dart';

@Collection()
class ReasonCodeEntity extends Equatable {
  @Id()
  final int? id;

  @Index(composite: [CompositeIndex("reasonCode")])
  final String reasonTypeCode;
  final String reasonCode;
  final String description;
  final String? parentCode;
  final bool commentRequired;

  const ReasonCodeEntity({
    this.id,
    required this.reasonTypeCode,
    required this.reasonCode,
    required this.description,
    this.parentCode,
    required this.commentRequired,
  });

  @override
  String toString() {
    return 'ReasonCodeEntity{id: $id, reasonTypeCode: $reasonTypeCode, reasonCode: $reasonCode, description: $description, parentCode: $parentCode, commentRequired: $commentRequired}';
  }

  @override
  List<Object?> get props => [
    id,
    reasonTypeCode,
    reasonCode,
    description,
    parentCode,
    commentRequired,
  ];
}

