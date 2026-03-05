import 'package:design_system/design_system.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/model/checklist_item_intro_ui_model.dart';
import 'package:healthy_living_scan/src/ui/model/product_category_ui_model.dart';
import 'package:healthy_living_scan/src/ui/model/product_form_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductUtils {
  static List<ProductCategoryUIModel> getProductTypes(
    HealthyLivingSharedLocalizations localization,
  ) {
    return [
      ProductCategoryUIModel(
        imageAsset: DSIcons.icPersonalCareSelectProduct,
        title: localization.general_productCategory_personalCare,
        subtitle:
            localization.scan_submitProducts_makeupHairCareSkinCareAndMore,
        isInstantScoring: true,
        productByCategoryType: ProductCategory.personalCare,
      ),

      ProductCategoryUIModel(
        imageAsset: DSIcons.icSunscreenSubmitProduct,
        title: localization.general_productCategory_sunscreen,
        subtitle: localization.scan_submitProducts_anySpfProductType,
        isInstantScoring: false,
        productByCategoryType: ProductCategory.sunscreen,
      ),
      ProductCategoryUIModel(
        imageAsset: DSIcons.icCleanersSubmitProduct,
        title: localization.general_productCategory_cleaners,
        subtitle:
            localization.scan_submitProducts_householdAndProfessionalCleaners,
        isInstantScoring: false,
        productByCategoryType: ProductCategory.cleaner,
      ),
      ProductCategoryUIModel(
        imageAsset: DSIcons.icFoodSubmitProduct,
        title: localization.general_productCategory_food,
        subtitle:
            localization.scan_submitProducts_snacksMeatSoupsDessertsAndMore,
        isInstantScoring: false,
        productByCategoryType: ProductCategory.food,
      ),
    ];
  }

  static List<ChecklistItemIntroUiModel> getPCPChecklist(
    HealthyLivingScanLocalizations localization,
  ) {
    return [
      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_takeAPhotoOfTheFrontLabel,
        description:
            localization.submitProduct_info_showTheBrandAndProductNameClearly,
      ),

      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_captureTheIngredientList,
        description:
            localization.submitProduct_info_makeSureAllTextIsClearAndEasyToRead,
      ),
    ];
  }

  static List<ChecklistItemIntroUiModel> getSunscreenChecklist(
    HealthyLivingScanLocalizations localization,
  ) {
    return [
      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_takeAPhotoOfTheFrontLabel,
        description:
            localization.submitProduct_info_showTheBrandAndProductNameClearly,
      ),

      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_captureTheDrugFactsPanel,
        description:
            localization.submitProduct_info_captureTheDrugFactsPanelDescription,
      ),
    ];
  }

  static List<ChecklistItemIntroUiModel> getCleanersChecklist(
    HealthyLivingScanLocalizations localization,
  ) {
    return [
      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_takeAPhotoOfTheFrontLabel,
        description:
            localization.submitProduct_info_showTheBrandAndProductNameClearly,
      ),

      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_captureTheIngredientList,
        description:
            localization.submitProduct_info_captureTheIngredientListDescription,
      ),
      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_directionForUse,
        description: localization.submitProduct_info_directionForUseDescription,
      ),
      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_warningsOrHazards,
        description:
            localization.submitProduct_info_warningsOrHazardsDescription,
      ),
    ];
  }

  static List<ChecklistItemIntroUiModel> getFoodChecklist(
    HealthyLivingScanLocalizations localization,
  ) {
    return [
      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_takeAPhotoOfTheFrontLabel,
        description:
            localization.submitProduct_info_showTheBrandAndProductNameClearly,
      ),

      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_captureTheIngredientList,
        description:
            localization.submitProduct_info_makeSureAllTextIsClearAndEasyToRead,
      ),
      ChecklistItemIntroUiModel(
        title: localization.submitProduct_info_includeTheNutritionFactsPanel,
        description:
            localization
                .submitProduct_info_includeTheNutritionFactsPanelDescription,
      ),
    ];
  }

  static final List<String> getUnitOptions = const [
    'fl oz',
    'mL',
    'L',
    'oz',
    'g',
    'lb',
    'kg',
    'cups',
    'count',
    'servings',
    'loads',
  ];

  static List<String> getUsage(HealthyLivingScanLocalizations localization) {
    return [
      localization.submitProduct_productSubmission_leaveOn,
      localization.submitProduct_productSubmission_rinseOff,
      localization.submitProduct_productSubmission_wipeOff,
    ];
  }

  static List<ProductFormUIModel> getPcpProductFormList(
    HealthyLivingScanLocalizations localization,
  ) {
    return [
      ProductFormUIModel(
        title: localization.submitProduct_productSubmission_liquidSolid,
        subtitle: localization.submitProduct_productSubmission_liquidSolidDes,
        imagePath: DSIcons.icLiquidSolid,
      ),
      ProductFormUIModel(
        title: localization.submitProduct_productSubmission_loosePowder,
        subtitle: localization.submitProduct_productSubmission_loosePowderDes,
        imagePath: DSIcons.icLoosePowder,
      ),
      ProductFormUIModel(
        title: localization.submitProduct_productSubmission_pressedPowder,
        subtitle: localization.submitProduct_productSubmission_pressedPowderDes,
        imagePath: DSIcons.icPressedPowder,
      ),
      ProductFormUIModel(
        title: localization.submitProduct_productSubmission_pumpSpray,
        subtitle: localization.submitProduct_productSubmission_pumpSprayDes,
        imagePath: DSIcons.icPumpSpray,
      ),
      ProductFormUIModel(
        title: localization.submitProduct_productSubmission_aerosolSpray,
        subtitle: localization.submitProduct_productSubmission_aerosolSprayDes,
        imagePath: DSIcons.icAerosolSpray,
      ),
    ];
  }

  static List<ProductFormUIModel> getSunscreenProductFormList(
    HealthyLivingScanLocalizations localization,
  ) {
    return [
      ProductFormUIModel(
        title: localization.submitProduct_productSubmission_liquidSolid,
        subtitle: localization.submitProduct_productSubmission_liquidSolidDes,
        imagePath: DSIcons.icLiquidSolid,
      ),

      ProductFormUIModel(
        title: localization.submitProduct_productSubmission_pumpSpray,
        subtitle: localization.submitProduct_productSubmission_pumpSprayDes,
        imagePath: DSIcons.icPumpSpray,
      ),
      ProductFormUIModel(
        title: localization.submitProduct_productSubmission_aerosolSpray,
        subtitle: localization.submitProduct_productSubmission_aerosolSprayDes,
        imagePath: DSIcons.icAerosolSpray,
      ),
    ];
  }

  static final List<int> getSpfOptions = const [
    15,
    20,
    25,
    30,
    35,
    40,
    45,
    50,
    55,
    60,
    70,
    75,
    80,
    85,
    90,
    100,
  ];

  static List<FindingsHealthConcernUIModel> getHealthConcerns(
    SubmitProductInfoParams infoUIModel,
    HealthyLivingSharedLocalizations localization,
  ) {
    const lowHazard = HazardLevel.low;
    final healthConcerns =
        infoUIModel.provisionalScoreResponse?.provisionalScore?.healthConcerns;

    return [
      FindingsHealthConcernUIModel(
        iconPath: DSIcons.icDevelopmental,
        title:
            localization
                .productSubmit_ingredients_developmentalReproductiveToxicity,
        hazardLevel:
            (healthConcerns?.devRepNew ?? '').ratingHazardLevel ?? lowHazard,
      ),
      FindingsHealthConcernUIModel(
        iconPath: DSIcons.icAllergies,
        title: localization.productSubmit_ingredients_allergies,
        hazardLevel:
            (healthConcerns?.allergyNew ?? '').ratingHazardLevel ?? lowHazard,
      ),
      FindingsHealthConcernUIModel(
        iconPath: DSIcons.icCancer,
        title: localization.productSubmit_ingredients_cancer,
        hazardLevel:
            (healthConcerns?.cancerNew ?? '').ratingHazardLevel ?? lowHazard,
      ),
      FindingsHealthConcernUIModel(
        iconPath: DSIcons.icRestriction,
        title: localization.general_ingredients_useRestrictions,
        hazardLevel:
            (healthConcerns?.useResLevel ?? '').ratingHazardLevel ?? lowHazard,
      ),
    ];
  }

  static final List<BrowseMainCategoryModel> getSunscreenSubCategories = const [
    BrowseMainCategoryModel(name: StringConstants.moisturizerWithSPF),
    BrowseMainCategoryModel(name: StringConstants.lipBalmWithSPF),
    BrowseMainCategoryModel(name: StringConstants.babySunscreen),
    BrowseMainCategoryModel(name: StringConstants.beachSportSunscreen),
  ];
}
