import 'package:logging/logging.dart';
import 'package:receipt_generator/src/config/code_value.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/util/helper/rest_api.dart';

import '../entity/entity.dart';
import 'app_database.dart';

class SettingsRepository {
  final log = Logger('BusinessRepository');

  final AppDatabase db;
  final RestApiClient restClient;

  SettingsRepository({required this.db, required this.restClient});

  Future<ReceiptSettingsModel> updateReceiptSetting(
      ReceiptSettingsModel req) async {
    try {
      if (req.storeNumber != null) {
        await db.settingDao.insertBulk(SettingEntity(
          category: SettingsCategory.receipt,
          subCategory: SettingsSubCategory.receiptPhoneNumber,
          value: req.storeNumber!,
        ));
      }

      if (req.tagLine != null) {
        await db.settingDao.insertBulk(SettingEntity(
          category: SettingsCategory.receipt,
          subCategory: SettingsSubCategory.receiptTagLine,
          value: req.tagLine!,
        ));
      }

      if (req.storeAddress != null) {
        await db.settingDao.insertBulk(SettingEntity(
          category: SettingsCategory.receipt,
          subCategory: SettingsSubCategory.receiptStoreAddress,
          value: req.storeAddress!,
        ));
      }

      if (req.footerTitle != null) {
        await db.settingDao.insertBulk(SettingEntity(
          category: SettingsCategory.receipt,
          subCategory: SettingsSubCategory.receiptFooterTitle,
          value: req.footerTitle!,
        ));
      }

      if (req.footerSubtitle != null) {
        await db.settingDao.insertBulk(SettingEntity(
          category: SettingsCategory.receipt,
          subCategory: SettingsSubCategory.receiptFooterSubTitle,
          value: req.footerSubtitle!,
        ));
      }
    } catch (e) {
      log.severe(e);
    }
    return req;
  }

  Future<ReceiptSettingsModel> getReceiptSettings() async {
    List<SettingEntity> res =
        await db.settingDao.findSettingsByCategory(SettingsCategory.receipt);

    return ReceiptSettingsModel(
      storeNumber: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptPhoneNumber == element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
      storeAddress: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptStoreAddress ==
                  element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
      tagLine: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptTagLine == element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
      footerTitle: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptFooterTitle == element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
      footerSubtitle: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptFooterSubTitle ==
                  element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
    );
  }
}
