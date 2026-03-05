class NetworkErrorParser {
  /// Safely extracts the error message from response data.
  /// Checks both "message" and "error" keys to support different API formats.
  /// Returns null if data is not a Map (e.g., HTML or plain text error responses).
  static dynamic safeGetMessage(dynamic data) {
    if (data is! Map) return null;
    return data["message"] ?? data["error"];
  }

  static String? extract(dynamic messageData) {
    if (messageData == null) return null;

    if (messageData is String) {
      return messageData;
    } else if (messageData is List && messageData.isNotEmpty) {
      return messageData[0].toString();
    } else {
      return messageData.toString();
    }
  }
}