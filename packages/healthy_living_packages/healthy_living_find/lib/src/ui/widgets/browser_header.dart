import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowserHeader extends StatelessWidget implements PreferredSizeWidget {
  const BrowserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalization =
        HealthyLivingSharedLocalizations.of(context)!;

    return Container(
      color: context.dsColors.surfaceNeutralBackgroundLight,
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DSText(
              text:
                  healthyLivingSharedLocalization
                      .healthyLiving_bottomNavBar_find,
              textStyle: DSTextStyleType.primaryHeadingS,
              textColor: context.dsColors.textNeutralOnWhite,
              textAlign: TextAlign.center,
            ),
            DSSpacingWidget.vertical(spacing: 14),
            DSSearch(
              hintText:
                  healthyLivingSharedLocalization.shared_textInput_search_hint,
              leadingIcon: DSIcons.icSearch,
              trailingIcon: DSIcons.icBrandedScanner,
              textStyle: DSTextStyleType.primaryBodyMRegular,
              textColor: context.dsColors.textNeutralSecondary,
              backgroundColor: context.dsColors.surfaceNeutralContainerWhite,
              borderColor: context.dsColors.strokeNeutralDefault,
              leadingIconColor: context.dsColors.iconNeutral,
              trailingIconColor: context.dsColors.iconNeutral,
              margin: EdgeInsets.symmetric(horizontal: context.dsSizes.sz400),
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSizes.sz300,
                vertical: context.dsSizes.sz200,
              ),
              onTap: () async {
                /// Logs GA4 Event
                await injector.get<SearchAnalytics>().logSearchStart(
                  source: AppRoutes.browse.name,
                );
                if(!context.mounted) return;
                await context.pushNamed(
                  AppRoutes.find.name,
                  extra: {StringConstants.openedFrom: AppRoutes.browse.name},
                );
              },
              onScannerTap: () async {
                final appBloc = context.read<AppBloc>();
                final analytics = injector.get<SearchAnalytics>();

                /// Logs GA4 Event
                await analytics.logScanStart(source: AppRoutes.browse.name);

                if (!context.mounted) return;

                await context.push(AppRoutes.scan.path).then((result) async {
                  if (result is ProductScanScreenResult &&
                      result.routeToOpenAfterScanClose == AppRoutes.find) {
                    appBloc.add(
                      AppEvent.currentBottomBarIndex(
                        isRefresh: true,
                        bottomBarRefreshPage: BottomBarRefreshPage.searchScreen,
                      ),
                    );
                    if (context.mounted) {
                      /// Logs GA4 Event
                      await analytics.logSearchStart(
                        source: AppRoutes.scan.name,
                      );
                      if(!context.mounted) return;
                      context.goNamed(
                        AppRoutes.find.name,
                        extra: SearchScreenParams(
                          initialSelectedTabType: SearchTabType.products,
                          shouldDisplayTabBar: false,
                          textInputHintText: result.textInputHintText,
                        ),
                      );
                    }
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(110);
}
