import 'package:design_system/design_system.dart'
    show
        DSButtonPrimary,
        DSButtonSecondary,
        DSButtonSize,
        DSIcons,
        DSImage,
        DSSpacingWidget,
        DSText,
        DSTextStyleType;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';

class SubscriptionConfirmationFailedWidget extends StatelessWidget {
  const SubscriptionConfirmationFailedWidget({
    required this.onTryAgainTap,
    required this.onContinueWithoutPremiumTap,
    super.key,
  });

  final VoidCallback onTryAgainTap;
  final VoidCallback onContinueWithoutPremiumTap;

  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        context.dsSpacing.sp400,
        76,
        context.dsSpacing.sp400,
        context.dsSpacing.sp0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DSImage.asset(
                    DSIcons.icHealthyLivingLogoShape,
                    width: 343,
                    height: 256,
                    fit: BoxFit.contain,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp700),
                  DSText(
                    text:
                        sharedLocalizations
                            .premium_subscriptionConfirmation_failureTitle,
                    textStyle: DSTextStyleType.secondaryHeadingL,
                    textColor: context.dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                  DSText(
                    text:
                        sharedLocalizations
                            .premium_subscriptionConfirmation_somethingWentWrongWhileSettingUp,
                    textStyle: DSTextStyleType.primaryBodyMRegular,
                    textColor: context.dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                  DSText(
                    text:
                        sharedLocalizations
                            .premium_subscriptionConfirmation_pleaseTryAgain,
                    textStyle: DSTextStyleType.primaryBodyMRegular,
                    textColor: context.dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: context.dsSpacing.sp200,
              bottom: context.dsSpacing.sp400,
            ),
            child: Column(
              spacing: context.dsSpacing.sp200,
              children: [
                DSButtonSecondary.fill(
                  text: sharedLocalizations.general_tryAgain,
                  size: DSButtonSize.small,
                  onPressed: onTryAgainTap,
                ),
                DSButtonPrimary.ghost(
                  text:
                      sharedLocalizations
                          .premium_subscriptionConfirmation_continueWithoutPremium,
                  size: DSButtonSize.small,
                  onPressed: onContinueWithoutPremiumTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
