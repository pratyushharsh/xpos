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
    return db.writeTxn(() => db.taxGroupEntitys.put(taxGroup));
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
    
    tg.taxRules = [...tg.taxRules, taxRule];

    await db.writeTxn(() async {
      await db.taxGroupEntitys.put(tg);
    });

    // await db.writeTxn((isar) => {
    //
    // });
  }

  Future<void> deleteTaxRule(TaxRuleEntity taxRule) async {

    if (taxRule.groupId == null) {
      log.severe('Tax group id is null');
      return;
    }

    var tg = await db.taxGroupEntitys.getByGroupId((taxRule.groupId!));

    if (tg == null) {
      log.severe('Tax group is not found');
      return;
    }

    tg.taxRules = tg.taxRules.where((element) => element.ruleName!.compareTo(taxRule.ruleName!) != 0).toList();

    await db.writeTxn(() async {
      await db.taxGroupEntitys.put(tg);
    });

    // await db.writeTxn((isar) => {
    //
    // });
  }

  Future<List<TaxGroupEntity>> getAllTaxGroups({bool loadRules = false}) async {
      var taxGroups = await db.taxGroupEntitys.where().findAll();
    return taxGroups;
  }

  Future<List<TaxRuleEntity>> getTaxRulesByGroupId(String groupId) async {
    var taxGroup = await db.taxGroupEntitys.getByGroupId(groupId);
    if (taxGroup == null) {
      log.severe('Tax group $groupId is not found');
      throw Exception('Tax group $groupId is not found');
    }
    return taxGroup.taxRules;
  }

  Future<TaxRuleEntity?> getTaxRulesByGroupIdAndRuleName(String groupId, String ruleName) async {
    var taxGroup = await db.taxGroupEntitys.getByGroupId(groupId);
    if (taxGroup == null) {
      log.severe('Tax group $groupId is not found');
      throw Exception('Tax group $groupId is not found');
    }
    return taxGroup.taxRules.firstWhere((element) => element.ruleName!.compareTo(ruleName) == 0);
  }
}