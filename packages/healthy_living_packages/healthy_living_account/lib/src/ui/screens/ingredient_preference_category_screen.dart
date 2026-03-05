import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_event.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_state.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_type.dart';
import 'package:healthy_living_account/src/ui/widgets/ingredient_preference_category_widget.dart';
import 'package:healthy_living_account/src/utils/ingredient_preference_category_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferenceCategoryScreen extends StatelessWidget {
  final IngredientCategoryScreenParam? ingredientCategoryScreenParam;

  const IngredientPreferenceCategoryScreen({
    required this.ingredientCategoryScreenParam,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    final iconKey = GlobalKey();
    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundWhite,
      body: BlocProvider(
        create:
            (_) =>
                injector.get<IngredientPreferenceBloc>()..add(
                  IngredientPreferenceEvent.activeIngredientPreferencesFetched(
                    list:
                        IngredientPreferenceCategoryUtils.getIngredientPreferenceCategoryUiItem(
                          localization,
                          context.dsColors,
                          false,
                          false,
                        ),
                  ),
                ),
        child: SafeArea(
          child:
              BlocBuilder<IngredientPreferenceBloc, IngredientPreferenceState>(
                builder: (context, state) {
                  return IngredientPreferenceCategoryWidget(
                    iconKey: iconKey,
                    onTapNext: () {
                      context.pop();
                    },
                    onTapBack: () {
                      if (ingredientCategoryScreenParam != null &&
                          ingredientCategoryScreenParam!.categoryType != null) {
                        final item = IngredientPreferenceCategoryUtils.pick(
                          context
                              .read<IngredientPreferenceBloc>()
                              .ingredientPreferenceCategoryList,
                          IngredientPreferenceCategoryType.fromName(
                            ingredientCategoryScreenParam?.categoryType ?? "",
                          )!,
                        );

                        context.pop(
                          IngredientFilterResultParam(
                            categoryType:
                                ingredientCategoryScreenParam?.categoryType,
                            avoidCount: item.avoidCount,
                            preferCount: item.preferredCount,
                            hasPrefer: item.preferredCount > 0,
                          ),
                        );
                      } else {
                        context.pop();
                      }
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
                  );
                },
              ),
        ),
      ),
    );
  }
}
