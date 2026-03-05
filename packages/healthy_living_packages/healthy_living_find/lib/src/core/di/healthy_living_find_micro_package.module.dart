//@GeneratedMicroModule;HealthyLivingFindPackageModule;package:healthy_living_find/src/core/di/healthy_living_find_micro_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:healthy_living_find/healthy_living_find.dart' as _i428;
import 'package:healthy_living_find/src/analytics/browse_analytics.dart'
    as _i131;
import 'package:healthy_living_find/src/analytics/default_browse_analytics.dart'
    as _i869;
import 'package:healthy_living_find/src/analytics/default_search_analytics.dart'
    as _i672;
import 'package:healthy_living_find/src/analytics/search_analytics.dart'
    as _i105;
import 'package:healthy_living_find/src/data/data_source/default_universal_search_remote_data_source.dart'
    as _i109;
import 'package:healthy_living_find/src/data/repository/default_universal_search_repository.dart'
    as _i112;
import 'package:healthy_living_find/src/domain/data_source/universal_search_remote_data_source.dart'
    as _i20;
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart'
    as _i101;
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_bloc.dart'
    as _i1038;
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_bloc.dart'
    as _i297;
import 'package:healthy_living_find/src/ui/bloc/browse/browse_bloc.dart'
    as _i319;
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_bloc.dart'
    as _i433;
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_bloc.dart'
    as _i379;
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_bloc.dart'
    as _i285;
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_bloc.dart'
    as _i171;
import 'package:healthy_living_find/src/ui/bloc/universal_search_bloc.dart'
    as _i109;
import 'package:healthy_living_shared/healthy_living_shared.dart' as _i544;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;

class HealthyLivingFindPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i105.SearchAnalytics>(
        () => _i672.DefaultSearchAnalytics(gh<_i544.AnalyticsService>()));
    gh.lazySingleton<_i131.BrowseAnalytics>(
        () => _i869.DefaultBrowseAnalytics(gh<_i544.AnalyticsService>()));
    gh.lazySingleton<_i20.UniversalSearchRemoteDataSource>(
        () => _i109.DefaultUniversalSearchRemoteDataSource(
              restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client'),
              filterUtils: gh<_i544.FilterUtils>(),
            ));
    gh.factory<_i109.UniversalSearchBloc>(
        () => _i109.UniversalSearchBloc(filterUtils: gh<_i544.FilterUtils>()));
    gh.lazySingleton<_i101.UniversalSearchRepository>(() =>
        _i112.DefaultUniversalSearchRepository(
            dataSource: gh<_i20.UniversalSearchRemoteDataSource>()));
    gh.factory<_i1038.AllTabBloc>(() => _i1038.AllTabBloc(
          findRepository: gh<_i101.UniversalSearchRepository>(),
          searchAnalytics: gh<_i105.SearchAnalytics>(),
        ));
    gh.factory<_i285.ProductsSearchBloc>(() => _i285.ProductsSearchBloc(
          findRepository: gh<_i428.UniversalSearchRepository>(),
          searchAnalytics: gh<_i105.SearchAnalytics>(),
          filterUtils: gh<_i544.FilterUtils>(),
        ));
    gh.factory<_i171.SearchMyListsBloc>(() => _i171.SearchMyListsBloc(
          findRepository: gh<_i101.UniversalSearchRepository>(),
          searchAnalytics: gh<_i105.SearchAnalytics>(),
        ));
    gh.factory<_i297.BrandListBloc>(() => _i297.BrandListBloc(
          findRepository: gh<_i101.UniversalSearchRepository>(),
          searchAnalytics: gh<_i105.SearchAnalytics>(),
        ));
    gh.factory<_i433.CategoryListBloc>(() => _i433.CategoryListBloc(
          findRepository: gh<_i101.UniversalSearchRepository>(),
          searchAnalytics: gh<_i105.SearchAnalytics>(),
        ));
    gh.factory<_i379.IngredientListBloc>(() => _i379.IngredientListBloc(
          findRepository: gh<_i101.UniversalSearchRepository>(),
          searchAnalytics: gh<_i105.SearchAnalytics>(),
        ));
    gh.factory<_i319.BrowseBloc>(() => _i319.BrowseBloc(
          findRepository: gh<_i428.UniversalSearchRepository>(),
          filterUtils: gh<_i544.FilterUtils>(),
          browseAnalytics: gh<_i131.BrowseAnalytics>(),
          searchAnalytics: gh<_i105.SearchAnalytics>(),
        ));
  }
}
