import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';

class SubscriptionDescriptionSection extends StatelessWidget {
  const SubscriptionDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final accountLocalizations = HealthyLivingAccountLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          text:
              accountLocalizations
                  .account_subscriptionDetails_subscriptionDescription,
          textStyle: DSTextStyleType.primaryBodySRegular,
          textColor: context.dsColors.textPrimaryDefault,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        DSText(
          text:
              accountLocalizations
                  .account_subscriptionDetails_contributionDescription,
          textStyle: DSTextStyleType.primaryBodySRegular,
          textColor: context.dsColors.textPrimaryDefault,
        ),
      ],
    );
  }
}
