import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/model/api/api.dart';
import 'package:receipt_generator/src/model/api/create_business_response.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';

import '../entity/pos/entity.dart';

class BusinessRepository {
  final log = Logger('BusinessRepository');

  final Isar db;
  final RestApiClient restClient;

  BusinessRepository({required this.db, required this.restClient});

  Future<RetailLocationEntity> _findAndPersistBusiness(
      int businessId) async {
    try {
      var option = RestOptions(path: '/business/$businessId');
      var rawResp = await restClient.get(restOptions: option);
      if (rawResp.statusCode == 200) {
        try {
          var resp = CreateBusinessResponse.fromMap(
              restClient.parsedResponse(rawResp));

          var entity = RetailLocationEntity(
            rtlLocId: resp.businessId,
            version: 1,
            createTime: resp.createdAt,
            storeName: resp.name,
            storeNumber: '${resp.businessId}',
            storeContact: resp.phone,
            address1: resp.address1,
            address2: resp.address2,
            city: resp.city,
            state: resp.state,
            country: resp.country,
            pan: resp.pan,
            gst: resp.gst,
            currencyId: resp.currency,
            locale: resp.locale,
            postalCode: resp.postalCode,
          );
          await db.writeTxn((isar) => isar.retailLocationEntitys.put(entity));
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

  Future<RetailLocationEntity> getBusinessById(int businessId) async {
    try {

      var data = await db.retailLocationEntitys.get(businessId);

      if (data == null) {
        log.info('Cannot find business in the database');
        data = await _findAndPersistBusiness(businessId);
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
      await db.writeTxn((isar) => isar.retailLocationEntitys.put(entity));
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
            createTime: resp.createdAt,
            storeName: resp.name,
            storeNumber: '$resp.businessId',
            storeContact: resp.phone,
            address1: resp.address1,
            address2: resp.address2,
            city: resp.city,
            state: resp.state,
            country: resp.country,
            pan: resp.pan,
            gst: resp.gst,
            currencyId: resp.currency,
            locale: resp.locale,
            postalCode: resp.postalCode,
          );
          await db.writeTxn((isar) => isar.retailLocationEntitys.put(entity));
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
