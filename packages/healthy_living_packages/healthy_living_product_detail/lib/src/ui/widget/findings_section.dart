import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_details_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_concerns_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/sunscreen_details_model.dart';
import 'package:healthy_living_product_detail/src/ui/models/finding_section_screen_params.dart';
import 'package:healthy_living_product_detail/src/ui/models/findings_health_concerns_card_param.dart';
import 'package:healthy_living_product_detail/src/ui/widget/findings_health_concerns_card.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FindingsSection extends StatelessWidget {
  final FindingSectionScreenParams findingSectionParam;

  const FindingsSection({required this.findingSectionParam, super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    return FindingsHealthConcernsCard(
      findingsHealthParam: FindingsHealthConcernsCardParam(
        healthConcernList: _healthConcernList(
          cosmeticConcernsModel:
              findingSectionParam
                  .findingSectionScreenParams
                  .cosmeticConcernsModel,
          cleanerDetailsScoresModel:
              findingSectionParam
                  .findingSectionScreenParams
                  .cleanerDetailsScoresModel,
          foodDetailsScoresModel:
              findingSectionParam
                  .findingSectionScreenParams
                  .foodDetailScoresModel,
          localizations: localization,
          sunscreenDetailsModel:
              findingSectionParam
                  .findingSectionScreenParams
                  .sunscreenDetailsModel,
        ),
        isHealthConcernsFoodType:
            findingSectionParam
                        .findingSectionScreenParams
                        .foodDetailScoresModel !=
                    null
                ? true
                : false,
        score: findingSectionParam.score,
        title: findingSectionParam.title,
        findingsFoodList:
            findingSectionParam
                .findingSectionScreenParams
                .foodDetailPageDetailsModel,
        isProductCompare: findingSectionParam.isProductCompare,
        rightHealthConcernList: _rightHealthConcernList(
          cosmeticConcernsModel:
              findingSectionParam
                  .rightFindingSectionScreenParams
                  ?.cosmeticConcernsModel,
          cleanerDetailsScoresModel:
              findingSectionParam
                  .rightFindingSectionScreenParams
                  ?.cleanerDetailsScoresModel,
          foodDetailsScoresModel:
              findingSectionParam
                  .rightFindingSectionScreenParams
                  ?.foodDetailScoresModel,
          localizations: localization,
          sunscreenDetailsModel:
              findingSectionParam
                  .rightFindingSectionScreenParams
                  ?.sunscreenDetailsModel,
        ),
        isLeftProductVerified: findingSectionParam.isLeftProductVerified,
        isRightProductVerified: findingSectionParam.isRightProductVerified,
      ),
    );
  }

  bool _hasSunscreen() {
    final leftHasSunscreen =
        findingSectionParam.findingSectionScreenParams.sunscreenDetailsModel !=
        null;
    final rightHasSunscreen =
        findingSectionParam
            .rightFindingSectionScreenParams
            ?.sunscreenDetailsModel !=
        null;
    return leftHasSunscreen || rightHasSunscreen;
  }

  List<FindingsHealthConcernUIModel> _healthConcernList({
    required HealthyLivingProductDetailLocalizations localizations,
    CosmeticConcernsModel? cosmeticConcernsModel,
    CleanerDetailsScoresModel? cleanerDetailsScoresModel,
    FoodDetailScoresModel? foodDetailsScoresModel,
    SunscreenDetailsModel? sunscreenDetailsModel,
  })
  {
    const lowHazard = HazardLevel.low;
    List<FindingsHealthConcernUIModel> healthConcerns = [];

    if (cosmeticConcernsModel != null) {
      healthConcerns = [
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icCancer,
          title: localizations.productDetail_healthConcern_cancer,
          hazardLevel:
              (cosmeticConcernsModel.cancerConcernLevel ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cosmeticConcernsModel.cancerConcernLevel,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icAllergies,
          title:
              localizations.productDetail_healthConcern_allergiesImmunotoxicity,
          hazardLevel:
              (cosmeticConcernsModel.allergyConcernLevel ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cosmeticConcernsModel.allergyConcernLevel,
        ),

        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icDevelopmental,
          title:
              localizations
                  .productDetail_healthConcern_developmentalAndReproductive,
          hazardLevel:
              (cosmeticConcernsModel.developmentalConcernLevel ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cosmeticConcernsModel.developmentalConcernLevel,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icRestriction,
          title: localizations.productDetail_healthConcern_useRestrictions,
          hazardLevel:
              (cosmeticConcernsModel.useRestrictionConcerLevel ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cosmeticConcernsModel.useRestrictionConcerLevel,
        ),
        if (_hasSunscreen())
          FindingsHealthConcernUIModel(
            iconPath: DSIcons.icUVA,
            title: localizations.productDetail_healthConcern_uvaUvb,
            hazardLevel:
                sunscreenDetailsModel != null
                    ? (sunscreenDetailsModel.uvabBalance ?? "")
                            .ratingHazardLevel ??
                        lowHazard
                    : HazardLevel.noData,
            hazardType: sunscreenDetailsModel?.uvabBalance,
          ),
      ];
    }

    if (cleanerDetailsScoresModel != null) {
      healthConcerns = [
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icAsthma,
          title: localizations.productDetail_healthConcern_asthmaRespiratory,
          hazardLevel:
              (cleanerDetailsScoresModel.asthmaScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.asthmaScore,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icAllergies,
          title:
              localizations.productDetail_healthConcern_skinAllergiesIrritation,
          hazardLevel:
              (cleanerDetailsScoresModel.skinScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.skinScore,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icDevelopmental,
          title:
              localizations
                  .productDetail_healthConcern_developmentalReproductive,
          hazardLevel:
              (cleanerDetailsScoresModel.devreproScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.devreproScore,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icCancer,
          title: localizations.productDetail_healthConcern_cancer,
          hazardLevel:
              (cleanerDetailsScoresModel.cancerScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.cancerScore,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icPlant,
          title: localizations.productDetail_healthConcern_environment,
          hazardLevel:
              (cleanerDetailsScoresModel.environmentScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.environmentScore,
        ),
      ];
    }

    if (foodDetailsScoresModel != null) {
      healthConcerns = [
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icNutrition,
          title: localizations.productDetail_healthConcern_nutritionConcern,
          hazardLevel:
              (foodDetailsScoresModel.nutritionScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: foodDetailsScoresModel.nutritionHazard,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icFoodIngredient,
          title: localizations.productDetail_healthConcern_ingredientConcern,
          hazardLevel:
              (foodDetailsScoresModel.ingredientScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: foodDetailsScoresModel.ingredientHazard,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icProcessing,
          title: localizations.productDetail_healthConcern_processingConcern,
          hazardLevel:
              (foodDetailsScoresModel.processingScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: foodDetailsScoresModel.processingHazard,
        ),
      ];
    }
    return healthConcerns;
  }

  List<FindingsHealthConcernUIModel> _rightHealthConcernList({
    required HealthyLivingProductDetailLocalizations localizations,
    CosmeticConcernsModel? cosmeticConcernsModel,
    CleanerDetailsScoresModel? cleanerDetailsScoresModel,
    FoodDetailScoresModel? foodDetailsScoresModel,
    SunscreenDetailsModel? sunscreenDetailsModel,
  }) {
    const lowHazard = HazardLevel.low;
    List<FindingsHealthConcernUIModel> healthConcerns = [];

    if (cosmeticConcernsModel != null) {
      healthConcerns = [
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icCancer,
          title: localizations.productDetail_healthConcern_cancer,
          hazardLevel:
              (cosmeticConcernsModel.cancerConcernLevel ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cosmeticConcernsModel.cancerConcernLevel,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icAllergies,
          title:
              localizations.productDetail_healthConcern_allergiesImmunotoxicity,
          hazardLevel:
              (cosmeticConcernsModel.allergyConcernLevel ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cosmeticConcernsModel.allergyConcernLevel,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icDevelopmental,
          title:
              localizations
                  .productDetail_healthConcern_developmentalReproductive,
          hazardLevel:
              (cosmeticConcernsModel.developmentalConcernLevel ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cosmeticConcernsModel.developmentalConcernLevel,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icRestriction,
          title: localizations.productDetail_healthConcern_useRestrictions,
          hazardLevel:
              (cosmeticConcernsModel.useRestrictionConcerLevel ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cosmeticConcernsModel.useRestrictionConcerLevel,
        ),
        if (_hasSunscreen())
          FindingsHealthConcernUIModel(
            iconPath: DSIcons.icUVA,
            title: localizations.productDetail_healthConcern_uvaUvb,
            hazardLevel:
                sunscreenDetailsModel != null
                    ? (sunscreenDetailsModel.uvabBalance ?? "")
                            .ratingHazardLevel ??
                        lowHazard
                    : HazardLevel.noData,
            hazardType: sunscreenDetailsModel?.uvabBalance,
          ),
      ];
    }

    if (cleanerDetailsScoresModel != null) {
      healthConcerns = [
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icAsthma,
          title: localizations.productDetail_healthConcern_asthmaRespiratory,
          hazardLevel:
              (cleanerDetailsScoresModel.asthmaScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.asthmaScore,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icAllergies,
          title:
              localizations.productDetail_healthConcern_skinAllergiesIrritation,
          hazardLevel:
              (cleanerDetailsScoresModel.skinScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.skinScore,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icDevelopmental,
          title:
              localizations
                  .productDetail_healthConcern_developmentalReproductive,
          hazardLevel:
              (cleanerDetailsScoresModel.devreproScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.devreproScore,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icCancer,
          title: localizations.productDetail_healthConcern_cancer,
          hazardLevel:
              (cleanerDetailsScoresModel.cancerScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.cancerScore,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icPlant,
          title: localizations.productDetail_healthConcern_environment,
          hazardLevel:
              (cleanerDetailsScoresModel.environmentScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: cleanerDetailsScoresModel.environmentScore,
        ),
      ];
    }

    if (foodDetailsScoresModel != null) {
      healthConcerns = [
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icNutrition,
          title: localizations.productDetail_healthConcern_nutritionConcern,
          hazardLevel:
              (foodDetailsScoresModel.nutritionScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: foodDetailsScoresModel.nutritionHazard,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icFoodIngredient,
          title: localizations.productDetail_healthConcern_ingredientConcern,
          hazardLevel:
              (foodDetailsScoresModel.ingredientScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: foodDetailsScoresModel.ingredientHazard,
        ),
        FindingsHealthConcernUIModel(
          iconPath: DSIcons.icProcessing,
          title: localizations.productDetail_healthConcern_processingConcern,
          hazardLevel:
              (foodDetailsScoresModel.processingScore?.toString() ?? "")
                  .ratingHazardLevel ??
              lowHazard,
          hazardType: foodDetailsScoresModel.processingHazard,
        ),
      ];
    }

    return healthConcerns;
  }
}
