import 'package:dio/dio.dart';
import 'package:network/network.dart';

class NetworkInterceptorAdapter extends Interceptor {
  final NetworkInterceptor networkInterceptor;

  NetworkInterceptorAdapter(this.networkInterceptor);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    networkInterceptor.onRequest(
      RequestData(
        graphQLOperationName: null,
        uri: options.uri,
        method: options.method.toLowerCase(),
        requestHeaders: options.headers,
        body: options.data,
        requestMetadata: options.extra,
      ),
      RequestHandler(
        next: (RequestData updatedData) {
          // Updating request options with the modified data.
          final updatedOptions = options.copyWith(
            headers: updatedData.requestHeaders,
            data: updatedData.body,
          );

          handler.next(updatedOptions);
        },
        reject:
            (RequestData _, Object ex) => handler.reject(
              ex is DioException
                  ? ex
                  : DioException(
                    requestOptions: options,
                    error: ex,
                    message: ex.toString(),
                  ),
              true,
            ),
      ),
    );
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    networkInterceptor.onResponse(
      ResponseData(
        graphQLOperationName: null,
        uri: response.requestOptions.uri,
        statusCode: response.statusCode,
        data: response.data,
        responseHeaders: response.headers.map,
        requestMetadata: response.requestOptions.extra,
      ),
      ResponseHandler(
        next: (ResponseData updatedData) {
          // Updating response with the modified data.
          response.statusCode = updatedData.statusCode;
          response.data = updatedData.data;
          response.headers = response.headers;

          handler.next(response);
        },
        reject:
            (ResponseData _, Object ex) => handler.reject(
              ex is DioException
                  ? ex
                  : DioException(
                    requestOptions: response.requestOptions,
                    response: response,
                    error: ex,
                    message: ex.toString(),
                  ),
              true,
            ),
      ),
    );
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    networkInterceptor.onError(
      ErrorData(
        graphQLOperationName: null,
        errorMessage: err.message,
        uri: err.requestOptions.uri,
        statusCode: err.response?.statusCode,
        requestMetadata: err.requestOptions.extra,
      ),
      ErrorHandler(
        next: (ErrorData _) => handler.next(err),
        reject:
            (ErrorData _, Object ex) => handler.reject(
              ex is DioException
                  ? ex
                  : DioException(
                    requestOptions: err.requestOptions,
                    response: err.response,
                    type: err.type,
                    stackTrace: err.stackTrace,
                    error: ex,
                    message: ex.toString(),
                  ),
            ),
      ),
    );
  }
}
