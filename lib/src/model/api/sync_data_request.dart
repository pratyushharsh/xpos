class SyncDataRequest {
  final List<Map<String, dynamic>>? products;

  SyncDataRequest({this.products});

  Map<String, dynamic> toMap() {
    return {
      "product": products,
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