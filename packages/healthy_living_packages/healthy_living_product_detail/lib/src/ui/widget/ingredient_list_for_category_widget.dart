import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_ingredient_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_ingredient_model.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/model/ingredient_list_section_param.dart';
import 'package:healthy_living_product_detail/src/ui/widget/food_ingredient_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_list_section.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientListForCategoryWidget extends StatelessWidget {
  const IngredientListForCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductCompareBloc>();
    final category = bloc.productCategory;

    switch (category) {
      case ProductCategory.food:
        final foods = bloc.foodDetailResponseModel;
        if (foods == null || foods.length < 2) return const SizedBox.shrink();

        return IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FoodIngredientSection(
                  foodIngredients: foods.first.labelIngredients,
                ),
              ),
              VerticalDivider(
                color: context.dsColors.strokeNeutralDefault,
                width: 0,
              ),
              Expanded(
                child: FoodIngredientSection(
                  foodIngredients: foods.last.labelIngredients,
                ),
              ),
            ],
          ),
        );

      case ProductCategory.cleaner:
        final cleaners = bloc.cleanerDetailResponseModel;
        if (cleaners == null || cleaners.length < 2) {
          return const SizedBox.shrink();
        }

        final isFirstVerified =
            (cleaners.first.grade ?? "").toUpperCase() ==
            StringConstants.verified;
        final isSecondVerified =
            (cleaners.last.grade ?? "").toUpperCase() ==
            StringConstants.verified;

        return IngredientListSection(
          ingredientListSectionParam: IngredientListSectionParam(
            leftProduct: _mapCleanerIngredients(
              context,
              cleaners.first.currentFormulation?.ingredients,
            ),
            rightProduct: _mapCleanerIngredients(
              context,
              cleaners.last.currentFormulation?.ingredients,
            ),
            isFirstVerifiedProduct: isFirstVerified,
            isSecondVerifiedProduct: isSecondVerified,
            onTap: (_) {},
          ),
        );

      case ProductCategory.personalCare:
        final cosmetics = bloc.cosmeticDetailResponseModel;
        if (cosmetics == null || cosmetics.length < 2) {
          return const SizedBox.shrink();
        }

        return IngredientListSection(
          ingredientListSectionParam: IngredientListSectionParam(
            leftProduct: _mapCosmeticIngredients(
              context,
              cosmetics.first.ingredients,
            ),
            rightProduct: _mapCosmeticIngredients(
              context,
              cosmetics.last.ingredients,
            ),
            isFirstVerifiedProduct: cosmetics.first.ewgVerified ?? false,
            isSecondVerifiedProduct: cosmetics.last.ewgVerified ?? false,
            onTap: (_) {}, // TODO: replace on API implementation
          ),
        );

      default:
        return const SizedBox.shrink();
    }
  }

  List<IngredientItemUIModel> _mapCleanerIngredients(
    BuildContext context,
    List<CleanerIngredientModel>? list,
  ) {
    if (list == null || list.isEmpty) return const <IngredientItemUIModel>[];

    final l10n = HealthyLivingSharedLocalizations.of(context)!;

    return list
        .map((ingredient) {
          final hazardLevel = ingredient.grade?.ratingHazardLevel;

          return IngredientItemUIModel(
            id: ingredient.substances.firstOrNull?.id ?? -1,
            name: ingredient.name ?? "",
            score: ingredient.grade,
            scoreBackgroundColor: hazardLevel?.displayColor(context),
            hazardText: hazardLevel?.displayText(l10n),
          );
        })
        .toList(growable: false);
  }

  List<IngredientItemUIModel> _mapCosmeticIngredients(
    BuildContext context,
    List<CosmeticIngredientModel>? list,
  ) {
    if (list == null || list.isEmpty) return const <IngredientItemUIModel>[];

    final l10n = HealthyLivingSharedLocalizations.of(context)!;

    return list
        .map((ingredient) {
          final scoreSubstrings = (ingredient.score ?? "").split("_");
          final grade =
              scoreSubstrings.isNotEmpty && scoreSubstrings.first.isNotEmpty
                  ? scoreSubstrings.first
                  : "0";
          final hazardLevel = HazardLevelMapper.fromScore(grade);

          return IngredientItemUIModel(
            id: ingredient.substanceId,
            name: ingredient.name ?? "",
            score: grade,
            scoreBackgroundColor: hazardLevel.displayColor(context),
            hazardText: hazardLevel.displayText(l10n),
          );
        })
        .toList(growable: false);
  }
}
