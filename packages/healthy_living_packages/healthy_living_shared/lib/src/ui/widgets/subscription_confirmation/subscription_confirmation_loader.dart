import 'package:design_system/design_system.dart' show DSText, DSTextStyleType;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubscriptionConfirmationLoader extends StatelessWidget {
  const SubscriptionConfirmationLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.all(context.dsSpacing.sp400),
      child: Container(
        height: context.dsSizes.sz900,
        padding: EdgeInsets.all(context.dsSpacing.sp200),
        decoration: BoxDecoration(
          color: context.dsColors.surfacePrimaryOpacity,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        ),
        child: Row(
          spacing: context.dsSpacing.sp200,
          children: [
            Padding(
              padding: EdgeInsets.all(context.dsSpacing.sp200),
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: context.dsSizes.sz100,
                  strokeCap: StrokeCap.round,
                  color: context.dsColors.strokeNeutralDefault,
                ),
              ),
            ),
            DSText(
              text:
                  sharedLocalizations
                      .premium_subscriptionConfirmation_confirmingYourSubscription,
              textStyle: DSTextStyleType.primaryBodyMRegular,
              textColor: context.dsColors.textOnSurfaceDefault,
            ),
          ],
        ),
      ),
    );
  }
}
