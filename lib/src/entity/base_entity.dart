import 'package:receipt_generator/src/entity/types.dart';

abstract class BaseEntity {

  Map<String, dynamic> toMap();

  String getPK();

  String getSK();

  String getStoreId();

  EntityType type();

  String lastUpdatedAtISOString();

  Map<String, String> getKeys() {
    return {
      "PK": getPK(),
      "SK": getSK(),
      "GPK1": "${getStoreId()}#${type().type}",
      "GSK1": lastUpdatedAtISOString()
    };
  }

  Map<String, dynamic> toDaoJson() {
    Map<String, dynamic> res = {};
    res.addAll(toMap());
    res.addAll(getKeys());
    return res;
  }

}