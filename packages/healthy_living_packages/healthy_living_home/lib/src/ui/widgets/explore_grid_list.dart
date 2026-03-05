import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/healthy_living_home.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/analytics/home_analytics.dart';
import 'package:healthy_living_home/src/ui/model/explore_grid_item_type.dart';
import 'package:healthy_living_home/src/ui/model/explore_grid_item_ui_model.dart';
import 'package:healthy_living_home/src/utils/home_screen_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ExploreGridList extends StatelessWidget {
  final String title;
  final List<ExploreGridItemUiModel> items;

  const ExploreGridList({required this.title, required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.textScalerOf(context).scale(1.0);
    final aspectRatio = textScale > 1.0 ? 0.80 : 1.0;
    return Container(
      margin: EdgeInsets.symmetric(vertical: context.dsSpacing.sp400),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HeaderTitleType(text: title),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
          Wrap(
            children: [
              GridView.count(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: context.dsSpacing.sp400,
                mainAxisSpacing: context.dsSpacing.sp400,
                childAspectRatio: aspectRatio,
                children:
                    items.map((exploreListItem) {
                      return ExploreGridListItem(
                        item: exploreListItem,
                        onTap: () {
                          if (!context.mounted) return;
                          onListItemTap(
                            context: context,
                            type: exploreListItem.type,
                          );
                        },
                      );
                    }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> onListItemTap({
    required BuildContext context,
    required ExploreGridItemType type,
  }) async {
    HealthyLivingHomeLocalizations localizations =
        HealthyLivingHomeLocalizations.of(context)!;
    switch (type) {
      case ExploreGridItemType.scan:
        final appBloc = context.read<AppBloc>();
        final analytics = injector.get<HomeAnalytics>();

        /// Logs GA4 Event
        await analytics.logScanStart(source: AnalyticsEvents.homeExploreScan);

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
              await injector.get<HomeAnalytics>().logSearchStart(
                source: AppRoutes.scan.name,
              );
              if (!context.mounted) return;
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
        break;
      case ExploreGridItemType.browse:
        context.go(
          AppRoutes.browse.path,
          extra: {StringConstants.openedFrom: AppRoutes.home.name},
        );
        break;
      case ExploreGridItemType.lists:
        context.go(AppRoutes.myItems.path);
        break;
      case ExploreGridItemType.learn:
        context.pushNamed(
          AppRoutes.ewgGuides.name,
          extra: GuidesScreenParams(
            title: localizations.home_ewgGuides_title,
            items: HomeScreenUtils.getEwgGuidesUiItem(
              localizations,
              context.dsColors,
            ),
          ),
        );
        break;
    }
  }
}
