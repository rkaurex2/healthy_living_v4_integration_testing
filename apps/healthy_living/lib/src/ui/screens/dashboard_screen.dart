import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living/src/analytics/screen_view_analytics.dart';
import 'package:healthy_living/src/app_router_config.dart';
import 'package:healthy_living/src/ui/widgets/app_bottom_navigation_bar.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AnalyticsEvents,
        AppAlertDialog,
        AppBloc,
        AppEvent,
        AppRoutes,
        AppState,
        AppUnauthenticatedState,
        AuthScreenParams,
        BottomBarRefreshPage,
        ExitFromSubmitProductFlow,
        ProductScanScreenResult,
        SearchScreenParams,
        SearchTabType,
        StringConstants,
        SubscribeToPremiumSuccess,
        Validate,
        injector;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({required this.child, super.key});

  final Widget child;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int get currentIndex {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith(AppRoutes.home.path)) {
      return 0;
    } else if (location.startsWith(AppRoutes.browse.path) ||
        location.startsWith(AppRoutes.nutritionFacts.path)) {
      return 1;
    } else if (location.startsWith(AppRoutes.scan.path)) {
      return 2;
    } else if (location.startsWith(AppRoutes.myItems.path)) {
      return 3;
    } else if (location.startsWith(AppRoutes.account.path)) {
      return 4;
    }
    return 0; // Default to home
  }

  @override
  Widget build(BuildContext context) {
    final homeLocalizations = HealthyLivingHomeLocalizations.of(context)!;
    return Scaffold(
      body: BlocListener<AppBloc, AppState>(
        listenWhen: (previous, current) {
          return previous is! AppUnauthenticatedState &&
                  current is AppUnauthenticatedState ||
              current is ExitFromSubmitProductFlow;
        },
        listener: (listenerContext, state) async {
          if (state is AppUnauthenticatedState) {
            listenerContext.read<AppBloc>().add(AppEvent.refreshUserLogin());
            await AppAlertDialog.show(
              listenerContext,
              title: homeLocalizations.home_sessionExpired_title,
              content: homeLocalizations.home_sessionExpired_message,
              cancelText:
                  homeLocalizations.home_sessionExpired_continueAsAGuest,
              confirmText: homeLocalizations.home_signIn,
              onCancel: () {
                if (listenerContext.mounted) {
                  listenerContext.go(AppRoutes.home.path);
                }
              },
              onConfirm: () {
                if (listenerContext.mounted) {
                  listenerContext.pushNamed(
                    AppRoutes.authScreen.name,
                    queryParameters:
                        AuthScreenParams(isLogin: true).toQueryParameters(),
                    extra: {StringConstants.openedFrom: StringConstants.home},
                  );
                }
              },
            );
          } else if (state is ExitFromSubmitProductFlow) {
            _exitSubmitProduct();

            /// Logs GA4 Event
            await injector.get<ScreenViewAnalytics>().logScanStart(
              source: AnalyticsEvents.dashboardExitSubmitProduct,
            );
            if (!context.mounted) return;
            await context.push(AppRoutes.scan.path);
          }
        },
        child: widget.child,
      ),
      bottomNavigationBar: BlocBuilder<AppBloc, AppState>(
        buildWhen: (_, current) => current is SubscribeToPremiumSuccess,
        builder: (context, state) {
          return AppBottomNavBar(
            currentIndex: currentIndex,
            onTap: (index) => _onTap(context, index),
            isPremiumUser: context.read<AppBloc>().isPremiumUser,
          );
        },
      ),
    );
  }

  Future<void> _onTap(BuildContext context, int index) async {
    switch (index) {
      case 0:
        final String location = GoRouterState.of(context).uri.path;
        if (location.isValidValue && location != AppRoutes.home.path) {
          context.read<AppBloc>().add(
            AppEvent.currentBottomBarIndex(
              isRefresh: true,
              bottomBarRefreshPage: BottomBarRefreshPage.homeLists,
            ),
          );
        }
        context.go(AppRoutes.home.path);

        break;
      case 1:
        context.go(AppRoutes.browse.path);
        break;
      case 2:
        final appBloc = context.read<AppBloc>();
        final analytics = injector.get<ScreenViewAnalytics>();

        /// Logs GA4 Event
        await analytics.logScanStart(source: AppRoutes.scan.name);
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
              await analytics.logSearchStart(source: AppRoutes.scan.name);
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
        break;
      case 3:
        if (currentIndex != 3) {
          context.go(AppRoutes.myItems.path);
        } else {
          final String location = GoRouterState.of(context).uri.path;
          if (location.isValidValue && location != AppRoutes.myItems.path) {
            context.read<AppBloc>().add(
              AppEvent.currentBottomBarIndex(
                isRefresh: true,
                bottomBarRefreshPage: BottomBarRefreshPage.myItemLists,
              ),
            );
            context.go(AppRoutes.myItems.path);
          }
        }
        break;
      case 4:
        context.go(AppRoutes.account.path);
        break;
    }
  }

  void _exitSubmitProduct() {
    while (appRouter.canPop()) {
      appRouter.pop();
    }
  }
}
