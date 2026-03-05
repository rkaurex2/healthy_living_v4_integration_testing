import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/widget/certification_tile.dart';
import 'package:healthy_living_product_detail/src/ui/widget/packaging_info_section.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class LabelInfoCertificationsWidget extends StatelessWidget {
  const LabelInfoCertificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductDetailBloc>();
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    final sections = <Widget>[];
    if (bloc.productCategory == ProductCategory.food) {
      sections.add(
        GestureDetector(
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
          child: Container(
            height: context.dsSizes.sz900,
            padding: EdgeInsets.all(context.dsSpacing.sp400),
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
                      text: localization.productDetail_labelInfo_nutritionFacts,
                      textStyle: DSTextStyleType.primarySubHeadingS,
                      textColor: context.dsColors.textNeutralOnWhite,
                    ),
                  ],
                ),
                DSImage.asset(
                  DSIcons.icChevronRight,
                  height: context.dsSpacing.sp400,
                  width: context.dsSpacing.sp400,
                ),
              ],
            ),
          ),
        ),
      );
    }

    if (bloc.certifications.isValidList) {
      sections.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DSText(
              text: localization.productDetail_labelInfo_certifications,
              textStyle: DSTextStyleType.primarySubHeadingS,
              textColor: context.dsColors.textNeutralOnWhite,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
            LayoutBuilder(
              builder: (context, constraints) {
                final spacing = context.dsSpacing.sp200;
                const crossAxisCount = 3;
                final totalGaps = spacing * (crossAxisCount - 1);
                final itemWidth =
                    (constraints.maxWidth - totalGaps) / crossAxisCount;
                return Wrap(
                  spacing: spacing,
                  runSpacing: spacing,
                  children:
                      bloc.certifications!
                          .map(
                            (c) => SizedBox(
                              width: itemWidth,
                              child: CertificationTile(certificationsModel: c),
                            ),
                          )
                          .toList(),
                );
              },
            ),
          ],
        ),
      );
    }

    if (bloc.labelIngredients.isValidValue) {
      sections.add(
        PackagingInfoSection(
          title: localization.productDetail_labelInfo_ingredientsFromPackaging,
          value: bloc.labelIngredients ?? "",
        ),
      );
    }

    if (bloc.productCategory != ProductCategory.food &&
        bloc.labelDirections.isValidValue) {
      sections.add(
        PackagingInfoSection(
          title: localization.productDetail_labelInfo_directionsFromPackaging,
          value: bloc.labelDirections ?? "",
        ),
      );
    }

    if (bloc.productCategory != ProductCategory.food &&
        bloc.labelWarnings.isValidValue) {
      sections.add(
        PackagingInfoSection(
          title: localization.productDetail_labelInfo_warningsFromPackaging,
          value: bloc.labelWarnings ?? "",
        ),
      );
    }

    if (sections.isEmpty) return const SizedBox.shrink();

    return ClipRRect(
      borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      child: Container(
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralContainerWhite,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: context.dsSpacing.sp400,
            bottom: context.dsSpacing.sp500,
          ),
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: context.dsSpacing.sp400,
              vertical: 0,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: sections.length,
            itemBuilder: (_, i) {
              final item = sections[i];
              return item;
            },
            separatorBuilder:
                (_, __) =>
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
          ),
        ),
      ),
    );
  }
}
