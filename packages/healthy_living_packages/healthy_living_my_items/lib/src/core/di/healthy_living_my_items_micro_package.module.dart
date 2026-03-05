//@GeneratedMicroModule;HealthyLivingMyItemsPackageModule;package:healthy_living_my_items/src/core/di/healthy_living_my_items_micro_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:healthy_living_my_items/src/data/data_source/default_my_item_remote_data_source.dart'
    as _i875;
import 'package:healthy_living_my_items/src/data/respository/default_my_items_repository.dart'
    as _i1066;
import 'package:healthy_living_my_items/src/domain/data_source/my_items_remote_data_source.dart'
    as _i737;
import 'package:healthy_living_my_items/src/domain/respository/my_items_repository.dart'
    as _i554;
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_bloc.dart'
    as _i169;
import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_bloc.dart'
    as _i668;
import 'package:healthy_living_my_items/src/ui/bloc/my_items_bloc.dart'
    as _i498;
import 'package:healthy_living_my_items/src/utils/my_items_utils.dart' as _i783;
import 'package:healthy_living_shared/healthy_living_shared.dart' as _i544;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;

class HealthyLivingMyItemsPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i783.MyItemsUtils>(() => _i783.MyItemsUtils());
    gh.lazySingleton<_i737.MyItemsRemoteDataSource>(() =>
        _i875.DefaultMyItemRemoteDataSource(
            restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client')));
    gh.factory<_i169.HistoryListBloc>(() => _i169.HistoryListBloc(
        repository: gh<_i544.HistoryProductRepository>()));
    gh.factory<_i668.InstantHazardBloc>(() => _i668.InstantHazardBloc(
        repository: gh<_i544.HistoryProductRepository>()));
    gh.lazySingleton<_i554.MyItemsRepository>(() =>
        _i1066.DefaultMyItemsRepository(
            dataSource: gh<_i737.MyItemsRemoteDataSource>()));
    gh.factory<_i498.MyItemsBloc>(() => _i498.MyItemsBloc(
          myItemsRepository: gh<_i554.MyItemsRepository>(),
          createListAnalytics: gh<_i544.CreateListAnalytics>(),
        ));
  }
}
