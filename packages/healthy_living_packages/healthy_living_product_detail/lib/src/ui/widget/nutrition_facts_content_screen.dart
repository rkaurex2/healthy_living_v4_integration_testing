import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/widget/nutrition_fact_list.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NutritionFactsContentScreen extends StatelessWidget {
  final NutrientFactUIModel nutrientFactUIModel;

  const NutritionFactsContentScreen({
    required this.nutrientFactUIModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: context.dsColors.surfaceNeutralContainerWhite,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                  vertical: context.dsSpacing.sp500,
                ),
                child: DSText(
                  text: localization.productDetail_labelInfo_nutritionFacts,
                  textStyle: DSTextStyleType.primaryHeadingS,
                  textColor: context.dsColors.textPrimaryDefault,
                ),
              ),
              Container(
                padding: EdgeInsets.all(context.dsSpacing.sp500),
                color: context.dsColors.surfaceNeutralBackgroundLight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DSText(
                      text: _amountPer(localization: localization),
                      textStyle: DSTextStyleType.primaryBodyMMedium,
                      textColor: context.dsColors.surfacePrimaryPress,
                    ),

                    if (nutrientFactUIModel.foodCaloriesModel != null) ...[
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp200,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: context.dsSpacing.sp200,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: DSText(
                                text:
                                    nutrientFactUIModel
                                        .foodCaloriesModel
                                        ?.nutrientName,
                                textStyle: DSTextStyleType.primaryHeadingM,
                                textColor: context.dsColors.textNeutralOnWhite,
                              ),
                            ),
                            DSText(
                              text:
                                  (nutrientFactUIModel
                                              .foodCaloriesModel
                                              ?.nutrientValue
                                          as double?)
                                      ?.toClearDecimalZero() ??
                                  '0',
                              textStyle: DSTextStyleType.primaryHeadingM,
                              textColor: context.dsColors.textNeutralOnWhite,
                            ),
                          ],
                        ),
                      ),
                    ],
                    if (nutrientFactUIModel.quickFactsList.isValidList) ...[
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp400,
                      ),
                      DSText(
                        text:
                            localization
                                .productDetail_nutritionFacts_quickFacts,
                        textStyle: DSTextStyleType.primaryBodySMedium,
                        textColor: context.dsColors.surfacePrimaryPress,
                      ),
                      NutritionFactList(
                        nutrientFactList:
                            nutrientFactUIModel.quickFactsList ?? [],
                      ),
                    ],

                    if (nutrientFactUIModel.avoidFactsList.isValidList) ...[
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp500,
                      ),
                      DSText(
                        text:
                            localization
                                .productDetail_nutritionFacts_avoidTooMuch,
                        textStyle: DSTextStyleType.primaryBodySMedium,
                        textColor: context.dsColors.surfacePrimaryPress,
                      ),
                      NutritionFactList(
                        nutrientFactList:
                            nutrientFactUIModel.avoidFactsList ?? [],
                      ),
                    ],
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: context.dsSpacing.sp200,
                      ),
                      child: DSText.rich(
                        textSpan: TextSpan(
                          text:
                              localization
                                  .productDetail_nutritionFacts_addedSugarIngredients,
                          children: [
                            WidgetSpan(
                              child: DSSpacingWidget.horizontal(
                                spacing: context.dsSpacing.sp200,
                              ),
                            ),
                            TextSpan(
                              text:
                                  nutrientFactUIModel
                                          .addedSugarIngredients
                                          .isValidValue
                                      ? nutrientFactUIModel
                                          .addedSugarIngredients
                                      : localization
                                          .productDetail_nutritionFacts_noneListed,
                              style: DSTextStyleType.primaryBodyMMedium
                                  .getTextStyle()
                                  .copyWith(
                                    color: context.dsColors.textNeutralOnWhite,
                                  ),
                            ),
                          ],
                        ),
                        textStyle: DSTextStyleType.primaryBodyMRegular,
                        textColor: context.dsColors.surfacePrimaryPress,
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: context.dsColors.strokeNeutralDefault,
                    ),

                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                    DSText(
                      text: localization.productDetail_nutritionFacts_nutrients,
                      textStyle: DSTextStyleType.primaryBodySMedium,
                      textColor: context.dsColors.surfacePrimaryPress,
                    ),
                    NutritionFactList(
                      nutrientFactList: nutrientFactUIModel.nutrientsList ?? [],
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                    Container(
                      width: double.infinity,
                      color: context.dsColors.surfaceNeutralBackgroundLight,
                      padding: EdgeInsets.symmetric(
                        vertical: context.dsSpacing.sp500,
                      ),
                      child: DSText(
                        text:
                            localization.productDetail_nutritionFacts_reference,
                        textStyle: DSTextStyleType.primaryCaptionSemibold,
                        textColor: context.dsColors.textNeutralSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _amountPer({
    required HealthyLivingProductDetailLocalizations localization,
  }) {
    final servingInfo = nutrientFactUIModel.foodServingInfo;
    final servingSize = servingInfo?.servingSize;
    final servingUnit = servingInfo?.servingUom;

    final hasValidServing =
        (servingSize?.isValidValue ?? false) &&
        (servingUnit?.isValidValue ?? false);

    final servingText = hasValidServing ? '$servingSize $servingUnit' : '-';

    return '${localization.productDetail_nutritionFacts_amountPer} $servingText';
  }
}
