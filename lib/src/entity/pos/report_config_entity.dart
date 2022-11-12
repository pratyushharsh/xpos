import 'package:isar/isar.dart';

part 'report_config_entity.g.dart';

@Collection()
class ReportConfigEntity {
  Id? id;

  @Index(composite: [CompositeIndex("subtype")], unique: true, replace: true)
  final String type;
  final String subtype;
  List<ReportFieldConfigEntity> columnConfig;
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
class ReportFieldConfigEntity {
  String? key;
  String? title;
  int? flex;
  String? defaultValue;

  @Enumerated(EnumType.name)
  ColumnAlignment? align;

  @override
  String toString() {
    return '$title';
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'title': title,
      'flex': flex,
      'default': defaultValue,
      'align': align?.value,
    };
  }

  static ReportFieldConfigEntity fromMap(Map<String, dynamic> data) {
    return ReportFieldConfigEntity(
      key: data['key'],
      title: data['title'],
      flex: data['flex'],
      defaultValue: data['default'],
      align: data['align'],
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReportFieldConfigEntity &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          title == other.title;

  @override
  int get hashCode =>
      key.hashCode ^ title.hashCode;

  ReportFieldConfigEntity copyWith({
    String? key,
    String? title,
    int? flex,
    ColumnAlignment? align,
    String? defaultValue,
  }) {
    return ReportFieldConfigEntity(
      key: key ?? this.key,
      title: title ?? this.title,
      flex: flex ?? this.flex,
      align: align ?? this.align,
      defaultValue: defaultValue ?? this.defaultValue,
    );
  }

  ReportFieldConfigEntity(
      {this.key, this.title, this.flex, this.align, this.defaultValue});
}

enum ColumnAlignment {
  left("left"),
  right("right"),
  center("center"),
  justify("justify");

  const ColumnAlignment(this.value);
  final String value;
}
