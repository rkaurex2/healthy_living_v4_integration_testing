// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:healthy_living/src/analytics/default_screen_view_analytics.dart'
    as _i390;
import 'package:healthy_living/src/analytics/screen_view_analytics.dart'
    as _i1043;
import 'package:healthy_living/src/core/di/healthy_living_di_module.dart'
    as _i1029;
import 'package:healthy_living/src/core/network/access_token_interceptor.dart'
    as _i798;
import 'package:healthy_living/src/core/network/console_log_network_interceptor.dart'
    as _i968;
import 'package:healthy_living_account/healthy_living_account.dart' as _i414;
import 'package:healthy_living_auth/healthy_living_auth.dart' as _i55;
import 'package:healthy_living_find/healthy_living_find.dart' as _i428;
import 'package:healthy_living_home/healthy_living_home.dart' as _i86;
import 'package:healthy_living_my_items/healthy_living_my_items.dart' as _i609;
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart'
    as _i126;
import 'package:healthy_living_scan/healthy_living_scan.dart' as _i145;
import 'package:healthy_living_shared/healthy_living_shared.dart' as _i544;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;
import 'package:storage/storage.dart' as _i431;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    await _i431.StoragePackageModule().init(gh);
    await _i372.NetworkPackageModule().init(gh);
    await _i544.HealthyLivingSharedPackageModule().init(gh);
    await _i55.HealthyLivingAuthPackageModule().init(gh);
    await _i86.HealthyLivingHomePackageModule().init(gh);
    await _i126.HealthyLivingProductDetailPackageModule().init(gh);
    await _i609.HealthyLivingMyItemsPackageModule().init(gh);
    await _i428.HealthyLivingFindPackageModule().init(gh);
    await _i414.HealthyLivingAccountPackageModule().init(gh);
    await _i145.HealthyLivingScanPackageModule().init(gh);
    final mainDIModule = _$MainDIModule();
    gh.singleton<_i544.EnvConfig>(() => mainDIModule.getEnvConfig());
    gh.factory<_i372.NetworkInterceptor>(
      () => _i798.AccessTokenInterceptor(gh<_i544.SessionRepository>()),
      instanceName: 'access_token_network_interceptor',
    );
    gh.lazySingleton<_i1043.ScreenViewAnalytics>(
      () => _i390.DefaultScreenViewAnalytics(gh<_i544.AnalyticsService>()),
    );
    gh.factory<_i372.NetworkInterceptor>(
      () => _i968.ConsoleLogNetworkInterceptor(),
      instanceName: 'console_log_network_interceptor',
    );
    gh.lazySingleton<_i372.RestClient>(
      () => mainDIModule.getUnauthenticatedRestClient(
        gh<_i372.RestClient>(),
        gh<_i544.EnvConfig>(),
        gh<_i372.NetworkInterceptor>(
          instanceName: 'console_log_network_interceptor',
        ),
      ),
      instanceName: 'unauthenticated_api_rest_client',
    );
    gh.lazySingleton<_i372.RestClient>(
      () => mainDIModule.getApiRestClient(
        gh<_i372.RestClient>(),
        gh<_i544.EnvConfig>(),
        gh<_i372.NetworkInterceptor>(
          instanceName: 'console_log_network_interceptor',
        ),
        gh<_i372.NetworkInterceptor>(
          instanceName: 'access_token_network_interceptor',
        ),
      ),
      instanceName: 'api_rest_client',
    );
    return this;
  }
}

class _$MainDIModule extends _i1029.MainDIModule {}
