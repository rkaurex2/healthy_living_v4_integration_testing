//@GeneratedMicroModule;NetworkPackageModule;package:network/src/di/network_di_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;
import 'package:network/src/di/network_di_module.dart' as _i403;
import 'package:network/src/dio_rest_client.dart' as _i302;

class NetworkPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final networkDIModule = _$NetworkDIModule();
    gh.factory<_i361.Dio>(() => networkDIModule.getDio());
    gh.factory<_i372.RestClient>(
        () => _i302.DioRestClient(dio: gh<_i361.Dio>()));
  }
}

class _$NetworkDIModule extends _i403.NetworkDIModule {}
