import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/src/analytics/home_analytics.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HomeHeader extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final VoidCallback onScannerTap;

  HomeHeader({required this.expandedHeight, required this.onScannerTap});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final healthyLivingSharedLocalization =
        HealthyLivingSharedLocalizations.of(context)!;
    final bool isCollapsed =
        shrinkOffset >
        (MediaQuery.of(context).size.height / context.dsSizes.sz100) * 0.6;

    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (_, current) => current is SubscribeToPremiumSuccess,
      builder: (context, state) {
        final appBloc = context.read<AppBloc>();
        return Container(
          color: context.dsColors.surfacePrimaryDefault,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child:
                    isCollapsed
                        ? Container(
                          margin: EdgeInsets.symmetric(
                            vertical: context.dsSizes.sz300,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DSImage.asset(
                                DSIcons.icHealthyLivingLogoVertical,
                                height: context.dsSizes.sz500,
                              ),
                              if (appBloc.isAuthenticated &&
                                  appBloc.isPremiumUser) ...{
                                DSSpacingWidget.horizontal(
                                  spacing: context.dsSpacing.sp400,
                                ),
                                DSPremiumBadge.orange(),
                              },
                            ],
                          ),
                        )
                        : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DSSpacingWidget.vertical(
                              spacing: context.dsSizes.sz700,
                            ),
                            DSImage.asset(
                              DSIcons.icHealthyLivingLogoHorizontal,
                              height: 70,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSizes.sz500,
                            ),
                            DSSearch(
                              hintText:
                                  healthyLivingSharedLocalization
                                      .shared_textInput_search_hint,
                              leadingIcon: DSIcons.icSearch,
                              trailingIcon: DSIcons.icBrandedScanner,
                              textStyle: DSTextStyleType.primaryBodyMRegular,
                              textColor:
                                  context.dsColors.surfaceNeutralContainerWhite,
                              backgroundColor: context
                                  .dsColors
                                  .surfaceNeutralContainerWhite
                                  .withAlpha(25),
                              margin: EdgeInsets.symmetric(
                                horizontal: context.dsSizes.sz400,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: context.dsSizes.sz300,
                                vertical: context.dsSizes.sz200,
                              ),
                              onTap: () async {
                                /// Logs GA4 Event
                                await injector.get<HomeAnalytics>().logSearchStart(
                                  source: AppRoutes.home.name,
                                );
                                if(!context.mounted) return;
                                context.goNamed(
                                  AppRoutes.find.name,
                                  extra: {
                                    StringConstants.openedFrom:
                                        AppRoutes.home.name,
                                  },
                                );
                              },
                              onScannerTap: onScannerTap,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSizes.sz400,
                            ),
                          ],
                        ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => expandedHeight / 2.5;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
