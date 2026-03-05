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
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';

class SubscriptionEndedScreen extends StatelessWidget {
  const SubscriptionEndedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp800),
                        child: Column(
                          children: [
                            DSText(
                              text:
                              sharedLocalizations
                                  .premium_subscriptionConfirmation_subscriptionEndedTitle,
                              textStyle: DSTextStyleType.secondaryHeadingL,
                              textColor: context.dsColors.textNeutralOnWhite,
                              textAlign: TextAlign.center,
                            ),
                            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp500),
                              child: DSText(
                                text:
                                sharedLocalizations
                                    .premium_subscriptionConfirmation_subscriptionEndedDescription,
                                textStyle: DSTextStyleType.primaryBodyMRegular,
                                textColor: context.dsColors.textNeutralOnWhite,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp400),
                child: Column(
                  spacing: context.dsSpacing.sp200,
                  children: [
                    DSButtonSecondary.fill(
                      text:
                          sharedLocalizations
                              .premium_subscriptionConfirmation_resubscribe,
                      size: DSButtonSize.small,
                      onPressed: () {
                        context.pop(true);
                      },
                    ),
                    DSButtonPrimary.ghost(
                      text:
                          sharedLocalizations
                              .premium_subscriptionConfirmation_continueWithoutPremium,
                      size: DSButtonSize.small,
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
