import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_account/src/ui/widgets/manage_subscription_bottom_sheet.dart';

class SubscriptionManageLink extends StatelessWidget {
  const SubscriptionManageLink({super.key});

  @override
  Widget build(BuildContext context) {
    final accountLocalizations = HealthyLivingAccountLocalizations.of(context)!;
    return Center(
      child: LinkTextWidget(
        title:
            accountLocalizations
                .account_subscriptionDetails_howToManageSubscription,
        onTap: () => _showManageSubscriptionBottomSheet(context),
      ),
    );
  }

  void _showManageSubscriptionBottomSheet(BuildContext context) {
    DSBottomSheetWidget.showBottomSheet(
      context: context,
      isScrollControlled: true,
      child: const ManageSubscriptionBottomSheet(),
    );
  }
}
