import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:network/src/types/interceptors/network_interceptor_adapter.dart';
import 'package:network/src/util/dio_extensions.dart';

@Injectable(as: RestClient)
class DioRestClient implements RestClient {
  @visibleForTesting
  final Dio dio;

  final _interceptorAdapters =
      <NetworkInterceptor, NetworkInterceptorAdapter>{};

  @factoryMethod
  DioRestClient({required this.dio});

  @override
  Future<NetworkResponse<T?>> get<T>(
    String endpoint, {
    required Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  }) async {
    return _executeRequest<T>(
      () => dio.get(
        endpoint,
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
      fromJson,
    );
  }

  @override
  Future<NetworkResponse<T?>> post<T>(
    String endpoint, {
    required Object? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  }) async {
    return _executeRequest<T>(
      () => dio.post(
        endpoint,
        data: body,
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
      fromJson,
    );
  }

  @override
  Future<NetworkResponse<T?>> put<T>(
    String endpoint, {
    required Object? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  }) async {
    return _executeRequest<T>(
      () => dio.put(
        endpoint,
        data: body,
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
      fromJson,
    );
  }

  @override
  Future<NetworkResponse<T?>> delete<T>(
    String endpoint, {
    required Object? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  }) async {
    return _executeRequest<T>(
      () => dio.delete(
        endpoint,
        data: body,
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
      fromJson,
    );
  }

  @override
  Future<NetworkResponse<T?>> patch<T>(
    String endpoint, {
    required Object? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  }) async {
    return _executeRequest<T>(
      () => dio.patch(
        endpoint,
        data: body,
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
      fromJson,
    );
  }

  Future<NetworkResponse<T?>> _executeRequest<T>(
    Future<Response> Function() sendRequest,
    T? Function(dynamic)? fromJson,
  ) async {
    try {
      // Sending request on server.
      final response = await sendRequest();
      int statusCode = response.statusCode ?? 0;

      final isSuccess = statusCode >= 200 && statusCode < 300;

      if (isSuccess) {
        return onSuccess<T>(response, fromJson);
      } else {
        // If client-side error
        if (statusCode >= 400 && statusCode < 500) {
          throw NetworkClientSideException(
            message: "Client-side error ${response.statusMessage}",
            statusCode: statusCode,
            originalError: null,
            errorMessage: NetworkErrorParser.extract(NetworkErrorParser.safeGetMessage(response.data)),
            responseBody: response.data,
          );
        } else if (statusCode >= 500 && statusCode < 600) {
          // If server-side error
          throw NetworkServerSideException(
            message: "Server-side error ${response.statusMessage}",
            statusCode: statusCode,
            originalError: null,
            errorMessage: NetworkErrorParser.extract(NetworkErrorParser.safeGetMessage(response.data)),
            responseBody: response.data,
          );
        } else {
          // If any other error
          throw UnknownNetworkException(
            message: "Unknown error: ${response.statusMessage}",
            statusCode: statusCode,
            originalError: null,
            errorMessage: NetworkErrorParser.extract(NetworkErrorParser.safeGetMessage(response.data)),
            responseBody: response.data,
          );
        }
      }
    } on DioException catch (ex) {
      // Not logging error here as this should be logged by console interceptors.
      throw ex.toNetworkException();
    } catch (ex) {
      // Not logging error here as this should be logged by console interceptors.
      if (ex is NetworkException) {
        rethrow;
      } else {
        throw UnknownNetworkException(
          message: ex.toString(),
          statusCode: null,
          originalError: ex,
        );
      }
    }
  }

  NetworkResponse<T?> onSuccess<T>(
    Response response,
    T? Function(dynamic)? fromJson,
  ) {
    final responseHeaders = <String, List<String>>{};
    response.headers.forEach((name, values) {
      responseHeaders[name.toLowerCase()] = values;
    });

    final responseBody =
        fromJson != null ? fromJson(response.data) : response.data as T?;

    return NetworkResponse<T?>(
      data: responseBody,
      statusCode: response.statusCode ?? 0,
      responseHeaders: responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  void setBaseUrl(String baseUrl) {
    dio.options.baseUrl = baseUrl;
  }

  @override
  String? getBaseUrl() {
    return dio.options.baseUrl;
  }

  @override
  void addHeaders(Map<String, String> headers) {
    dio.options.headers.addAll(headers);
  }

  @override
  void removeHeaders(List<String> keys) {
    for (final key in keys) {
      dio.options.headers.remove(key);
    }
  }

  @override
  Map<String, String> getHeaders() {
    return dio.options.headers.map(
      (key, value) => MapEntry(key, value.toString()),
    );
  }

  @override
  void setConnectTimeout(Duration duration) {
    dio.options.connectTimeout = duration;
  }

  @override
  void setReceiveTimeout(Duration duration) {
    dio.options.receiveTimeout = duration;
  }

  @override
  void setSendTimeout(Duration duration) {
    dio.options.sendTimeout = duration;
  }

  @override
  void addInterceptor(NetworkInterceptor interceptor) {
    final adapter = NetworkInterceptorAdapter(interceptor);
    _interceptorAdapters[interceptor] = adapter;
    dio.interceptors.add(adapter);
  }

  @override
  void removeInterceptor(NetworkInterceptor interceptor) {
    final adapter = _interceptorAdapters.remove(interceptor);
    if (adapter != null) {
      dio.interceptors.remove(adapter);
    }
  }

  @override
  Future<NetworkResponse<T?>> postFile<T>(
    String endpoint, {
    required String fileKey,
    required String filePath,
    required String? fileName,
    required Map<String, Object>? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic)? fromJson,
  }) async {
    final multipartFile = await MultipartFile.fromFile(
      filePath,
      filename: fileName,
    );

    final formData = FormData.fromMap({fileKey: multipartFile, ...?body});

    return post<T?>(
      endpoint,
      body: formData,
      queryParams: queryParams,
      headers: headers,
      fromJson: fromJson,
    );
  }

  @override
  Future<NetworkResponse<T?>> patchFile<T>(
    String endpoint, {
    required String fileKey,
    required String filePath,
    required String? fileName,
    required Map<String, Object>? body,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T? Function(dynamic p1)? fromJson,
  }) async{
    final multipartFile = await MultipartFile.fromFile(
      filePath,
      filename: fileName,
    );

    final formData = FormData.fromMap({fileKey: multipartFile, ...?body});

    return patch<T?>(
      endpoint,
      body: formData,
      queryParams: queryParams,
      headers: headers,
      fromJson: fromJson,
    );
  }
}
