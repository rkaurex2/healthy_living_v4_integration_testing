import 'package:network/src/types/models/network_models.dart';

abstract class NetworkInterceptor {
  void onRequest(RequestData requestData, RequestHandler handler) {
    handler.next(requestData);
  }

  void onResponse(ResponseData responseData, ResponseHandler handler) {
    handler.next(responseData);
  }

  void onError(ErrorData errorData, ErrorHandler handler) {
    handler.next(errorData);
  }
}
