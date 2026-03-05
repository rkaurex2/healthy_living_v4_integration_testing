import 'package:design_system/design_system.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/model/about_scores_type.dart';
import 'package:healthy_living_account/src/ui/model/about_scores_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AccountScreenUtils {
  static List<AboutScoresUiModel> getAboutScoresUiItem(
    HealthyLivingAccountLocalizations localization,
    DSColorThemeExtension dsColor,
  ) {
    return [
      AboutScoresUiModel(
        title: localization.account_myAccount_ewgVerified,
        description: localization.account_myAccount_understandOurStrictest,
        titleColor: dsColor.textOnSurfaceDefault,
        descriptionColor: dsColor.textOnSurfaceSecondary,
        type: AboutScoresType.ewgVerified,
        url: UrlConstants.ewgVerified,
        backgroundColor: dsColor.surfacePrimaryMedium,
      ),
      AboutScoresUiModel(
        title: localization.account_myAccount_personalCare,
        description: localization.account_myAccount_learnHowWeScore,
        titleColor: dsColor.textNeutralOnWhite,
        descriptionColor: dsColor.textNeutralSecondary,
        type: AboutScoresType.personalCare,
        url: UrlConstants.personalCareScores,
        backgroundColor: dsColor.surfaceCategoriesPersonalCare,
      ),
      AboutScoresUiModel(
        title: localization.account_myAccount_sunscreens,
        description: localization.account_myAccount_learnHowWeReviewSunscreens,
        titleColor: dsColor.textNeutralOnWhite,
        descriptionColor: dsColor.textNeutralSecondary,
        type: AboutScoresType.sunscreens,
        url: UrlConstants.sunscreenScores,
        backgroundColor: dsColor.surfaceAdditionalNude50,
      ),
      AboutScoresUiModel(
        title: localization.account_myAccount_cleaners,
        description: localization.account_myAccount_understandHowWeEvaluate,
        titleColor: dsColor.textNeutralOnWhite,
        descriptionColor: dsColor.textNeutralSecondary,
        type: AboutScoresType.cleaners,
        url: UrlConstants.cleanersScores,
        backgroundColor: dsColor.surfaceCategoriesCleaners,
      ),
      AboutScoresUiModel(
        title: localization.account_myAccount_food,
        description: localization.account_myAccount_learnHowWeRate,
        titleColor: dsColor.textNeutralOnWhite,
        descriptionColor: dsColor.textNeutralSecondary,
        type: AboutScoresType.food,
        url: UrlConstants.foodScores,
        backgroundColor: dsColor.surfaceCategoriesFood,
      ),
    ];
  }
}
