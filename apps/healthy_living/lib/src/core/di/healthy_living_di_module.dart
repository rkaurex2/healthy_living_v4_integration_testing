import 'dart:io';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@module
abstract class MainDIModule {
  @Singleton()
  EnvConfig getEnvConfig() => EnvConfig();

  String _getUserAgent() {
    if (Platform.isAndroid) {
      return "android";
    } else if (Platform.isIOS) {
      return "ios";
    }
    return "android";
  }

  @lazySingleton
  @apiRestClient
  RestClient getApiRestClient(
    RestClient restClient,
    EnvConfig envConfig,
    @consoleLogNetworkInterceptor
    NetworkInterceptor consoleLogNetworkInterceptor,
    @accessTokenNetworkInterceptor
    NetworkInterceptor accessTokenNetworkInterceptor,
  ) {
    return restClient
      ..setBaseUrl(envConfig.apiURL)
      ..addHeaders({
        "Content-Type": "application/json",
        "Accept": "application/json",
        "user-agent": _getUserAgent(),
      })
      ..addInterceptor(consoleLogNetworkInterceptor)
      ..addInterceptor(accessTokenNetworkInterceptor);
  }

  @lazySingleton
  @unauthenticatedApiRestClient
  RestClient getUnauthenticatedRestClient(
    RestClient restClient,
    EnvConfig envConfig,
    @consoleLogNetworkInterceptor
    NetworkInterceptor consoleLogNetworkInterceptor,
  ) {
    return restClient
      ..setBaseUrl(envConfig.apiURL)
      ..addHeaders({
        "Content-Type": "application/json",
        "Accept": "application/json",
        "user-agent": _getUserAgent(),
      })
      ..addInterceptor(consoleLogNetworkInterceptor);
  }
}
