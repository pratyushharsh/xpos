import 'package:isar/isar.dart';

import 'tax_rule_entity.dart';

part 'tax_group_entity.g.dart';

@Collection()
class TaxGroupEntity {
  @Id()
  final int? id;

  @Index(unique: true)
  final String groupId;
  final String name;
  final String description;

  final taxRules = IsarLinks<TaxRuleEntity>();

  TaxGroupEntity(
      {this.id,
      required this.groupId,
      required this.name,
      required this.description});
}