import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_event.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_state.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_ui_model.dart';
import 'package:healthy_living_account/src/ui/widgets/ingredient_preference_title_header.dart';
import 'package:healthy_living_account/src/ui/widgets/ingredient_preference_category_item_widget.dart';
import 'package:healthy_living_account/src/utils/ingredient_preference_category_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferenceCategoryWidget extends StatelessWidget {
  final Key? iconKey;
  final VoidCallback onTapNext;
  final VoidCallback onTapBack;
  final VoidCallback onTapInfo;

  const IngredientPreferenceCategoryWidget({
    required this.onTapNext,
    required this.onTapBack,
    required this.onTapInfo,
    super.key,
    this.iconKey,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    List<IngredientPreferenceCategoryUiModel> items = [];
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<IngredientPreferenceBloc, IngredientPreferenceState>(
        buildWhen: (previous, current) {
          return current is LoadActiveIngredientPreference ||
              current is ActiveIngredientPreferenceLoadInProgress ||
              current is ActivePreferenceLoadFail;
        },
        listenWhen: (previous, current) {
          return current is LoadActiveIngredientPreference ||
              current is ActivePreferenceLoadFail;
        },
        listener: (context, state) {
          if (state is ActivePreferenceLoadFail) {
            final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
              localizations: healthyLivingSharedLocalizations,
              exception: state.exception,
            );
            DSToast.show(
              context: context,
              title: errorMessage.title,
              leadingIconPath: DSIcons.icWarning,
            );
          }
        },
        builder: (context, state) {
          if (state is LoadActiveIngredientPreference) {
            items = state.list;
          } else if (state is ActiveIngredientPreferenceLoadInProgress) {
            items =
                IngredientPreferenceCategoryUtils.getIngredientPreferenceCategoryUiItem(
                  localization,
                  context.dsColors,
                  true,
                  false,
                );
          } else if (state is ActivePreferenceLoadFail) {
            items =
                IngredientPreferenceCategoryUtils.getIngredientPreferenceCategoryUiItem(
                  localization,
                  context.dsColors,
                  true,
                  true,
                );
          }
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dsSpacing.sp400,
                  ),
                  child: IngredientPreferenceTitleHeader(
                    title: localization.account_ingredientPreference,
                    onTapBack: onTapBack,
                    onTapInfo: onTapInfo,
                    iconKey: iconKey,
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: context.dsSpacing.sp400,
                        right: context.dsSpacing.sp400,
                        bottom: context.dsSpacing.sp400,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                          DSText(
                            text:
                                localization
                                    .account_ingredientPreference_categoryTitle,
                            textStyle: DSTextStyleType.primaryBodyMRegular,
                            textColor: context.dsColors.textNeutralSecondary,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp500,
                          ),
                          // KEY: TestKeys.ingredientPrefCats
                          ListView.separated(
                            key: const Key('ingredient_pref_cats'),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: items.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return IngredientPreferenceCategoryItemWidget(
                                ingredientPreferenceCategoryUiModel:
                                    items[index],
                                onTap: () {
                                  context
                                      .pushNamed(
                                        AppRoutes
                                            .accountIngredientPreferenceList
                                            .name,
                                        extra: IngredientScreenParam(
                                          categoryType: items[index].type.value,
                                        ),
                                      )
                                      .then((value) {
                                        context.read<IngredientPreferenceBloc>().add(
                                          IngredientPreferenceEvent.activeIngredientPreferencesFetched(
                                            list:
                                                IngredientPreferenceCategoryUtils.getIngredientPreferenceCategoryUiItem(
                                                  localization,
                                                  context.dsColors,
                                                  false,
                                                  false,
                                                ),
                                          ),
                                        );
                                      });
                                },
                              );
                            },
                            separatorBuilder: (
                              BuildContext context,
                              int index,
                            ) {
                              return DSSpacingWidget.vertical(
                                spacing: DSSpacing.sp500,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                DSDivider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.dsSpacing.sp400,
                    horizontal: context.dsSpacing.sp400,
                  ),
                  child: DSButtonPrimary(
                    text:
                        localization
                            .account_ingredientPreference_doneSettingUpPreferences,
                    size: DSButtonSize.small,
                    onPressed: onTapNext,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
