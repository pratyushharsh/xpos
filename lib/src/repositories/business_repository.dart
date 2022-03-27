import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:receipt_generator/src/model/api/api.dart';
import 'package:receipt_generator/src/model/api/create_business_response.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';

import '../entity/entity.dart';

class BusinessRepository {
  final log = Logger('BusinessRepository');

  final AppDatabase db;
  final RestApiClient restClient;

  BusinessRepository({required this.db, required this.restClient});

  Future<RetailLocationEntity> getBusinessById(String businessId) async {
    try {
      var data = await db.retailLocationDao.findRetailLocById(businessId);

      if (data == null) {
        throw 'Cannot find business in the database';
      }

      return data;
    } catch (e) {
      log.severe(e);
      throw 'Error while getting business';
    }
  }

  Future<RetailLocationEntity> updateBusiness(
      RetailLocationEntity entity) async {
    try {
      await db.retailLocationDao.insertBulk(entity);
      return entity;
    } catch (e) {
      log.severe(e);
      throw 'Error while updating business';
    }
  }

  Future<RetailLocationEntity> createNewBusiness(
      CreateBusinessRequest request) async {
    try {
      var option =
          RestOptions(path: '/business', body: json.encode(request.toMap()));
      var rawResp = await restClient.post(restOptions: option);
      if (rawResp.statusCode == 200) {
        try {
          var resp = CreateBusinessResponse.fromMap(
              restClient.parsedResponse(rawResp));

          var entity = RetailLocationEntity(
            rtlLocId: resp.businessId,
            version: 1,
            createTime: DateTime.parse(resp.createdAt),
            storeName: resp.name,
            storeNumber: resp.businessId,
            address1: resp.address
          );
          await db.retailLocationDao.insertBulk(entity);
          return entity;
        } catch (e) {
          log.severe(e);
          throw 'Error While Parsing business';
        }
      } else {
        throw 'Unable to create new business. Contact Admin';
      }
    } catch (e) {
      log.severe(e);
      throw 'Error while creating business';
    }
  }
}
