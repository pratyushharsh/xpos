class TransactionStatus {
  static const String created = 'CREATED';
  static const String pending = 'PENDING';
  static const String approved = 'APPROVED';
  static const String rejected = 'REJECTED';
  static const String voided = 'VOIDED';
  static const String refunded = 'REFUNDED';
  static const String returned = 'RETURNED';
  static const String suspended = 'SUSPENDED';
  static const String completed = 'COMPLETED';
  static const String inProgress = 'IN_PROGRESS';
  static const String cancelled = 'CANCELLED';
  static const String error = 'ERROR';
  static const String unknown = 'UNKNOWN';
}

class TransactionType {
  static const String cashSale = "SALE";
  static const String saleReturn = "RETURN";
}
