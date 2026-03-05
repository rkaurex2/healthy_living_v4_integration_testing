//@GeneratedMicroModule;HealthyLivingAccountPackageModule;package:healthy_living_account/src/core/di/healthy_living_account_micro_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_bloc.dart'
    as _i680;
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart'
    as _i903;
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_bloc.dart'
    as _i827;
import 'package:healthy_living_shared/healthy_living_shared.dart' as _i544;
import 'package:injectable/injectable.dart' as _i526;
import 'package:storage/storage.dart' as _i431;

class HealthyLivingAccountPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i827.SubscriptionDetailsBloc>(
        () => _i827.SubscriptionDetailsBloc());
    gh.factory<_i680.IngredientPreferenceBloc>(
        () => _i680.IngredientPreferenceBloc(
              ingredientPreferenceRepository:
                  gh<_i544.IngredientPreferenceRepository>(),
              keyValueStorage: gh<_i431.KeyValueStorage>(),
              ingredientPreferenceAnalytics:
                  gh<_i544.IngredientPreferenceAnalytics>(),
            ));
    gh.factory<_i903.MyAccountBloc>(() => _i903.MyAccountBloc(
          sessionRepository: gh<_i544.SessionRepository>(),
          userDataRepository: gh<_i544.UserDataRepository>(),
          keyValueStorage: gh<_i431.KeyValueStorage>(),
        ));
  }
}
