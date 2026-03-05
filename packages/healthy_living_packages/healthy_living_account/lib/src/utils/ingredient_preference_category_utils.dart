import 'package:design_system/design_system.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_type.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferenceCategoryUtils {
  static List<IngredientPreferenceCategoryUiModel>
  getIngredientPreferenceCategoryUiItem(
    HealthyLivingAccountLocalizations localization,
    DSColorThemeExtension dsColor,
    bool isLoadingItems,
    bool unableToFetch, {
    bool hideSunscreen = true,
  }) {
    return [
      IngredientPreferenceCategoryUiModel(
        title: localization.account_myAccount_personalCare,
        description:
            localization.account_ingredientPreference_personalCareMessage,
        titleColor: dsColor.textNeutralOnWhite,
        descriptionColor: dsColor.textNeutralSecondary,
        type: IngredientPreferenceCategoryType.personalCare,
        backgroundColor: dsColor.surfaceCategoriesPersonalCare,
        imagePath: DSIcons.icPersonalCarePreference,
        avoidCount: 0,
        preferredCount: 0,
        bottomBackgroundColor: dsColor.surfaceCategoriesPersonalCareLight,
        isLoadingItems: isLoadingItems,
        unableToFetch: unableToFetch,
      ),
      //TODO hide the sunscreen preference EWGV4-649
      if (!hideSunscreen) ...{
        IngredientPreferenceCategoryUiModel(
          title: localization.account_myAccount_sunscreens,
          description:
              localization.account_ingredientPreference_personalCareMessage,
          titleColor: dsColor.textNeutralOnWhite,
          descriptionColor: dsColor.textNeutralSecondary,
          type: IngredientPreferenceCategoryType.sunscreens,
          backgroundColor: dsColor.surfaceAdditionalNude50,
          imagePath: DSIcons.icBrowseSunscreen,
          avoidCount: 0,
          preferredCount: 0,
          isLoadingItems: isLoadingItems,
          bottomBackgroundColor: dsColor.surfaceAdditionalNude0,
          unableToFetch: unableToFetch,
        ),
      },
      IngredientPreferenceCategoryUiModel(
        title: localization.account_myAccount_cleaners,
        description: localization.account_ingredientPreference_cleanerMessage,
        titleColor: dsColor.textNeutralOnWhite,
        descriptionColor: dsColor.textNeutralSecondary,
        type: IngredientPreferenceCategoryType.cleaners,
        backgroundColor: dsColor.surfaceCategoriesCleaners,
        imagePath: DSIcons.icCleanerPreference,
        avoidCount: 0,
        preferredCount: 0,
        isLoadingItems: isLoadingItems,
        unableToFetch: unableToFetch,
        bottomBackgroundColor: dsColor.surfaceCategoriesCleanersLight,
      ),
      IngredientPreferenceCategoryUiModel(
        title: localization.account_myAccount_food,
        description: localization.account_ingredientPreference_foodMessage,
        titleColor: dsColor.textNeutralOnWhite,
        descriptionColor: dsColor.textNeutralSecondary,
        type: IngredientPreferenceCategoryType.food,
        backgroundColor: dsColor.surfaceCategoriesFood,
        imagePath: DSIcons.icFoodPreference,
        avoidCount: 0,
        preferredCount: 0,
        isLoadingItems: isLoadingItems,
        unableToFetch: unableToFetch,
        bottomBackgroundColor: dsColor.surfaceCategoriesFoodLight,
      ),
    ];
  }

  static IngredientPreferenceCategoryUiModel pick(
    List<IngredientPreferenceCategoryUiModel> list,
    IngredientPreferenceCategoryType type,
  ) {
    if (type == IngredientPreferenceCategoryType.personalCare) {
      if (list.any(
        (e) => e.type == IngredientPreferenceCategoryType.personalCare,
      )) {
        final personalCare = list.firstWhere(
          (e) => e.type == IngredientPreferenceCategoryType.personalCare,
        );
        return personalCare.copyWith(
          avoidCount: personalCare.avoidCount,
          preferredCount: personalCare.preferredCount,
        );
      }
    }

    return list.firstWhere((e) => e.type == type);
  }

  static String getTitle({
    required String categoryType,
    required HealthyLivingAccountLocalizations localization,
  }) {
    if (categoryType == StringConstants.personalCare) {
      return localization.account_myAccount_personalCare;
    } else if (categoryType == StringConstants.food) {
      return localization.account_myAccount_food;
    } else if (categoryType == StringConstants.cleaners) {
      return localization.account_myAccount_cleaners;
    } else {
      return localization.account_myAccount_sunscreens;
    }
  }

  static String getListDescription({
    required String categoryType,
    required HealthyLivingAccountLocalizations localization,
  }) {
    if (categoryType == StringConstants.personalCare) {
      return localization.account_ingredientPreference_listDescriptionPcp;
    } else if (categoryType == StringConstants.food) {
      return localization.account_ingredientPreference_listDescriptionFood;
    } else if (categoryType == StringConstants.cleaners) {
      return localization.account_ingredientPreference_listDescriptionCleaner;
    } else {
      return "";
    }
  }
}
