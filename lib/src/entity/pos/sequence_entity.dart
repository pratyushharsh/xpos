import 'package:isar/isar.dart';

part 'sequence_entity.g.dart';

enum SequenceType {
  item,
  trans,
  customer
}

@Collection()
class SequenceEntity {
  final Id id;

  final String name;
  final int nextSeq;

  SequenceEntity({required this.id, required this.name, required this.nextSeq});

  SequenceEntity copyWith({
    int? nextSeq,
  }) {
    return SequenceEntity(
      nextSeq: nextSeq ?? this.nextSeq,
      id: id,
      name: name
    );
  }
}