sealed class NetworkException implements Exception {
  final String message;
  final int? statusCode;
  final Object? originalError;
  final String? errorMessage;
  final dynamic responseBody;

  const NetworkException({
    required this.message,
    required this.statusCode,
    required this.originalError,
    this.errorMessage,
    this.responseBody,
  });

  @override
  String toString() =>
      "Network::$runtimeType::message: $message, statusCode: $statusCode,"
      " originalError: $originalError responseBody: $responseBody";
}

class NetworkConnectionException extends NetworkException {
  final bool isTimeout;

  NetworkConnectionException({
    required this.isTimeout,
    required super.message,
    required super.statusCode,
    required super.originalError,
    super.errorMessage,
    super.responseBody,
  });

  @override
  String toString() {
    return "${super.toString()}, isTimeout: $isTimeout";
  }
}

class NetworkClientSideException extends NetworkException {
  NetworkClientSideException({
    required super.message,
    required super.statusCode,
    required super.originalError,
    super.errorMessage,
    super.responseBody,
  });
}

class NetworkServerSideException extends NetworkException {
  NetworkServerSideException({
    required super.message,
    required super.statusCode,
    required super.originalError,
    super.errorMessage,
    super.responseBody,
  });
}

class NetworkRequestCancelException extends NetworkException {
  NetworkRequestCancelException({
    required super.message,
    required super.statusCode,
    required super.originalError,
    super.errorMessage,
    super.responseBody,
  });
}

class UnknownNetworkException extends NetworkException {
  UnknownNetworkException({
    required super.message,
    required super.statusCode,
    required super.originalError,
    super.errorMessage,
    super.responseBody,
  });
}
