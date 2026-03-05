import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppRoutes,
        HazardLevelMapper,
        IngredientDetailScreenParams,
        IngredientItemUIModel,
        IngredientListWidget,
        ParsedSubstanceDTO,
        ProductCategory,
        RatingHazardLevelExtension,
        SmartTitleCaseExtension,
        Validate;
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';
import 'package:healthy_living_shared/src/ui/models/scan/submit_product_info_params.dart';

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({required this.infoUIModel, super.key});

  final SubmitProductInfoParams infoUIModel;

  @override
  Widget build(BuildContext context) {
    final ingredientItems = _getIngredients(
      context: context,
      ingredients:
          (infoUIModel
                  .provisionalScoreResponse
                  ?.userEditsProvisionalScore
                  ?.ingredients
                  ?.parsedSubstances ??
              infoUIModel
                  .provisionalScoreResponse
                  ?.provisionalScore
                  ?.ingredients
                  ?.parsedSubstances ??
              []),
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      child: Container(
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralContainerWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
            IngredientListWidget(
              isVerifiedProduct: false,
              items: ingredientItems,
              productCategory: ProductCategory.personalCare,
              onTap: (index) {
                context.pushNamed(
                  AppRoutes.instantScoreIngredientDetails.name,
                  queryParameters:
                      IngredientDetailScreenParams(
                        ingredientId: ingredientItems[index].id.toString(),
                      ).toQueryParameters(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<IngredientItemUIModel> _getIngredients({
    required BuildContext context,
    required List<ParsedSubstanceDTO> ingredients,
  }) {
    return ingredients
        .map(
          (ingredient) => IngredientItemUIModel(
            name: ingredient.name.toSmartTitleCase(),
            id: ingredient.substanceId,
            score: ingredient.score.split('_').first,
            hazardText: ingredient.score
                .split('_')
                .first
                .ratingHazardLevel!
                .displayText(HealthyLivingSharedLocalizations.of(context)!),
            scoreBackgroundColor: ingredient.score
                .split('_')
                .first
                .ratingHazardLevel
                ?.displayColor(context),
          ),
        )
        .toList();
  }
}
