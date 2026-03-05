import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NewsletterInfoWidget extends StatelessWidget {
  const NewsletterInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DSText(
          text: localizations.healthyLivingShared_newsletter_joinEwgEMailList,
          textStyle: DSTextStyleType.primaryHeadingS,
          textColor: context.dsColors.textNeutralOnWhite,
          textAlign: TextAlign.center,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
        DSText(
          text:
              localizations
                  .healthyLivingShared_newsletter_subscribeToOurNewsletter,
          textStyle: DSTextStyleType.primaryBodyMRegular,
          textColor: context.dsColors.textNeutralSecondary,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
