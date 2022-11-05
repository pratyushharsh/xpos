import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

import '../entity/pos/entity.dart';
import '../util/helper/rest_api.dart';

class CustomerRepository {
  final log = Logger('CustomerRepository');

  final Isar db;
  final RestApiClient restClient;

  CustomerRepository({required this.db, required this.restClient});

  Future<void> createOrUpdateCustomer(ContactEntity customer) async {
    try {
      db.writeTxn(() => db.contactEntitys.putByContactId(customer));
    } catch (e) {
      log.severe(e);
    }
  }

  Future<ContactEntity?> getCustomerById(String customerId) async {
    try {
      var data = await db.contactEntitys
          .where()
          .contactIdEqualTo(customerId)
          .findFirst();
      return data;
    } catch (e) {
      log.severe(e);
    }
    return null;
  }

  Future<List<TransactionHeaderEntity>> getPurchaseListByCustomerId(String customerId) {
    return db.transactionHeaderEntitys.where().customerIdEqualTo(customerId).findAll();
  }
}