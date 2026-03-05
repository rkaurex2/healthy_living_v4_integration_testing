import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/widget/packaging_info_section.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class LabelInfoSection extends StatelessWidget {
  const LabelInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    final bloc = context.read<ProductDetailBloc>();
    final spacing = context.dsSpacing.sp400;
    return ClipRRect(
      borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      child: Container(
        padding: EdgeInsets.only(
          top: spacing,
          left: spacing,
          right: spacing,
          bottom: context.dsSpacing.sp500,
        ),
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralContainerWhite,
        ),
        child: GestureDetector(
          onTap: () {
            context.push(
              AppRoutes.nutritionFacts.path,
              extra: NutrientFactUIModel(
                addedSugarIngredients:
                    bloc.productBasicDetail?.addedSugarIngredients,
                productSize: bloc.productBasicDetail?.size,
                foodServingInfo: bloc.foodServingInfo,
                foodCaloriesModel: bloc.foodCaloriesModel,
                avoidFactsList: bloc.avoidFactsModel,
                quickFactsList: bloc.quickFactsList,
                nutrientsList: bloc.nutrientsList,
                ratingDetailModel: bloc.productBasicDetail?.rating,
                productName: bloc.productBasicDetail?.name,
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: context.dsSizes.sz900,
                padding: EdgeInsets.all(spacing),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: context.dsColors.strokeNeutralDefault,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(context.dsRadius.rd300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        DSImage.asset(
                          DSIcons.icNutritionFact,
                          height: 21,
                          width: 18,
                          fit: BoxFit.contain,
                        ),
                        DSSpacingWidget.horizontal(
                          spacing: context.dsSpacing.sp300,
                        ),
                        DSText(
                          text:
                              localization
                                  .productDetail_labelInfo_nutritionFacts,
                          textStyle: DSTextStyleType.primarySubHeadingS,
                          textColor: context.dsColors.textNeutralOnWhite,
                        ),
                      ],
                    ),
                    DSImage.asset(
                      DSIcons.icChevronRight,
                      height: spacing,
                      width: spacing,
                    ),
                  ],
                ),
              ),
              if (bloc.labelIngredients.isValidValue) ...[
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),

                PackagingInfoSection(
                  title:
                      localization
                          .productDetail_labelInfo_ingredientsFromPackaging,
                  value: bloc.labelIngredients ?? "",
                ),
              ],
              if (bloc.labelDirections.isValidValue) ...[
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),

                PackagingInfoSection(
                  title:
                      localization
                          .productDetail_labelInfo_directionsFromPackaging,
                  value: bloc.labelDirections ?? "",
                ),
              ],
              if (bloc.labelWarnings.isValidValue) ...[
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                PackagingInfoSection(
                  title:
                      localization
                          .productDetail_labelInfo_warningsFromPackaging,
                  value: bloc.labelWarnings ?? "",
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
