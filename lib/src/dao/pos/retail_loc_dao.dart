
import 'package:floor/floor.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';

import '../base_dao.dart';

@dao
abstract class RetailLocationDao extends AbstractDao<RetailLocationEntity> {

  @Query('SELECT * FROM rtl_loc where rtlLocId = :rtlLocId')
  Future<RetailLocationEntity?> findRetailLocById(String rtlLocId);

  @Query('SELECT * FROM rtl_loc')
  Future<List<RetailLocationEntity>> listAllRtlLocation();
}