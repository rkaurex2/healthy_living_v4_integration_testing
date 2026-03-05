import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_event.dart';
import 'package:healthy_living_account/src/ui/screens/ingredient_preference_list_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferenceListScreen extends StatelessWidget {
  final IngredientScreenParam ingredientScreenParam;

  const IngredientPreferenceListScreen({
    required this.ingredientScreenParam,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    final iconKey = GlobalKey();
    return BlocProvider(
      create:
          (_) =>
              injector.get<IngredientPreferenceBloc>()..add(
                IngredientPreferenceEvent.ingredientPreferencesListFetched(
                  category: ingredientScreenParam.categoryType,
                ),
              ),
      child: Scaffold(
        backgroundColor: context.dsColors.surfaceNeutralBackgroundWhite,
        body: SafeArea(
          child: IngredientPreferenceListContentScreen(
            iconKey: iconKey,
            onTapSave: () {
              context.pop();
            },
            onTapCancel: () {
              context.pop();
            },
            onTapBack: () {
              context.pop();
            },
            onTapInfo: () {
              InfoTooltipOverlay.show(
                context,
                targetKey: iconKey,
                title:
                    sharedLocalizations.account_ingredientPreference_infoTitle,
                message:
                    sharedLocalizations
                        .account_ingredientPreference_infoDescription,
              );
            },
            categoryType: ingredientScreenParam.categoryType ?? "",
          ),
        ),
      ),
    );
  }
}
