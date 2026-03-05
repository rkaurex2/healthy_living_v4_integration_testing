import 'package:network/network.dart';

abstract interface class RestClient {
  void setBaseUrl(String baseUrl);

  String? getBaseUrl();

  void addHeaders(Map<String, String> headers);

  void removeHeaders(List<String> keys);

  Map<String, String> getHeaders();

  void setConnectTimeout(Duration duration);

  void setReceiveTimeout(Duration duration);

  void setSendTimeout(Duration duration);

  void addInterceptor(NetworkInterceptor interceptor);

  void removeInterceptor(NetworkInterceptor interceptor);

  Future<NetworkResponse<T?>> get<T>(
    String endpoint, {
    required Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  });

  Future<NetworkResponse<T?>> post<T>(
    String endpoint, {
    required Object? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  });

  Future<NetworkResponse<T?>> put<T>(
    String endpoint, {
    required Object? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  });

  Future<NetworkResponse<T?>> delete<T>(
    String endpoint, {
    required Object? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  });

  Future<NetworkResponse<T?>> patch<T>(
    String endpoint, {
    required Object? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  });

  Future<NetworkResponse<T?>> postFile<T>(
    String endpoint, {
    required String fileKey,
    required String filePath,
    required String? fileName,
    required Map<String, Object>? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  });

  Future<NetworkResponse<T?>> patchFile<T>(
    String endpoint, {
    required String fileKey,
    required String filePath,
    required String? fileName,
    required Map<String, Object>? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  });
}
