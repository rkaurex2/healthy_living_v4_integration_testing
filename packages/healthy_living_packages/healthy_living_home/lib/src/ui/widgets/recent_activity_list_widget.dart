import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_event.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_state.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_event.dart';
import 'package:healthy_living_home/src/ui/widgets/horizontal_product_list_skeleton.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class RecentActivityListWidget extends StatelessWidget {
  final VoidCallback? onListItemTap;

  const RecentActivityListWidget({this.onListItemTap, super.key});

  @override
  Widget build(BuildContext context) {
    final homeLocalizations = HealthyLivingHomeLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) {
        return current is RefreshBottomTabs;
      },
      builder: (context, state) {
        if (state is RefreshBottomTabs &&
            state.isRefresh &&
            state.bottomBarRefreshPage == BottomBarRefreshPage.homeLists) {
          context.read<AppBloc>().add(
            AppEvent.currentBottomBarIndex(
              isRefresh: false,
              bottomBarRefreshPage: BottomBarRefreshPage.homeLists,
            ),
          );
          context.read<RecentActivityBloc>().add(
            RecentActivityEvent.recentActivityProductsFetched(),
          );
        }
        return BlocBuilder<RecentActivityBloc, RecentActivityState>(
          buildWhen: (previous, current) {
            return [
              RecentActivityLoadInProgress,
              RecentActivityLoadSuccess,
              RecentActivityLoadFailure,
            ].contains(current.runtimeType);
          },
          builder: (context, state) {
            final recentActivityBloc = context.read<RecentActivityBloc>();
            final yourListBloc = context.read<YourListBloc>();

            if (state is RecentActivityLoadInProgress) {
              return HorizontalProductListSkeleton();
            } else if (state is RecentActivityLoadSuccess) {
              if (state.recentActivityProductList.isValidList) {
                return HorizontalProductList(
                  title: homeLocalizations.home_recentActivity,
                  headerType: ListTitleHorizontalHeaderType.withLinkType,
                  items: state.recentActivityProductList,
                  onHeaderIconTap: () {
                    context.pushNamed(
                      AppRoutes.myItems.name,
                      extra: MyItemScreenParam(tabIndex: 1),
                    );
                  },
                  onListItemTap: (index) {
                    onListItemTap?.call();
                    ProductCategory? category = ProductCategory.fromName(
                      state.recentActivityProductList[index].productType,
                    );
                    context
                        .pushNamed(
                          AppRoutes.productDetail.name,
                          extra: ProductDetailParamModel(
                            productCategory: category!,
                            productId:
                                state
                                    .recentActivityProductList[index]
                                    .productId,
                          ),
                        )
                        .then((value) {
                          if (appBloc.isAuthenticated) {
                            recentActivityBloc.add(
                              RecentActivityEvent.recentActivityProductsFetched(),
                            );
                            yourListBloc.add(YourListEvent.yourListFetched());
                          }
                        });
                  },
                );
              } else {
                return SizedBox.shrink();
              }
            } else if (state is RecentActivityLoadFailure) {
              // Todo will show the failure case widget
              return SizedBox.shrink();
            } else {
              return SizedBox.shrink();
            }
          },
        );
      },
    );
  }
}
