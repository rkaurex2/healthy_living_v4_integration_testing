class RequestData {
  String? graphQLOperationName;
  final Uri uri;
  final String method;
  Map<String, dynamic> requestHeaders;
  dynamic body;
  final Map<String, dynamic> requestMetadata;

  RequestData({
    required this.graphQLOperationName,
    required this.uri,
    required this.method,
    required this.requestHeaders,
    required this.body,
    required this.requestMetadata,
  });
}

class ResponseData {
  String? graphQLOperationName;
  final Uri uri;
  final int? statusCode;
  final dynamic data;
  final Map<String, dynamic>? responseHeaders;
  final Map<String, dynamic> requestMetadata;

  ResponseData({
    required this.graphQLOperationName,
    required this.uri,
    required this.statusCode,
    required this.data,
    required this.responseHeaders,
    required this.requestMetadata,
  });
}

class ErrorData {
  String? graphQLOperationName;
  final String? errorMessage;
  final Uri uri;
  final int? statusCode;
  final Map<String, dynamic> requestMetadata;

  ErrorData({
    required this.graphQLOperationName,
    required this.errorMessage,
    required this.uri,
    required this.statusCode,
    required this.requestMetadata,
  });
}

class RequestHandler {
  final Function(RequestData requestData) next;
  final Function(RequestData requestData, Object error) reject;

  RequestHandler({required this.next, required this.reject});
}

class ResponseHandler {
  final Function(ResponseData responseData) next;
  final Function(ResponseData responseData, Object error) reject;

  ResponseHandler({required this.next, required this.reject});
}

class ErrorHandler {
  final Function(ErrorData errorData) next;
  final Function(ErrorData errorData, Object error) reject;

  ErrorHandler({required this.next, required this.reject});
}
