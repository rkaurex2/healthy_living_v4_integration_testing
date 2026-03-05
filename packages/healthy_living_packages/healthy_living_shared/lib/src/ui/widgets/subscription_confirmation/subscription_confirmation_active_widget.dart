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

class SubscriptionConfirmationActiveWidget extends StatelessWidget {
  const SubscriptionConfirmationActiveWidget({
    required this.onSetPreferenceTap,
    required this.onLaterTap,
    super.key,
  });

  final VoidCallback onSetPreferenceTap;
  final VoidCallback onLaterTap;

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
                  DSImage.asset(DSIcons.icHlLogoWithPremiumCrown),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp700),
                  DSText.rich(
                    textSpan: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              sharedLocalizations
                                  .premium_subscriptionConfirmation_successMessageLeading,
                        ),
                        TextSpan(
                          text:
                              sharedLocalizations
                                  .premium_subscriptionConfirmation_successMessageMiddle,
                          style: DSTextStyleType.secondaryHeadingL
                              .getTextStyle()
                              .copyWith(
                                color: context.dsColors.surfaceAdditionalGreen1,
                              ),
                        ),
                        TextSpan(
                          text:
                              sharedLocalizations
                                  .premium_subscriptionConfirmation_successMessageTrailing,
                        ),
                      ],
                    ),
                    textStyle: DSTextStyleType.secondaryHeadingL,
                    textColor: context.dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                  DSText(
                    text:
                        sharedLocalizations
                            .premium_subscriptionConfirmation_premiumFeatureDescription,
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
                  text:
                      sharedLocalizations
                          .premium_subscriptionConfirmation_setPreferences,
                  size: DSButtonSize.small,
                  onPressed: onSetPreferenceTap,
                ),
                DSButtonPrimary.ghost(
                  text:
                      sharedLocalizations
                          .premium_subscriptionConfirmation_iWillDoThatLater,
                  size: DSButtonSize.small,
                  onPressed: onLaterTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
