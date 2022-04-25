class SyncDataRequest {
  final List<Map<String, dynamic>>? products;

  SyncDataRequest({this.products});

  Map<String, dynamic> toMap() {
    return {
      "product": products,
    };
  }
}