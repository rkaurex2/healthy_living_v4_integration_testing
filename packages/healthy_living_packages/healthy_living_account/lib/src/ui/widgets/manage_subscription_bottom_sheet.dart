import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ManageSubscriptionBottomSheet extends StatelessWidget {
  const ManageSubscriptionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final accountLocalizations = HealthyLivingAccountLocalizations.of(context)!;

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithTitle(
            leadIcon: DSIcons.icClose,
            onTapLeadIcon: () => context.pop(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              context.dsSpacing.sp400,
              context.dsSpacing.sp0,
              context.dsSpacing.sp400,
              context.dsSpacing.sp200,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IllustrationIcon(iconPath: DSIcons.icCreditCardHandCursor),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                DSText(
                  text:
                      accountLocalizations
                          .account_subscriptionDetails_manageSubscription,
                  textStyle: DSTextStyleType.primaryHeadingS,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                DSText(
                  text:
                      accountLocalizations
                          .account_subscriptionDetails_appStoreSubscriptionDescription,
                  textStyle: DSTextStyleType.primaryBodyMRegular,
                  textColor: context.dsColors.textNeutralSecondary,
                  textAlign: TextAlign.center,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                DSButtonPrimary(
                  onPressed: () => context.pop(),
                  text: accountLocalizations.account_subscriptionDetails_gotIt,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
