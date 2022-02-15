
import 'package:floor/floor.dart';
import 'package:receipt_generator/src/dao/base_dao.dart';
import 'package:receipt_generator/src/entity/contact_entity.dart';

@dao
abstract class ContactDao extends AbstractDao<ContactEntity> {

  @Query('SELECT * FROM customer')
  Future<List<ContactEntity>> findAllCustomers();

  @Query('SELECT * FROM customer where firstName like :filter or lastName like :filter limit 10')
  Future<List<ContactEntity>> findAllProductsByName(String filter);


}