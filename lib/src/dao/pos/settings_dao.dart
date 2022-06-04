import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/pos/setting_entity.dart';

import '../base_dao.dart';

@dao
abstract class SettingsDao extends AbstractDao<SettingEntity> {

  @Query('SELECT * FROM setting where category = :category and subCategory = :subCategory')
  Future<SettingEntity?> findSetting(String category, String subCategory);

  @Query('SELECT * FROM setting where category = :category')
  Future<List<SettingEntity>> findSettingsByCategory(String category);

  @Query('SELECT * FROM setting')
  Future<List<SettingEntity>> findAllSettingsByCategory();
}