import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/pos/employee_entity.dart';

import '../model/api/api.dart';
import '../model/api/get_employee_response.dart';
import '../util/helper/rest_api.dart';

class EmployeeRepository {
  final log = Logger('EmployeeRepository');

  final Isar db;
  final RestApiClient restClient;

  EmployeeRepository({required this.db, required this.restClient});

  Future<EmployeeEntity?> getEmployeeByUserId(String userId) async {
    try {
      var data = await db.employeeEntitys.where().employeeIdEqualTo(userId).findFirst();
      return data;
    } catch (e) {
      log.severe(e);
    }
    return null;
  }

  Future<List<UserBusiness>> getBusinessAssociatedWithUser(String userId) async {
    List<UserBusiness> userBusinesses = [];
    try {
      var option = RestOptions(path: '/user/$userId/business');
      var rawResp = await restClient.get(restOptions: option);
      if (rawResp.statusCode == 200) {
        var decode = json.decode(rawResp.body) as List;
        for(var item in decode) {
          userBusinesses.add(UserBusiness.fromJson(item));
        }
      }
    } catch (e) {
      log.severe(e);
    }
    return userBusinesses;
  }

  Future<EmployeeEntity?> getEmployeeByStoreAndUserId(String storeId, String userId) async {
    try {
      var option = RestOptions(path: '/business/$storeId/user/$userId');
      var rawResp = await restClient.get(restOptions: option);

      if (rawResp.statusCode == 200) {
        var resp = GetUserResponse.fromJson(restClient.parsedResponse(rawResp));

        EmployeeEntity emp = EmployeeEntity(
          employeeId: resp.employee.employeeId,
          firstName: resp.employee.firstName,
          middleName: resp.employee.middleName,
          lastName: resp.employee.lastName,
          locale: resp.employee.locale,
          email: resp.employee.email,
          phone: resp.employee.phone ?? resp.employee.employeeId,
          birthDate: resp.employee.dob,
          gender: resp.employee.gender,
          picture: resp.employee.picture
        );

        return emp;
      }
    } catch (e) {
      log.severe(e);
    }
    return null;
  }

  Future<List<StoreEmployee>> getEmployeeByStoreId(String storeId) async {
    List<StoreEmployee> storeEmployees = [];
    try {
      var option = RestOptions(path: '/business/$storeId/user');
      var rawResp = await restClient.get(restOptions: option);
      if (rawResp.statusCode == 200) {
        var decode = json.decode(rawResp.body) as List;
        for(var item in decode) {
          storeEmployees.add(StoreEmployee.fromJson(item));
        }
      }
    } catch (e) {
      rethrow;
    }
    return storeEmployees;
  }
}