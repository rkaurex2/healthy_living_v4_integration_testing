import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class DonateToEwgCard extends StatelessWidget {
  const DonateToEwgCard({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingHomeLocalizations localization =
        HealthyLivingHomeLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp500),
      child: IntrinsicHeight(
        child: HomeCarouselListItem(
          overlayColor: Colors.black.withValues(alpha: 0.4),
          title: localization.home_ourMissionIsSimple,
          buttonText: localization.home_donateToEwg,
          subtitle: DSText.rich(
            textSpan: TextSpan(text: localization.home_toPowerYou),
            textStyle: DSTextStyleType.primaryBodySRegular,
            textColor: context.dsColors.textOnSurfaceDefault,
            textAlign: TextAlign.center,
          ),
          backgroundImage: DSIcons.icOurMissionIsSimple,
          onButtonPressed: () {
            context.pushNamed(
              AppRoutes.webView.name,
              queryParameters:
                  WebviewScreenParams(
                    title: localization.home_donateToEwg,
                    url: UrlConstants.donateToEwg,
                  ).toQueryParameters(),
            );
          },
        ),
      ),
    );
  }
}
