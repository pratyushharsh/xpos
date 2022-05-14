
import 'package:floor/floor.dart';
import 'package:receipt_generator/src/dao/base_dao.dart';
import 'package:receipt_generator/src/entity/contact_entity.dart';

@dao
abstract class ContactDao extends AbstractDao<ContactEntity> {

  @Query('SELECT * FROM customer')
  Future<List<ContactEntity>> findAllCustomers();

  @Query('SELECT * FROM customer where name like :filter or phoneNumber like :filter or email like :filter limit 10')
  Future<List<ContactEntity>> findAllProductsByName(String filter);

  @Query('SELECT * FROM customer where syncState = :status')
  Future<List<ContactEntity>> getCustomerByStatus(int status);
}