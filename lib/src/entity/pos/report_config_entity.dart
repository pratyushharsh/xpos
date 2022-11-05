import 'package:isar/isar.dart';

part 'report_config_entity.g.dart';

@Collection()
class ReportConfigEntity {
  Id? id;

  @Index(composite: [CompositeIndex("subtype")], unique: true, replace: true)
  final String type;
  final String subtype;
  List<ReportColumnConfigEntity> columnConfig;
  String? stringValue;
  bool? boolValue;
  int? intValue;
  double? doubleValue;
  DateTime? dateValue;

  ReportConfigEntity(
      {required this.type,
      required this.subtype,
      this.columnConfig = const [],
      this.stringValue,
      this.boolValue,
      this.intValue,
      this.doubleValue,
      this.dateValue});
}

@Embedded()
class ReportColumnConfigEntity {
  String? key;
  String? title;
  int? flex;

  @Enumerated(EnumType.name)
  ColumnAlignment? align;

  @override
  String toString() {
    return '$title';
  }

  ReportColumnConfigEntity(
      {this.key, this.title, this.flex, this.align});

  ReportColumnConfigEntity copyWith({
    String? key,
    String? title,
    int? flex,
    ColumnAlignment? align,
  }) {
    return ReportColumnConfigEntity(
      key: key ?? this.key,
      title: title ?? this.title,
      flex: flex ?? this.flex,
      align: align ?? this.align,
    );
  }
}

enum ColumnAlignment {
  left,
  right,
  center,
  justify
}
