class SyncDataRequest {
  final List<Map<String, dynamic>>? products;
  final List<Map<String, dynamic>>? transactions;

  SyncDataRequest({this.products, this.transactions});

  Map<String, dynamic> toMap() {
    return {
      "product": products,
      "transaction": transactions
    };
  }
}

class ImportDataFromServer {
  final String storeId;
  final String type;
  String? lastSyncAt;

  ImportDataFromServer({
    required this.storeId,
    required this.type,
    this.lastSyncAt
  });

  Map<String, dynamic> toMap() {
    return {
      'store_id': storeId,
      'type': type,
      'last_sync_at': lastSyncAt,
    };
  }
}