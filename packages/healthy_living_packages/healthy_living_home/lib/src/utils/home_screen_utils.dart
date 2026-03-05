import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/ui/model/browse_product_by_category_model.dart';
import 'package:healthy_living_home/src/ui/model/explore_grid_item_type.dart';
import 'package:healthy_living_home/src/ui/model/explore_grid_item_ui_model.dart';
import 'package:healthy_living_home/src/ui/model/user_guide_carousel_content_model.dart';
import 'package:healthy_living_home/src/utils/user_guide_slide_type_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HomeScreenUtils {
  static List<BrowseProductByCategoryModel> getBrowseProductByCategoryItem({
    required HealthyLivingHomeLocalizations localizations,
    required HealthyLivingSharedLocalizations healthyLivingSharedLocalization,
    required DSColorThemeExtension dsColors,
  }) {
    return [
      BrowseProductByCategoryModel(
        title:
            healthyLivingSharedLocalization
                .general_productCategory_personalCare,
        imagePath: DSIcons.icBrowseByPersonalCare,
        bgColor: dsColors.surfaceCategoriesPersonalCare,
        textColor: dsColors.textNeutralOnWhite,
        type: BrowseProductByCategoryType.personalCare,
      ),
      BrowseProductByCategoryModel(
        title: healthyLivingSharedLocalization.general_productCategory_cleaners,
        imagePath: DSIcons.icBrowseByCleanser,
        bgColor: dsColors.surfaceCategoriesCleaners,
        textColor: dsColors.textNeutralOnWhite,
        type: BrowseProductByCategoryType.cleaner,
      ),
      BrowseProductByCategoryModel(
        title: healthyLivingSharedLocalization.general_productCategory_food,
        imagePath: DSIcons.icBrowseByFood,
        bgColor: dsColors.surfaceCategoriesFood,
        textColor: dsColors.textNeutralOnWhite,
        type: BrowseProductByCategoryType.food,
      ),
      BrowseProductByCategoryModel(
        title:
            healthyLivingSharedLocalization.general_productCategory_sunscreen,
        imagePath: DSIcons.icSunscreen,
        bgColor: dsColors.surfaceAdditionalNude50,
        textColor: dsColors.textNeutralOnWhite,
        type: BrowseProductByCategoryType.sunscreen,
      ),
    ];
  }

  static List<UserGuideCarouselContentModel> getUserGuideCarouselContent(
    HealthyLivingHomeLocalizations localization,
    DSColorThemeExtension dsColor,
  ) {
    return [
      UserGuideCarouselContentModel(
        title: localization.home_userGuideEwgVerifiedTitle,
        mainText: localization.home_userGuideEwgVerifiedSubtitle,
        learnMoreText: localization.home_userGuideEwgVerifiedLearnMore,
        backgroundColor: dsColor.surfacePrimaryDefault,
        overlayColor: Colors.black.withValues(alpha: 0.4),
        badge: DSIcons.icEWGVerified,
        userGuideSlideType: UserGuideSlideType.verified,
      ),
      UserGuideCarouselContentModel(
        title: localization.home_userGuidePersonalScoresTitle,
        mainText: localization.home_userGuidePersonalScoresSubtitle,
        learnMoreText: localization.home_userGuidePersonalScoresLearnMore,
        backgroundImage: DSIcons.icUserGuidePersonalCare,
        overlayColor: Colors.black.withValues(alpha: 0.4),
        userGuideSlideType: UserGuideSlideType.pcp,
      ),
      UserGuideCarouselContentModel(
        title: localization.home_userGuideFoodScoresTitle,
        mainText: localization.home_userGuideFoodScoresSubtitle,
        learnMoreText: localization.home_userGuideFoodScoresLearnMore,
        backgroundImage: DSIcons.icUserGuideFood,
        overlayColor: Colors.black.withValues(alpha: 0.4),
        userGuideSlideType: UserGuideSlideType.foodScores,
      ),
      UserGuideCarouselContentModel(
        title: localization.home_userGuideCleanersScoresTitle,
        mainText: localization.home_userGuideCleanersScoresSubtitle,
        learnMoreText: localization.home_userGuideCleanersScoresLearnMore,
        overlayColor: Colors.black.withValues(alpha: 0.4),
        backgroundImage: DSIcons.icUserGuideCleanser,
        userGuideSlideType: UserGuideSlideType.cleaners,
      ),
      UserGuideCarouselContentModel(
        title: localization.home_userGuideSunscreensScoresTitle,
        mainText: localization.home_userGuideSunscreensScoresSubtitle,
        learnMoreText: localization.home_userGuideSunscreensScoresLearnMore,
        overlayColor: Colors.black.withValues(alpha: 0.4),
        backgroundImage: DSIcons.icUserGuideSunscreen,
        userGuideSlideType: UserGuideSlideType.sunscreens,
      ),
    ];
  }

  static List<GuidesUiModel> getEwgGuidesUiItem(
    HealthyLivingHomeLocalizations localization,
    DSColorThemeExtension dsColor,
  ) {
    return [
      GuidesUiModel(
        image: DSIcons.icDirtyDozenTm,
        title: localization.home_ewgGuides_dirtyDozenGuide,
        titleColor: dsColor.textOnSurfaceDefault,
        type: GuidesType.dirtyDozen,
        url: UrlConstants.dirtyDozen,
        backgroundColor: dsColor.surfaceAdditionalNude400,
        webViewTitle: localization.home_ewgGuides_dirtyDozenGuide,
        imageWidth: 146,
        imageHeight: 119,
      ),
      GuidesUiModel(
        image: DSIcons.icCleanFifteenTm,
        title: localization.home_ewgGuides_cleanFifteenGuide,
        titleColor: dsColor.surfacePrimaryPress,
        type: GuidesType.cleanFifteen,
        url: UrlConstants.cleanFifteen,
        backgroundColor: dsColor.surfaceBrandLight1,
        webViewTitle: localization.home_ewgGuides_cleanFifteenGuide,
        imageWidth: 121,
        imageHeight: 116,
      ),
      GuidesUiModel(
        image: DSIcons.icTapDatabase,
        title: localization.home_ewgGuides_tapWaterDatabase,
        titleColor: dsColor.textOnSurfaceDefault,
        type: GuidesType.tapWaterDatabase,
        url: UrlConstants.tapWaterDatabase,
        backgroundColor: dsColor.surfacePrimaryDefault,
        webViewTitle: localization.home_ewgGuides_tapWaterDatabaseGuide,
        imageWidth: 90,
        imageHeight: 119,
      ),
      GuidesUiModel(
        image: DSIcons.icEndocrine,
        title: localization.home_ewgGuides_endocrineDisruptorsVerticalGuide,
        titleColor: dsColor.surfacePrimaryPress,
        type: GuidesType.guideToEndocrineDisruptors,
        url: UrlConstants.guideToEndocrineDisruptors,
        backgroundColor: dsColor.surfaceAdditionalPurple25,
        webViewTitle:
            localization.home_ewgGuides_guideToEndocrineDisruptorsTitle,
        imageWidth: 119,
        imageHeight: 127,
      ),
      GuidesUiModel(
        image: DSIcons.icCow,
        title:
            localization.home_ewgGuides_meatAndDairyLabelDecoderVerticalGuide,
        titleColor: dsColor.textOnSurfaceDefault,
        type: GuidesType.meatAndDairyLabelDecoder,
        url: UrlConstants.meatAndDairyLabelDecoder,
        backgroundColor: dsColor.surfaceAdditionalNude600,
        webViewTitle: localization.home_ewgGuides_meatAndDairyLabelDecoderGuide,
        imageWidth: 147,
        imageHeight: 105,
      ),
    ];
  }

  static List<HomeGuidesUiModel> getHomeEwgGuidesUiItem(
    HealthyLivingHomeLocalizations localization,
    DSColorThemeExtension dsColor,
  ) {
    return [
      HomeGuidesUiModel(
        image: DSIcons.icHomeDirtyDozen,
        title: localization.home_ewgGuides_dirtyDozenTm,
        titleColor: dsColor.surfaceNeutralBackgroundWhite,
        borderColor: dsColor.textOnSurfaceDefault,
        type: GuidesType.dirtyDozen,
        url: UrlConstants.dirtyDozen,
        backgroundColor: Colors.transparent,
        webViewTitle: localization.home_ewgGuides_dirtyDozenGuide,
      ),
      HomeGuidesUiModel(
        image: DSIcons.icHomeCleanFifteen,
        title: localization.home_ewgGuides_cleanFifteenTm,
        titleColor: dsColor.textPrimaryDefault,
        borderColor: dsColor.strokePrimaryDefault,
        type: GuidesType.cleanFifteen,
        url: UrlConstants.cleanFifteen,
        backgroundColor: dsColor.surfaceBrandLight1,
        webViewTitle: localization.home_ewgGuides_cleanFifteenGuide,
      ),
      HomeGuidesUiModel(
        image: DSIcons.icTap,
        title: localization.home_ewgGuides_tapWaterDatabase,
        titleColor: dsColor.textOnSurfaceDefault,
        borderColor: dsColor.iconOnSurfaceDefault,
        type: GuidesType.tapWaterDatabase,
        url: UrlConstants.tapWaterDatabase,
        backgroundColor: dsColor.surfacePrimaryFocus,
        webViewTitle: localization.home_ewgGuides_tapWaterDatabaseGuide,
      ),
      HomeGuidesUiModel(
        image: DSIcons.icDisruptors,
        title: localization.home_ewgGuides_guideToEndocrineDisruptors,
        titleColor: dsColor.textPrimaryDefault,
        borderColor: dsColor.iconPrimary,
        type: GuidesType.guideToEndocrineDisruptors,
        url: UrlConstants.guideToEndocrineDisruptors,
        backgroundColor: dsColor.surfaceAdditionalPurple25,
        webViewTitle:
            localization.home_ewgGuides_guideToEndocrineDisruptorsTitle,
      ),
      HomeGuidesUiModel(
        image: DSIcons.icDairy,
        title: localization.home_ewgGuides_meatAndDairyLabelDecoder,
        titleColor: dsColor.textOnSurfaceDefault,
        borderColor: dsColor.iconOnSurfaceDefault,
        type: GuidesType.meatAndDairyLabelDecoder,
        url: UrlConstants.meatAndDairyLabelDecoder,
        backgroundColor: dsColor.surfaceAdditionalNude600,
        webViewTitle: localization.home_ewgGuides_meatAndDairyLabelDecoderGuide,
      ),
    ];
  }

  static List<ExploreGridItemUiModel> getExploreGridItems({
    required HealthyLivingHomeLocalizations homeLocalizations,
  }) {
    return [
      ExploreGridItemUiModel(
        title: homeLocalizations.home_explore_scan,
        description: homeLocalizations.home_explore_scanDescription,
        imageUrl: DSIcons.icBrandedScanner,
        type: ExploreGridItemType.scan,
      ),
      ExploreGridItemUiModel(
        title: homeLocalizations.home_explore_browse,
        description: homeLocalizations.home_explore_browseDescription,
        imageUrl: DSIcons.icBrowse,
        type: ExploreGridItemType.browse,
      ),
      ExploreGridItemUiModel(
        title: homeLocalizations.home_explore_lists,
        description: homeLocalizations.home_explore_listsDescription,
        imageUrl: DSIcons.icLists,
        type: ExploreGridItemType.lists,
      ),
      ExploreGridItemUiModel(
        title: homeLocalizations.home_explore_learn,
        description: homeLocalizations.home_explore_learnDescription,
        imageUrl: DSIcons.icLearn,
        type: ExploreGridItemType.learn,
      ),
    ];
  }

  String getGreetingMessage({
    required HealthyLivingHomeLocalizations homeLocalizations,
    required String name,
  }) {
    final now = DateTime.now();
    final h = now.hour;
    final m = now.minute;

    // Convert hour/minute to total minutes since midnight
    final totalMinutes = h * 60 + m;

    // Define range boundaries in total minutes
    const morningStart = 5 * 60; // 05:00
    const morningEnd = 11 * 60 + 59; // 11:59
    const afternoonStart = 12 * 60; // 12:00
    const afternoonEnd = 16 * 60 + 59; // 16:59
    const eveningStart = 17 * 60; // 17:00
    const eveningEnd = 20 * 60 + 59; // 20:59
    // "Hello" covers 21:00 – 04:59 (wraps around midnight)

    String greeting;

    if (totalMinutes >= morningStart && totalMinutes <= morningEnd) {
      greeting = homeLocalizations.home_greeting_goodMorning;
    } else if (totalMinutes >= afternoonStart && totalMinutes <= afternoonEnd) {
      greeting = homeLocalizations.home_greeting_goodAfternoon;
    } else if (totalMinutes >= eveningStart && totalMinutes <= eveningEnd) {
      greeting = homeLocalizations.home_greeting_goodEvening;
    } else {
      greeting = homeLocalizations.home_greeting_hello;
    }

    return name.isValidValue ? '$greeting, $name!' : greeting;
  }
}
