import 'package:floor/floor.dart';

class DateTimeConverter extends TypeConverter<DateTime, int> {
  @override
  DateTime decode(int databaseValue) {
    return DateTime.fromMillisecondsSinceEpoch(databaseValue);
  }

  @override
  int encode(DateTime value) {
    return value.millisecondsSinceEpoch;
  }
}

class DateTimeNullConverter extends TypeConverter<DateTime?, int?> {
  @override
  DateTime? decode(int? databaseValue) {
    if (databaseValue != null) {
      return DateTime.fromMillisecondsSinceEpoch(databaseValue);
    }
    return null;
  }

  @override
  int? encode(DateTime? value) {
    if (value != null) {
      return value.millisecondsSinceEpoch;
    }
    return null;
  }
}