import 'package:flutter/foundation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable(as: NetworkInterceptor)
@consoleLogNetworkInterceptor
class ConsoleLogNetworkInterceptor extends NetworkInterceptor {
  @override
  void onRequest(RequestData requestData, RequestHandler handler) async {
    try {
      debugPrint(
        'NETWORK::REQUEST:: ${requestData.method} ${requestData.uri}'
        '\nBody: ${requestData.body}\nRequestHeaders: ${requestData.requestHeaders}',
      );
    } catch (ex, trace) {
      debugPrintStack(label: ex.toString(), stackTrace: trace);
    }
    super.onRequest(requestData, handler);
  }

  @override
  void onResponse(ResponseData responseData, ResponseHandler handler) {
    try {
      debugPrint(
        '✅NETWORK::SUCCESS:: ${responseData.uri}'
        '\nStatusCode:${responseData.statusCode}\nResponse: ${responseData.data}',
      );
    } catch (ex, trace) {
      debugPrintStack(label: ex.toString(), stackTrace: trace);
    }
    super.onResponse(responseData, handler);
  }

  @override
  void onError(ErrorData errorData, ErrorHandler handler) {
    try {
      debugPrint(
        '❌NETWORK::ERROR:: ${errorData.uri}'
        '\nStatusCode:${errorData.statusCode}\nError: ${errorData.errorMessage}',
      );
    } catch (ex, trace) {
      debugPrintStack(label: ex.toString(), stackTrace: trace);
    }
    super.onError(errorData, handler);
  }
}
