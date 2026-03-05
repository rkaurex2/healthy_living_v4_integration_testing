import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/widget/nutrition_facts_title_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/verified_product_status_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class TitleRowForCategoryWidget extends StatelessWidget {
  const TitleRowForCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductCompareBloc>();
    final category = bloc.productCategory;
    final leftGrade = bloc.foodDetailResponseModel?.first.scores?.overall;
    final leftHazardLevel = leftGrade.toString().ratingHazardLevel;

    final rightGrade = bloc.foodDetailResponseModel?.last.scores?.overall;
    final rightHazardLevel = rightGrade.toString().ratingHazardLevel;

    switch (category) {
      case ProductCategory.food:
        return IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(
                      AppRoutes.nutritionFacts.name,
                      extra: NutrientFactUIModel(
                        addedSugarIngredients:
                            bloc
                                .foodDetailResponseModel!
                                .first
                                .addedSugarIngredients,
                        productSize:
                            bloc.foodDetailResponseModel?.first.productSize,
                        foodServingInfo:
                            bloc.foodDetailResponseModel?.first.servingInfo,
                        foodCaloriesModel:
                            bloc.foodDetailResponseModel?.first.calories,
                        avoidFactsList:
                            bloc.foodDetailResponseModel?.first.avoidFacts,
                        quickFactsList:
                            bloc.foodDetailResponseModel?.first.quickFacts,
                        nutrientsList:
                            bloc.foodDetailResponseModel?.first.nutrients,
                        ratingDetailModel: RatingDetailModel(
                          grade: leftGrade.toString(),
                          hazardLevel: leftHazardLevel ?? HazardLevel.low,
                          isVerified: false,
                        ),
                        productName: bloc.foodDetailResponseModel?.first.name,
                      ),
                    );
                  },
                  child: NutritionFactsTitleSection(),
                ),
              ),
              VerticalDivider(
                color: context.dsColors.strokeNeutralDefault,
                width: 0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(
                      AppRoutes.nutritionFacts.name,
                      extra: NutrientFactUIModel(
                        addedSugarIngredients:
                            bloc
                                .foodDetailResponseModel!
                                .last
                                .addedSugarIngredients,
                        productSize:
                            bloc.foodDetailResponseModel?.last.productSize,
                        foodServingInfo:
                            bloc.foodDetailResponseModel?.last.servingInfo,
                        foodCaloriesModel:
                            bloc.foodDetailResponseModel?.last.calories,
                        avoidFactsList:
                            bloc.foodDetailResponseModel?.last.avoidFacts,
                        quickFactsList:
                            bloc.foodDetailResponseModel?.last.quickFacts,
                        nutrientsList:
                            bloc.foodDetailResponseModel?.last.nutrients,
                        ratingDetailModel: RatingDetailModel(
                          grade: rightGrade.toString(),
                          hazardLevel: rightHazardLevel ?? HazardLevel.low,
                          isVerified: false,
                        ),
                        productName: bloc.foodDetailResponseModel?.last.name,
                      ),
                    );
                  },
                  child: NutritionFactsTitleSection(),
                ),
              ),
            ],
          ),
        );

      case ProductCategory.cleaner:
      case ProductCategory.personalCare:
        return VerifiedProductStatusWidget();
      default:
        return const SizedBox.shrink();
    }
  }
}
