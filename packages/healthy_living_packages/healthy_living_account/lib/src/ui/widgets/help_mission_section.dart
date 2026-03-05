import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

import 'package:healthy_living_account/src/ui/widgets/account_content_tiles.dart';

class HelpMissionSection extends StatelessWidget {
  const HelpMissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.dsSizes.sz200),
          child: DSText(
            text: localization.account_myAccount_helpOurMission,
            textStyle: DSTextStyleType.secondaryHeadingS,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
        Container(
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          ),
          child: Column(
            children: [
              AccountContentTiles(
                icon: DSIcons.icDonate,
                title: localization.account_myAccount_donateToEWG,
                onTap: () {
                  context.pushNamed(
                    AppRoutes.webView.name,
                    queryParameters:
                        WebviewScreenParams(
                          title: localization.account_myAccount_donateToEWG,
                          url: UrlConstants.donateToEWG,
                        ).toQueryParameters(),
                  );
                },
              ),
              DSDivider(),
              AccountContentTiles(
                icon: DSIcons.icShare,
                title: localization.account_myAccount_shareTheApp,
                onTap: () {
                  final box = context.findRenderObject() as RenderBox?;
                  HealthyLivingSharedUtils.shareApp(
                    healthyLivingSharedLocalizations:
                        HealthyLivingSharedLocalizations.of(context)!,
                    sharePositionOrigin:
                    box!.localToGlobal(Offset.zero) & box.size,
                  );
                },
              ),
              DSDivider(),
              AccountContentTiles(
                icon: DSIcons.icRate,
                title: localization.account_myAccount_rateTheApp,
                onTap: () {
                  HealthyLivingSharedUtils.rateApp(
                    healthyLivingSharedLocalizations:
                        HealthyLivingSharedLocalizations.of(context)!,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
