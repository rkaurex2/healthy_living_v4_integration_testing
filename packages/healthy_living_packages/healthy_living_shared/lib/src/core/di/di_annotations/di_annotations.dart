import 'package:injectable/injectable.dart';

/// Create instances of @Named annotation to be used as custom annotation with
/// GetIt and Injectable.

const Named apiRestClient = Named("api_rest_client");

const Named unauthenticatedApiRestClient = Named(
  "unauthenticated_api_rest_client",
);

const Named consoleLogNetworkInterceptor = Named(
  "console_log_network_interceptor",
);

const Named accessTokenNetworkInterceptor = Named(
  "access_token_network_interceptor",
);
