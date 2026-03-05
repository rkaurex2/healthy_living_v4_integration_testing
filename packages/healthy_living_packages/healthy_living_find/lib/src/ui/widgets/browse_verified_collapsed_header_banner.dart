import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseVerifiedCollapsedHeaderBanner extends StatelessWidget {
  const BrowseVerifiedCollapsedHeaderBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingFindLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(color: context.dsColors.surfacePrimaryDefault),
      padding: EdgeInsets.only(bottom: context.dsSizes.sz300),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 52,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Center(
                    child: DSImage.asset(
                      DSIcons.icEWGVerifiedText,
                      width: 171,
                      color: context.dsColors.surfaceNeutralContainerWhite,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox.square(
                      dimension: context.dsSizes.sz500,
                      child: InkWell(
                        onTap: () => context.pop(),
                        child: Center(
                          child: DSImage.asset(
                            DSIcons.icArrowLeft,
                            height: context.dsSizes.sz500,
                            width: context.dsSizes.sz500,
                            color: context.dsColors.iconOnSurfaceDefault,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),

            DSSearch(
              hintText: localization.find_browse_searchEWGVerifiedProducts,
              leadingIcon: DSIcons.icSearch,
              textStyle: DSTextStyleType.primaryBodyMRegular,
              textColor: context.dsColors.surfaceNeutralContainerWhite,
              backgroundColor: context.dsColors.surfaceNeutralContainerWhite
                  .withAlpha(25),
              margin: EdgeInsets.symmetric(horizontal: context.dsSizes.sz400),
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSizes.sz300,
                vertical: context.dsSizes.sz200,
              ),
              onTap: () async {
                /// Logs GA4 Event
                await injector.get<SearchAnalytics>().logSearchStart(
                  source: AnalyticsEvents.browseProductVerifiedScreen,
                );
                if(!context.mounted) return;
                await context.pushNamed(
                  AppRoutes.find.name,
                  extra: SearchScreenParams(
                    initialSelectedTabType: SearchTabType.products,
                    shouldDisplayTabBar: false,
                    isEWGVerified: true,
                    textInputHintText:
                        localization.find_browse_searchEWGVerifiedProducts,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
