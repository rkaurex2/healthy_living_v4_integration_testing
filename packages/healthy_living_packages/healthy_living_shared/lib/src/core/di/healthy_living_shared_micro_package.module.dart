//@GeneratedMicroModule;HealthyLivingSharedPackageModule;package:healthy_living_shared/src/core/di/healthy_living_shared_micro_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:firebase_analytics/firebase_analytics.dart' as _i398;
import 'package:healthy_living_shared/healthy_living_shared.dart' as _i544;
import 'package:healthy_living_shared/src/analytics/analytics_service.dart'
    as _i21;
import 'package:healthy_living_shared/src/analytics/compare_product/default_compare_product_analytics.dart'
    as _i349;
import 'package:healthy_living_shared/src/analytics/create_list/default_create_list_analytics.dart'
    as _i1057;
import 'package:healthy_living_shared/src/analytics/ingredient_preference/default_ingredient_preference_analytics.dart'
    as _i472;
import 'package:healthy_living_shared/src/analytics/paywall/default_paywall_analytics.dart'
    as _i538;
import 'package:healthy_living_shared/src/core/di/healthy_living_shared_di_module.dart'
    as _i971;
import 'package:healthy_living_shared/src/data/data_source/default_deep_link_remote_data_source.dart'
    as _i534;
import 'package:healthy_living_shared/src/data/data_source/default_history_product_remote_data_source.dart'
    as _i621;
import 'package:healthy_living_shared/src/data/data_source/default_ingredient_preference_remote_data_source.dart'
    as _i364;
import 'package:healthy_living_shared/src/data/data_source/default_my_list_detail_data_source.dart'
    as _i106;
import 'package:healthy_living_shared/src/data/data_source/default_my_list_remote_data_source.dart'
    as _i889;
import 'package:healthy_living_shared/src/data/data_source/default_newsletter_remote_data_source.dart'
    as _i398;
import 'package:healthy_living_shared/src/data/data_source/default_search_remote_data_source.dart'
    as _i244;
import 'package:healthy_living_shared/src/data/data_source/default_session_local_data_source.dart'
    as _i776;
import 'package:healthy_living_shared/src/data/data_source/default_session_remote_data_source.dart'
    as _i38;
import 'package:healthy_living_shared/src/data/data_source/default_universal_categories_remote_data_source.dart'
    as _i1061;
import 'package:healthy_living_shared/src/data/data_source/default_user_data_local_data_source.dart'
    as _i154;
import 'package:healthy_living_shared/src/data/data_source/default_user_data_remote_data_source.dart'
    as _i600;
import 'package:healthy_living_shared/src/data/repository/default_deep_link_repository.dart'
    as _i805;
import 'package:healthy_living_shared/src/data/repository/default_history_product_repository.dart'
    as _i340;
import 'package:healthy_living_shared/src/data/repository/default_ingredient_preference_repository.dart'
    as _i601;
import 'package:healthy_living_shared/src/data/repository/default_my_list_detail_repository.dart'
    as _i825;
import 'package:healthy_living_shared/src/data/repository/default_my_list_repository.dart'
    as _i831;
import 'package:healthy_living_shared/src/data/repository/default_newsletter_repository.dart'
    as _i800;
import 'package:healthy_living_shared/src/data/repository/default_search_repository.dart'
    as _i643;
import 'package:healthy_living_shared/src/data/repository/default_session_repository.dart'
    as _i963;
import 'package:healthy_living_shared/src/data/repository/default_universal_categories_repository.dart'
    as _i65;
import 'package:healthy_living_shared/src/data/repository/default_user_data_repository.dart'
    as _i1003;
import 'package:healthy_living_shared/src/domain/data_source/deep_link_remote_data_source.dart'
    as _i676;
import 'package:healthy_living_shared/src/domain/data_source/history_product_remote_data_source.dart'
    as _i391;
import 'package:healthy_living_shared/src/domain/data_source/my_list_detail_data_source.dart'
    as _i465;
import 'package:healthy_living_shared/src/domain/data_source/my_list_remote_data_source.dart'
    as _i340;
import 'package:healthy_living_shared/src/domain/data_source/newsletter_remote_data_source.dart'
    as _i596;
import 'package:healthy_living_shared/src/domain/data_source/search_remote_data_source.dart'
    as _i433;
import 'package:healthy_living_shared/src/domain/data_source/universal_categories_remote_data_source.dart'
    as _i423;
import 'package:healthy_living_shared/src/domain/data_source/user_data_remote_data_source.dart'
    as _i575;
import 'package:healthy_living_shared/src/domain/repository/deep_link_repository.dart'
    as _i92;
import 'package:healthy_living_shared/src/domain/repository/my_list_detail_repository.dart'
    as _i807;
import 'package:healthy_living_shared/src/domain/repository/my_list_repository.dart'
    as _i907;
import 'package:healthy_living_shared/src/domain/repository/newsletter_repository.dart'
    as _i253;
import 'package:healthy_living_shared/src/domain/repository/universal_categories_repository.dart'
    as _i606;
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_bloc.dart'
    as _i63;
import 'package:healthy_living_shared/src/ui/bloc/app_bloc.dart' as _i516;
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_bloc.dart'
    as _i396;
import 'package:healthy_living_shared/src/ui/bloc/browse_category/browse_categories_bloc.dart'
    as _i250;
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_bloc.dart'
    as _i29;
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_bloc.dart'
    as _i458;
import 'package:healthy_living_shared/src/ui/bloc/filter/filter_bloc.dart'
    as _i839;
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_bloc.dart'
    as _i676;
import 'package:healthy_living_shared/src/ui/bloc/newsletter/newsletter_bloc.dart'
    as _i351;
import 'package:healthy_living_shared/src/ui/bloc/premium_purchases/premium_purchases_bloc.dart'
    as _i516;
import 'package:healthy_living_shared/src/utils/deeplink_handler.dart' as _i989;
import 'package:healthy_living_shared/src/utils/filter_utils.dart' as _i358;
import 'package:healthy_living_shared/src/utils/identifier_util.dart' as _i423;
import 'package:healthy_living_shared/src/utils/network_connection.dart'
    as _i722;
import 'package:healthy_living_shared/src/utils/uuid_utils.dart' as _i348;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;
import 'package:storage/storage.dart' as _i431;
import 'package:uuid/uuid.dart' as _i706;

class HealthyLivingSharedPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final healthyLivingSharedDIModule = _$HealthyLivingSharedDIModule();
    gh.factory<_i396.BrandFilterBloc>(() => _i396.BrandFilterBloc());
    gh.factory<_i29.CategoryFilterBloc>(() => _i29.CategoryFilterBloc());
    gh.singleton<_i348.UuidUtils>(() => _i348.UuidUtils());
    gh.lazySingleton<_i706.Uuid>(() => healthyLivingSharedDIModule.uuid);
    gh.lazySingleton<_i398.FirebaseAnalytics>(
        () => healthyLivingSharedDIModule.firebaseAnalytics);
    gh.lazySingleton<_i895.Connectivity>(
        () => healthyLivingSharedDIModule.getConnectivity());
    gh.lazySingleton<_i358.FilterUtils>(() => _i358.FilterUtils());
    gh.lazySingleton<_i340.MyListRemoteDataSource>(() =>
        _i889.DefaultMyListRemoteDataSource(
            gh<_i372.RestClient>(instanceName: 'api_rest_client')));
    gh.lazySingleton<_i544.NewsletterRemoteDataSource>(() =>
        _i398.DefaultNewsletterRemoteDataSource(
            restClient: gh<_i372.RestClient>(
                instanceName: 'unauthenticated_api_rest_client')));
    gh.lazySingleton<_i676.DeepLinkRemoteDataSource>(
        () => _i534.DefaultDeepLinkRemoteDataSource());
    gh.lazySingleton<_i465.MyListDetailDataSource>(() =>
        _i106.DefaultMyListDetailDataSource(
          gh<_i372.RestClient>(instanceName: 'api_rest_client'),
          gh<_i372.RestClient>(instanceName: 'unauthenticated_api_rest_client'),
        ));
    gh.lazySingleton<_i544.SessionRemoteDataSource>(() =>
        _i38.DefaultSessionRemoteDataSource(
            restClient: gh<_i372.RestClient>(
                instanceName: 'unauthenticated_api_rest_client')));
    gh.lazySingleton<_i391.HistoryProductRemoteDataSource>(() =>
        _i621.DefaultHistoryProductRemoteDataSource(
            restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client')));
    gh.lazySingleton<_i544.SessionLocalDataSource>(
        () => _i776.DefaultSessionLocalDataSource(
              secureStorage: gh<_i431.SecureStorage>(),
              keyValueStorage: gh<_i431.KeyValueStorage>(),
            ));
    gh.lazySingleton<_i575.UserDataRemoteDataSource>(() =>
        _i600.DefaultUserDataRemoteDataSource(
            restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client')));
    gh.lazySingleton<_i423.UniversalCategoriesRemoteDataSource>(
        () => _i1061.DefaultUniversalCategoriesRemoteDataSource(
              unauthenticatedRestClient: gh<_i372.RestClient>(
                  instanceName: 'unauthenticated_api_rest_client'),
              restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client'),
              filterUtils: gh<_i544.FilterUtils>(),
            ));
    gh.lazySingleton<_i433.SearchRemoteDataSource>(() =>
        _i244.DefaultSearchRemoteDataSource(
            restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client')));
    gh.lazySingleton<_i544.IngredientPreferenceRemoteDataSource>(() =>
        _i364.DefaultIngredientPreferenceRemoteDataSource(
            restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client')));
    gh.lazySingleton<_i544.UserDataLocalDataSource>(() =>
        _i154.DefaultUserDataLocalDataSource(
            keyValueStorage: gh<_i431.KeyValueStorage>()));
    gh.lazySingleton<_i21.AnalyticsService>(
        () => _i21.AnalyticsService(gh<_i398.FirebaseAnalytics>()));
    gh.lazySingleton<_i606.UniversalCategoriesRepository>(() =>
        _i65.DefaultUniversalCategoriesRepository(
            dataSource: gh<_i423.UniversalCategoriesRemoteDataSource>()));
    gh.factoryParam<_i423.Identifier, _i706.Uuid?, dynamic>((
      uuid,
      _,
    ) =>
        _i423.Identifier(
          gh<_i431.KeyValueStorage>(),
          uuid,
        ));
    gh.lazySingleton<_i544.HistoryProductRepository>(() =>
        _i340.DefaultHistoryProductRepository(
            dataSource: gh<_i391.HistoryProductRemoteDataSource>()));
    gh.lazySingleton<_i92.DeepLinkRepository>(() =>
        _i805.DefaultDeepLinkRepository(
            localDataSource: gh<_i676.DeepLinkRemoteDataSource>()));
    gh.lazySingleton<_i722.NetworkConnection>(
        () => _i722.NetworkConnection(connectivity: gh<_i895.Connectivity>()));
    gh.lazySingleton<_i253.NewsletterRepository>(() =>
        _i800.DefaultNewsletterRepository(
            dataSource: gh<_i596.NewsletterRemoteDataSource>()));
    gh.lazySingleton<_i907.MyListRepository>(() =>
        _i831.DefaultMyListRepository(
            dataSource: gh<_i340.MyListRemoteDataSource>()));
    gh.lazySingleton<_i544.UserDataRepository>(
        () => _i1003.DefaultUserDataRepository(
              localDataSource: gh<_i544.UserDataLocalDataSource>(),
              remoteDataSource: gh<_i575.UserDataRemoteDataSource>(),
            ));
    gh.factory<_i63.AddToListBloc>(() =>
        _i63.AddToListBloc(myListRepository: gh<_i907.MyListRepository>()));
    gh.lazySingleton<_i807.MyListDetailRepository>(() =>
        _i825.DefaultMyListDetailRepository(
            myListDetailDataSource: gh<_i465.MyListDetailDataSource>()));
    gh.factory<_i989.DeepLinkHandler>(() => _i989.DeepLinkHandler(
          gh<_i92.DeepLinkRepository>(),
          gh<_i544.AnalyticsService>(),
        ));
    gh.lazySingleton<_i544.SessionRepository>(
        () => _i963.DefaultSessionRepository(
              localDataSource: gh<_i544.SessionLocalDataSource>(),
              remoteDataSource: gh<_i544.SessionRemoteDataSource>(),
            ));
    gh.lazySingleton<_i544.IngredientPreferenceRepository>(() =>
        _i601.DefaultIngredientPreferenceRepository(
            remoteDataSource:
                gh<_i544.IngredientPreferenceRemoteDataSource>()));
    gh.lazySingleton<_i544.SearchRepository>(() =>
        _i643.DefaultSearchRepository(
            dataSource: gh<_i433.SearchRemoteDataSource>()));
    gh.lazySingleton<_i544.PaywallAnalytics>(
        () => _i538.DefaultPaywallAnalytics(gh<_i544.AnalyticsService>()));
    gh.factory<_i250.BrowseCategoriesBloc>(() => _i250.BrowseCategoriesBloc(
        findRepository: gh<_i606.UniversalCategoriesRepository>()));
    gh.lazySingleton<_i544.CompareProductAnalytics>(() =>
        _i349.DefaultCompareProductAnalytics(gh<_i544.AnalyticsService>()));
    gh.lazySingleton<_i544.IngredientPreferenceAnalytics>(() =>
        _i472.DefaultIngredientPreferenceAnalytics(
            gh<_i544.AnalyticsService>()));
    gh.lazySingleton<_i544.CreateListAnalytics>(
        () => _i1057.DefaultCreateListAnalytics(gh<_i544.AnalyticsService>()));
    gh.factory<_i516.AppBloc>(() => _i516.AppBloc(
          sessionRepository: gh<_i544.SessionRepository>(),
          keyValueStorage: gh<_i431.KeyValueStorage>(),
          userDataRepository: gh<_i544.UserDataRepository>(),
          analytics: gh<_i544.AnalyticsService>(),
        ));
    gh.factory<_i351.NewsletterBloc>(() => _i351.NewsletterBloc(
        newsletterRepository: gh<_i544.NewsletterRepository>()));
    gh.factory<_i839.FilterBloc>(() => _i839.FilterBloc(
          filterUtils: gh<_i544.FilterUtils>(),
          ingredientPreferenceRepository:
              gh<_i544.IngredientPreferenceRepository>(),
          ingredientPreferenceAnalytics:
              gh<_i544.IngredientPreferenceAnalytics>(),
        ));
    gh.factory<_i458.CreateListBloc>(() => _i458.CreateListBloc(
          myListRepository: gh<_i907.MyListRepository>(),
          createListAnalytics: gh<_i544.CreateListAnalytics>(),
        ));
    gh.factory<_i516.PremiumPurchasesBloc>(() => _i516.PremiumPurchasesBloc(
          userDataRepository: gh<_i544.UserDataRepository>(),
          sessionRepository: gh<_i544.SessionRepository>(),
          paywallAnalytics: gh<_i544.PaywallAnalytics>(),
        ));
    gh.factory<_i676.MyListDetailBloc>(() => _i676.MyListDetailBloc(
          myListDetailRepository: gh<_i807.MyListDetailRepository>(),
          createListAnalytics: gh<_i544.CreateListAnalytics>(),
        ));
  }
}

class _$HealthyLivingSharedDIModule extends _i971.HealthyLivingSharedDIModule {}
