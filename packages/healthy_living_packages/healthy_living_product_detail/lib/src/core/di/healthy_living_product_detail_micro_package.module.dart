//@GeneratedMicroModule;HealthyLivingProductDetailPackageModule;package:healthy_living_product_detail/src/core/di/healthy_living_product_detail_micro_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:healthy_living_product_detail/src/analytics/default_product_details_analytics.dart'
    as _i696;
import 'package:healthy_living_product_detail/src/analytics/product_details_analytics.dart'
    as _i921;
import 'package:healthy_living_product_detail/src/data/data_source/default_product_detail_remote_data_source.dart'
    as _i275;
import 'package:healthy_living_product_detail/src/data/repository/default_product_detail_repository.dart'
    as _i881;
import 'package:healthy_living_product_detail/src/domain/data_source/product_detail_remote_data_source.dart'
    as _i1032;
import 'package:healthy_living_product_detail/src/domain/repository/product_detail_repository.dart'
    as _i52;
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_bloc.dart'
    as _i495;
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_bloc.dart'
    as _i59;
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart'
    as _i550;
import 'package:healthy_living_shared/healthy_living_shared.dart' as _i544;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;

class HealthyLivingProductDetailPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i921.ProductDetailsAnalytics>(() =>
        _i696.DefaultProductDetailsAnalytics(gh<_i544.AnalyticsService>()));
    gh.lazySingleton<_i1032.ProductDetailRemoteDataSource>(
        () => _i275.DefaultProductDetailRemoteDataSource(
              unauthenticatedRestClient: gh<_i372.RestClient>(
                  instanceName: 'unauthenticated_api_rest_client'),
              restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client'),
            ));
    gh.lazySingleton<_i52.ProductDetailRepository>(() =>
        _i881.DefaultProductDetailRepository(
            dataSource: gh<_i1032.ProductDetailRemoteDataSource>()));
    gh.factory<_i495.IngredientDetailsBloc>(() => _i495.IngredientDetailsBloc(
        productDetailRepository: gh<_i52.ProductDetailRepository>()));
    gh.factory<_i550.ProductDetailBloc>(() => _i550.ProductDetailBloc(
          productDetailRepository: gh<_i52.ProductDetailRepository>(),
          recentlyViewedProductRepository: gh<_i544.HistoryProductRepository>(),
          ingredientPreferenceRepository:
              gh<_i544.IngredientPreferenceRepository>(),
          productDetailsAnalytics: gh<_i921.ProductDetailsAnalytics>(),
          ingredientPreferenceAnalytics:
              gh<_i544.IngredientPreferenceAnalytics>(),
        ));
    gh.factory<_i59.ProductCompareBloc>(
        () => _i59.ProductCompareBloc(gh<_i52.ProductDetailRepository>()));
  }
}
