import 'package:floor/floor.dart';

abstract class AbstractDao<T> {
  @insert
  Future<void> insertItem(T item);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateItem(T item);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertBulk(T item);
}