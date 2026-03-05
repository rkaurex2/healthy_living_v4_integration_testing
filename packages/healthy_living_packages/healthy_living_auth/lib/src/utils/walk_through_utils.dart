import 'package:design_system/design_system.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/models/walk_through_item.dart';
import 'package:flutter/material.dart';

class WalkthroughUtils {
  static List<WalkThroughItem> getFeatureItems({
    required BuildContext context,
  }) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    return [
      WalkThroughItem(
        icon: DSIcons.icSearchIllustrations,
        text: localization.auth_walkthrough_discoverProducts,
      ),
      WalkThroughItem(
        icon: DSIcons.icBrandedScannerOutLine,
        text: localization.auth_walkthrough_scanFaster,
      ),
      WalkThroughItem(
        icon: DSIcons.icMyItems,
        text: localization.auth_walkthrough_yourFavorite,
      ),
      WalkThroughItem(
        icon: DSIcons.icIllustrationsCompare,
        text: localization.auth_walkthrough_compareProducts,
      ),
      WalkThroughItem(
        icon: DSIcons.icIllustrationsIngredient,
        text: localization.auth_walkthrough_personalizeYourIngredient,
      ),
    ];
  }

  static List<WalkThroughItem> getPremiumItems({
    required BuildContext context,
  }) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    return [
      WalkThroughItem(
        icon: DSIcons.icCompare,
        text: localization.auth_walkthrough_compareProducts,
      ),
      WalkThroughItem(
        icon: DSIcons.icIngredient,
        text: localization.auth_walkthrough_personalizeYourIngredient,
      ),
    ];
  }
}
