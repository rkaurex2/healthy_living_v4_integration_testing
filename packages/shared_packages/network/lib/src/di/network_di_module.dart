import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkDIModule {
  Dio getDio() {
    return Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
      ),
    );
  }
}
