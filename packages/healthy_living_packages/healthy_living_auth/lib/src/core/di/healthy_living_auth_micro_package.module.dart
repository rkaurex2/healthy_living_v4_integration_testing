//@GeneratedMicroModule;HealthyLivingAuthPackageModule;package:healthy_living_auth/src/core/di/healthy_living_auth_micro_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:healthy_living_auth/healthy_living_auth.dart' as _i55;
import 'package:healthy_living_auth/src/analytics/auth_analytics.dart' as _i976;
import 'package:healthy_living_auth/src/analytics/default_auth_analytics.dart'
    as _i535;
import 'package:healthy_living_auth/src/core/di/healthy_living_auth_di_module.dart'
    as _i1008;
import 'package:healthy_living_auth/src/core/google_sign_in/default_google_social_sign_in.dart'
    as _i514;
import 'package:healthy_living_auth/src/core/google_sign_in/google_social_sign_in.dart'
    as _i593;
import 'package:healthy_living_auth/src/core/purchase_user_service.dart'
    as _i1031;
import 'package:healthy_living_auth/src/data/data_source/default_auth_remote_data_source.dart'
    as _i586;
import 'package:healthy_living_auth/src/data/repository/default_auth_repository.dart'
    as _i12;
import 'package:healthy_living_auth/src/domain/data_source/auth_remote_data_source.dart'
    as _i951;
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart'
    as _i469;
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_bloc.dart'
    as _i893;
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_bloc.dart'
    as _i381;
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_bloc.dart'
    as _i455;
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_bloc.dart'
    as _i1038;
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_bloc.dart'
    as _i535;
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_bloc.dart'
    as _i477;
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_bloc.dart'
    as _i608;
import 'package:healthy_living_shared/healthy_living_shared.dart' as _i544;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;
import 'package:storage/storage.dart' as _i431;

class HealthyLivingAuthPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final healthyLivingAuthDIModule = _$HealthyLivingAuthDIModule();
    gh.lazySingleton<_i116.GoogleSignIn>(
        () => healthyLivingAuthDIModule.getGoogleSignIn());
    gh.lazySingleton<_i1031.PurchaseUserService>(
        () => _i1031.PurchaseUserService());
    gh.lazySingleton<_i976.AuthAnalytics>(
        () => _i535.DefaultAuthAnalytics(gh<_i544.AnalyticsService>()));
    gh.lazySingleton<_i593.GoogleSocialSignIn>(() =>
        _i514.DefaultGoogleSocialSignIn(
            googleSignIn: gh<_i116.GoogleSignIn>()));
    gh.factory<_i608.FtUxBloc>(() => _i608.FtUxBloc(
          keyValueStorage: gh<_i431.KeyValueStorage>(),
          authAnalytics: gh<_i976.AuthAnalytics>(),
        ));
    gh.lazySingleton<_i951.AuthRemoteDataSource>(
        () => _i586.DefaultAuthRemoteDataSource(
              googleSignInClient: gh<_i593.GoogleSocialSignIn>(),
              restClient: gh<_i372.RestClient>(instanceName: 'api_rest_client'),
              unAuthenticatedRestClient: gh<_i372.RestClient>(
                  instanceName: 'unauthenticated_api_rest_client'),
            ));
    gh.lazySingleton<_i469.AuthRepository>(() => _i12.DefaultAuthRepository(
        dataSource: gh<_i951.AuthRemoteDataSource>()));
    gh.factory<_i381.SignUpBloc>(() => _i381.SignUpBloc(
          authRepository: gh<_i469.AuthRepository>(),
          sessionRepository: gh<_i544.SessionRepository>(),
          keyValueStorage: gh<_i431.KeyValueStorage>(),
          analytics: gh<_i544.AnalyticsService>(),
          authAnalytics: gh<_i976.AuthAnalytics>(),
          purchaseUserService: gh<_i55.PurchaseUserService>(),
        ));
    gh.factory<_i893.SignInBloc>(() => _i893.SignInBloc(
          authRepository: gh<_i469.AuthRepository>(),
          sessionRepository: gh<_i544.SessionRepository>(),
          keyValueStorage: gh<_i431.KeyValueStorage>(),
          analytics: gh<_i544.AnalyticsService>(),
          authAnalytics: gh<_i976.AuthAnalytics>(),
          purchaseUserService: gh<_i55.PurchaseUserService>(),
        ));
    gh.factory<_i535.CreateNewPasswordBloc>(() => _i535.CreateNewPasswordBloc(
          authRepository: gh<_i469.AuthRepository>(),
          sessionRepository: gh<_i544.SessionRepository>(),
          userDataRepository: gh<_i544.UserDataRepository>(),
          keyValueStorage: gh<_i431.KeyValueStorage>(),
        ));
    gh.factory<_i455.AuthSocialLoginBloc>(() => _i455.AuthSocialLoginBloc(
          authRepository: gh<_i469.AuthRepository>(),
          keyValueStorage: gh<_i431.KeyValueStorage>(),
          sessionRepository: gh<_i544.SessionRepository>(),
          networkConnection: gh<_i544.NetworkConnection>(),
          analytics: gh<_i544.AnalyticsService>(),
          authAnalytics: gh<_i976.AuthAnalytics>(),
          purchaseUserService: gh<_i55.PurchaseUserService>(),
        ));
    gh.factory<_i477.ForgotPasswordBloc>(() =>
        _i477.ForgotPasswordBloc(authRepository: gh<_i469.AuthRepository>()));
    gh.factory<_i1038.CheckEmailBloc>(() =>
        _i1038.CheckEmailBloc(authRepository: gh<_i469.AuthRepository>()));
  }
}

class _$HealthyLivingAuthDIModule extends _i1008.HealthyLivingAuthDIModule {}
