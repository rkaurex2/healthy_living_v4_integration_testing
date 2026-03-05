class NetworkResponse<T> {
  final T? data;
  final int statusCode;
  final Map<String, List<String>> responseHeaders;
  final String? statusMessage;

  const NetworkResponse({
    required this.data,
    required this.statusCode,
    required this.responseHeaders,
    this.statusMessage,
  });

  String? getHeaderValue(String name) {
    final headerValues = responseHeaders[name.toLowerCase()];
    return headerValues?.isNotEmpty == true ? headerValues!.first : null;
  }

  bool get isSuccess => statusCode >= 200 && statusCode < 300;

  bool get isRedirect => statusCode >= 300 && statusCode < 400;

  bool get isClientError => statusCode >= 400 && statusCode < 500;

  bool get isServerError => statusCode >= 500;
}
