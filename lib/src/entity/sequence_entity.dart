import 'package:floor/floor.dart';

@Entity(tableName: 'sequence')
class SequenceEntity {
  @PrimaryKey()
  final String name;
  final int nextSeq;

  SequenceEntity({required this.name, required this.nextSeq});
}
