//@GeneratedMicroModule;HealthyLivingHomePackageModule;package:healthy_living_home/src/core/di/healthy_living_home_micro_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:healthy_living_home/src/analytics/default_home_analytics.dart'
    as _i774;
import 'package:healthy_living_home/src/analytics/home_analytics.dart' as _i406;
import 'package:healthy_living_home/src/data/data_source/default_home_remote_data_source.dart'
    as _i565;
import 'package:healthy_living_home/src/data/repository/default_home_repository.dart'
    as _i73;
import 'package:healthy_living_home/src/domain/data_source/home_remote_data_source.dart'
    as _i676;
import 'package:healthy_living_home/src/domain/respository/home_repository.dart'
    as _i139;
import 'package:healthy_living_home/src/ui/bloc/home_bloc.dart' as _i961;
import 'package:healthy_living_home/src/ui/bloc/just_verified_bloc.dart'
    as _i554;
import 'package:healthy_living_home/src/ui/bloc/recent_activity_bloc.dart'
    as _i413;
import 'package:healthy_living_home/src/ui/bloc/your_list_bloc.dart' as _i825;
import 'package:healthy_living_shared/healthy_living_shared.dart' as _i544;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;
import 'package:storage/storage.dart' as _i431;

class HealthyLivingHomePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i406.HomeAnalytics>(
        () => _i774.DefaultHomeAnalytics(gh<_i544.AnalyticsService>()));
    gh.lazySingleton<_i676.HomeRemoteDataSource>(
        () => _i565.DefaultHomeRemoteDataSource(
              restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client'),
              unAuthenticateRestClient: gh<_i372.RestClient>(
                  instanceName: 'unauthenticated_api_rest_client'),
            ));
    gh.lazySingleton<_i139.HomeRepository>(() => _i73.DefaultHomeRepository(
        dataSource: gh<_i676.HomeRemoteDataSource>()));
    gh.factory<_i554.JustVerifiedBloc>(() =>
        _i554.JustVerifiedBloc(homeRepository: gh<_i139.HomeRepository>()));
    gh.factory<_i825.YourListBloc>(
        () => _i825.YourListBloc(homeRepository: gh<_i139.HomeRepository>()));
    gh.factory<_i961.HomeBloc>(() => _i961.HomeBloc(
          sessionRepository: gh<_i544.SessionRepository>(),
          homeRepository: gh<_i139.HomeRepository>(),
          keyValueStorage: gh<_i431.KeyValueStorage>(),
          userDataRepository: gh<_i544.UserDataRepository>(),
          createListAnalytics: gh<_i544.CreateListAnalytics>(),
        ));
    gh.factory<_i413.RecentActivityBloc>(() => _i413.RecentActivityBloc(
          homeRepository: gh<_i139.HomeRepository>(),
          sessionRepository: gh<_i544.SessionRepository>(),
        ));
  }
}
