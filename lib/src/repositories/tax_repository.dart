import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/pos/tax_rule_entity.dart';

import '../entity/pos/tax_group_entity.dart';
import '../util/helper/rest_api.dart';

class TaxRepository {
  final log = Logger('TaxRepository');

  final Isar db;
  final RestApiClient restClient;

  TaxRepository({required this.db, required this.restClient});

  Future<int> createNewTaxGroup(TaxGroupEntity taxGroup) async {
    return db.writeTxn((isar) => isar.taxGroupEntitys.put(taxGroup, replaceOnConflict: true));
  }

  Future<void> createNewTaxRule(TaxGroupEntity taxGroup, TaxRuleEntity taxRule) async {

    if (taxGroup.id == null) {
      log.severe('Tax group id is null');
      return;
    }

    var tg = await db.taxGroupEntitys.get(taxGroup.id!);

    if (tg == null) {
      log.severe('Tax group is not found');
      return;
    }

    await tg.taxRules.load();
    tg.taxRules.add(taxRule);

    db.writeTxn((isar) async {
      await tg.taxRules.save();
    });

    // await db.writeTxn((isar) => {
    //
    // });
  }

  Future<void> deleteTaxRule(TaxGroupEntity taxGroup, TaxRuleEntity taxRule) async {

    if (taxGroup.id == null) {
      log.severe('Tax group id is null');
      return;
    }

    var tg = await db.taxGroupEntitys.get(taxGroup.id!);

    if (tg == null) {
      log.severe('Tax group is not found');
      return;
    }

    await tg.taxRules.load();
    tg.taxRules.remove(taxRule);

    db.writeTxn((isar) async {
      await isar.taxRuleEntitys.delete(taxRule.id!);
      await tg.taxRules.save();
    });

    // await db.writeTxn((isar) => {
    //
    // });
  }

  Future<List<TaxGroupEntity>> getAllTaxGroups({bool loadRules = false}) async {
      var taxGroups = await db.taxGroupEntitys.where().findAll();
      if (loadRules) {
        for (var taxGroup in taxGroups) {
          await taxGroup.taxRules.load();
        }
      }
    return taxGroups;
  }

  Future<List<TaxRuleEntity>> getTaxRulesByGroupId(String groupId) {
    return db.taxRuleEntitys.where().groupIdEqualTo(groupId).findAll();
  }

  Future<TaxRuleEntity?> getTaxRulesByGroupIdAndRuleName(String groupId, String ruleName) {
    return db.taxRuleEntitys.where().groupIdRuleNameEqualTo(groupId, ruleName).findFirst();
  }
}