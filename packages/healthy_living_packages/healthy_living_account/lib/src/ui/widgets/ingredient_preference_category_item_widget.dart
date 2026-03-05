import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferenceCategoryItemWidget extends StatelessWidget {
  final IngredientPreferenceCategoryUiModel ingredientPreferenceCategoryUiModel;
  final VoidCallback onTap;

  const IngredientPreferenceCategoryItemWidget({
    required this.ingredientPreferenceCategoryUiModel,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ingredientPreferenceCategoryUiModel.backgroundColor,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: context.dsSpacing.sp400,
                      top: context.dsSpacing.sp400,
                      bottom: context.dsSpacing.sp400,
                      right: context.dsSpacing.sp0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DSText(
                          text: ingredientPreferenceCategoryUiModel.title,
                          textStyle: DSTextStyleType.primaryHeadingS,
                          textColor:
                              ingredientPreferenceCategoryUiModel.titleColor,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp200,
                        ),
                        DSText(
                          text: ingredientPreferenceCategoryUiModel.description,
                          textStyle: DSTextStyleType.primaryBodySRegular,
                          textColor:
                              ingredientPreferenceCategoryUiModel.titleColor,
                        ),
                      ],
                    ),
                  ),
                ),

                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp100),

                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(context.dsRadius.rd300),
                  ),
                  child: Image.asset(
                    ingredientPreferenceCategoryUiModel.imagePath,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(context.dsSpacing.sp0),
              decoration: BoxDecoration(
                color:
                    ingredientPreferenceCategoryUiModel.bottomBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(context.dsRadius.rd300),
                  bottomRight: Radius.circular(context.dsRadius.rd300),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                  vertical: context.dsSpacing.sp200,
                ),
                child: Row(
                  children: [
                    if (ingredientPreferenceCategoryUiModel.unableToFetch) ...{
                      DSText(
                        text:
                            HealthyLivingSharedLocalizations.of(
                              context,
                            )!.general_ingredientPreferences_unableToFetchPreferences,
                        textStyle: DSTextStyleType.primaryBodySRegular,
                        textColor:
                            ingredientPreferenceCategoryUiModel.titleColor,
                      ),
                    } else if (ingredientPreferenceCategoryUiModel
                        .isLoadingItems) ...{
                      RoundedRectangleShimmerWidget(width: 100, height: 20),
                    } else ...{
                      if (ingredientPreferenceCategoryUiModel.avoidCount <= 0 &&
                          ingredientPreferenceCategoryUiModel.preferredCount <=
                              0) ...[
                        DSText(
                          text:
                              localization
                                  .account_ingredientPreference_noPreferences,
                          textStyle: DSTextStyleType.primaryBodySRegular,
                          textColor:
                              ingredientPreferenceCategoryUiModel.titleColor,
                        ),
                      ] else ...[
                        if (ingredientPreferenceCategoryUiModel.avoidCount >
                            0) ...[
                          DSImage.asset(
                            DSIcons.icAvoidPreference,
                            width: context.dsSizes.sz400,
                            height: context.dsSizes.sz400,
                            fit: BoxFit.cover,
                          ),
                          DSSpacingWidget.horizontal(
                            spacing: context.dsSpacing.sp100,
                          ),
                          DSText(
                            text:
                                "${ingredientPreferenceCategoryUiModel.avoidCount} ${localization.account_ingredientPreference_toAvoid}",
                            textStyle: DSTextStyleType.primaryBodySRegular,
                            textColor:
                                ingredientPreferenceCategoryUiModel.titleColor,
                          ),

                          DSSpacingWidget.horizontal(
                            spacing: context.dsSpacing.sp400,
                          ),
                        ],
                        if (ingredientPreferenceCategoryUiModel.preferredCount >
                            0) ...[
                          DSImage.asset(
                            DSIcons.icStarPreference,
                            width: context.dsSizes.sz400,
                            height: context.dsSizes.sz400,
                            fit: BoxFit.cover,
                          ),
                          DSSpacingWidget.horizontal(
                            spacing: context.dsSpacing.sp100,
                          ),
                          DSText(
                            text:
                                "${ingredientPreferenceCategoryUiModel.preferredCount} ${localization.account_ingredientPreference_preferred}",
                            textStyle: DSTextStyleType.primaryBodySRegular,
                            textColor:
                                ingredientPreferenceCategoryUiModel.titleColor,
                          ),
                        ],
                      ],
                    },

                    Spacer(),

                    DSImage.asset(
                      DSIcons.icArrowRight,
                      color: ingredientPreferenceCategoryUiModel.titleColor,
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
