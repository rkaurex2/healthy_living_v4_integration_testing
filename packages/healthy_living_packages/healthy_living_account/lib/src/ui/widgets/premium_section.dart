import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/widgets/premium_preference_tile.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class PremiumSection extends StatelessWidget {
  const PremiumSection({
    super.key,
    this.isPremiumUser = false,
    this.isPremiumFtUxViewed = false,
    this.onTap,
    this.onTapIngredientPreference,
  });
  final bool isPremiumUser;
  final bool isPremiumFtUxViewed;
  final VoidCallback? onTap;
  final VoidCallback? onTapIngredientPreference;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingSharedLocalizations.of(context)!;
    final localizationAccount = HealthyLivingAccountLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.dsSizes.sz200),
          child: DSText(
            text: localization.account_myAccount_premium,
            textStyle: DSTextStyleType.secondaryHeadingS,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
        isPremiumUser
            ? PremiumPreferenceTile(
              icon: DSIcons.icFilterIngredient,
              title: localization.filters_ingredientPreferences_title,
              onTap: () {
                onTapIngredientPreference?.call();
              },
              badgeText:
                  isPremiumFtUxViewed
                      ? localizationAccount.account_myAccount_manage
                      : localizationAccount
                          .account_ingredientPreference_getStarted,
            )
            // KEY: TestKeys.premiumBannerAccount
            : PremiumTile(key: const Key('premium_banner_account'), onTap: onTap),
      ],
    );
  }
}
