import 'package:dio/dio.dart';
import 'package:network/network.dart';

extension DioExceptionExtension on DioException {
  NetworkException toNetworkException() {
    switch (type) {
      case DioExceptionType.badCertificate:
        return NetworkConnectionException(
          isTimeout: false,
          message: toString(),
          statusCode: null,
          originalError: this,
        );
      case DioExceptionType.connectionError:
        return NetworkConnectionException(
          isTimeout: false,
          message: toString(),
          statusCode: null,
          originalError: this,
        );
      case DioExceptionType.connectionTimeout:
        return NetworkConnectionException(
          isTimeout: true,
          message: toString(),
          statusCode: null,
          originalError: this,
        );
      case DioExceptionType.sendTimeout:
        return NetworkConnectionException(
          isTimeout: true,
          message: toString(),
          statusCode: null,
          originalError: this,
        );
      case DioExceptionType.receiveTimeout:
        return NetworkConnectionException(
          isTimeout: true,
          message: toString(),
          statusCode: null,
          originalError: this,
        );
      case DioExceptionType.badResponse:
        final statusCode = response?.statusCode ?? 0;

        if (statusCode >= 400 && statusCode < 500) {
          return NetworkClientSideException(
            message: toString(),
            statusCode: response?.statusCode,
            originalError: this,
            errorMessage: NetworkErrorParser.extract(NetworkErrorParser.safeGetMessage(response?.data)),
            responseBody: response?.data,
          );
        } else if (statusCode >= 500 && statusCode < 600) {
          return NetworkServerSideException(
            message: toString(),
            statusCode: response?.statusCode,
            originalError: this,
            errorMessage: NetworkErrorParser.extract(NetworkErrorParser.safeGetMessage(response?.data)),
            responseBody: response?.data,
          );
        } else {
          return UnknownNetworkException(
            message: toString(),
            statusCode: response?.statusCode,
            originalError: this,
            errorMessage: NetworkErrorParser.extract(NetworkErrorParser.safeGetMessage(response?.data)),
            responseBody: response?.data,
          );
        }
      case DioExceptionType.cancel:
        return NetworkRequestCancelException(
          message: toString(),
          statusCode: null,
          originalError: this,
        );
      default:
        return UnknownNetworkException(
          message: toString(),
          statusCode: response?.statusCode,
          originalError: this,
          errorMessage: NetworkErrorParser.extract(NetworkErrorParser.safeGetMessage(response?.data)),
          responseBody: response?.data,
        );
    }
  }
}
