import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_event.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_state.dart';
import 'package:healthy_living_account/src/ui/widgets/ft_ux_get_started_ingredient_preference.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FtUxGetStartedIngredientPreferenceScreen extends StatelessWidget {
  const FtUxGetStartedIngredientPreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    final iconKey = GlobalKey();
    // KEY: TestKeys.ingredientPrefFtux
    return Scaffold(
      key: const Key('ingredient_pref_ftux'),
      backgroundColor: context.dsColors.surfaceNeutralBackgroundWhite,
      body: BlocProvider<IngredientPreferenceBloc>(
        create: (_) => injector.get<IngredientPreferenceBloc>(),
        child:
            BlocConsumer<IngredientPreferenceBloc, IngredientPreferenceState>(
              listenWhen: (previous, current) {
                return current is ViewedFtUx;
              },
              listener: (context, state) {
                if (state is ViewedFtUx) {
                  context.read<AppBloc>().add(AppEvent.refreshUserLogin());
                  context.goNamed(
                    AppRoutes.accountIngredientPreferenceCategory.name,
                  );
                }
              },
              builder: (context, state) {
                return SafeArea(
                  child: FtUxGetStartedIngredientPreference(
                    title:
                        localization
                            .account_ingredientPreference_getStartedTitle,
                    description:
                        localization
                            .account_ingredientPreference_getStartedDescription,
                    image: DSIcons.ingredientPreferenceGetStarted,
                    iconKey: iconKey,
                    onTapNext: () {
                      context.read<IngredientPreferenceBloc>().add(
                        IngredientPreferenceEvent.ftUxViewed(),
                      );
                    },
                    onTapBack: () {
                      context.pop();
                    },
                    onTapInfo: () {
                      InfoTooltipOverlay.show(
                        context,
                        targetKey: iconKey,
                        title:
                            sharedLocalizations
                                .account_ingredientPreference_infoTitle,
                        message:
                            sharedLocalizations
                                .account_ingredientPreference_infoDescription,
                      );
                    },
                  ),
                );
              },
            ),
      ),
    );
  }
}
