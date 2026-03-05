import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/healthy_living_home.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/analytics/home_analytics.dart';
import 'package:healthy_living_home/src/ui/bloc/home_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/home_event.dart';
import 'package:healthy_living_home/src/ui/bloc/home_state.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_event.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_event.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_event.dart';
import 'package:healthy_living_home/src/ui/widgets/create_account_card.dart';
import 'package:healthy_living_home/src/ui/widgets/donate_to_ewg_card.dart';
import 'package:healthy_living_home/src/ui/widgets/explore_grid_list.dart';
import 'package:healthy_living_home/src/ui/widgets/home_header.dart';
import 'package:healthy_living_home/src/ui/widgets/just_verified_list_widget.dart';
import 'package:healthy_living_home/src/ui/widgets/recent_activity_list_widget.dart';
import 'package:healthy_living_home/src/ui/widgets/user_guide_carousel.dart';
import 'package:healthy_living_home/src/ui/widgets/user_logged_greeting_widget.dart';
import 'package:healthy_living_home/src/ui/widgets/yours_list_widget.dart';
import 'package:healthy_living_home/src/utils/home_screen_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FocusNode? createListFocusNode = FocusNode();

  void _keyBoardDismiss() {
    if (createListFocusNode != null && createListFocusNode!.hasFocus) {
      createListFocusNode!.unfocus();
    }
  }

  @override
  void dispose() {
    createListFocusNode?.dispose();
    super.dispose();
  }

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final homeLocalizations = HealthyLivingHomeLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) => injector.get<HomeBloc>()..add(HomeEvent.homeInitialized()),
        ),
        BlocProvider(
          create:
              (_) =>
                  injector.get<JustVerifiedBloc>()
                    ..add(JustVerifiedEvent.justVerifiedProductsFetched()),
        ),
        if (appBloc.isAuthenticated) ...[
          BlocProvider(
            create:
                (_) =>
                    injector.get<RecentActivityBloc>()..add(
                      RecentActivityEvent.recentActivityProductsFetched(),
                    ),
          ),
          BlocProvider(
            create:
                (_) =>
                    injector.get<YourListBloc>()
                      ..add(YourListEvent.yourListFetched()),
          ),
        ],
      ],
      child: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (_, current) {
          return current is HomeStarted;
        },
        listener: (listenerContext, state) {
          if (state is HomeStarted) {
            if (killedStateRemoteMessage != null) {
              messageStreamController.add(killedStateRemoteMessage!);
              killedStateRemoteMessage = null;
            }
          }
          if (state is HomeStarted && appBloc.isAuthenticated) {
            if (state.shouldRefreshPremiumFlag) {
              appBloc.add(AppEvent.subscribedToPremium());
              if (state.isSubscriptionExpired) {
                context.pushNamed(AppRoutes.subscriptionEndedScreen.name).then((
                  result,
                ) {
                  if (result != null &&
                      result is bool &&
                      result == true &&
                      context.mounted) {
                    context.read<PremiumPurchasesBloc>().add(
                      PremiumPurchasesEvent.paywallPresented(
                        paywallSource: PaywallSource.homeGetPremium,
                      ),
                    );
                  }
                });
              }
            }

            final productCategory = appBloc.productCategory;
            final productId = appBloc.productId;
            if (productId != null && productCategory != null) {
              appBloc.add(
                AppEvent.productDetailsSaved(
                  productId: null,
                  productCategory: null,
                  openPaywallAfterAuth:
                      appBloc.openPaywallAfterAuthFromProductDetail,
                ),
              );
              context.pushNamed(
                AppRoutes.productDetail.name,
                extra: ProductDetailParamModel(
                  productCategory: productCategory,
                  productId: productId,
                ),
              );
            }
          }
        },
        buildWhen: (previous, current) {
          return [HomeStarted].contains(current.runtimeType);
        },
        builder: (context, state) {
          final homeBloc = context.read<HomeBloc>();
          return Builder(
            builder: (builderContext) {
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  _keyBoardDismiss();
                },
                child: PrimaryScrollController(
                  controller: _scrollController,
                  child: Scaffold(
                    // KEY: TestKeys.homeScreen
                    key: const Key('home_screen'),
                    backgroundColor:
                        context.dsColors.surfaceNeutralBackgroundLight,
                    body: Scrollbar(
                      thumbVisibility: true,
                      thickness: 4,
                      radius: Radius.circular(8),
                      child: CustomScrollView(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        slivers: [
                          SliverPersistentHeader(
                            pinned: true,
                            delegate: HomeHeader(
                              expandedHeight:
                                  MediaQuery.of(context).size.height /
                                  context.dsSizes.sz100,
                              onScannerTap: () async {
                                final appBloc = context.read<AppBloc>();
                                final analytics = injector.get<HomeAnalytics>();

                                /// Logs GA4 Event
                                await analytics.logScanStart(
                                  source: AnalyticsEvents.homeHeader,
                                );

                                if (!context.mounted) return;

                                await context.push(AppRoutes.scan.path).then((
                                  result,
                                ) async {
                                  if (result is ProductScanScreenResult &&
                                      result.routeToOpenAfterScanClose ==
                                          AppRoutes.find) {
                                    appBloc.add(
                                      AppEvent.currentBottomBarIndex(
                                        isRefresh: true,
                                        bottomBarRefreshPage:
                                            BottomBarRefreshPage.searchScreen,
                                      ),
                                    );
                                    if (context.mounted) {
                                      /// Logs GA4 Event
                                      await injector
                                          .get<HomeAnalytics>()
                                          .logSearchStart(
                                            source: AppRoutes.scan.name,
                                          );
                                      if (!context.mounted) return;
                                      context.goNamed(
                                        AppRoutes.find.name,
                                        extra: SearchScreenParams(
                                          initialSelectedTabType:
                                              SearchTabType.products,
                                          shouldDisplayTabBar: false,
                                          textInputHintText:
                                              result.textInputHintText,
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Column(
                              children: [
                                if (appBloc.isAuthenticated) ...{
                                  UserLoggedGreetingWidget(
                                    userName:
                                        homeBloc.userDataModel?.firstName ?? "",
                                    isUserSubscribed: appBloc.isPremiumUser,
                                  ),
                                },
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp200,
                                ),
                                if (homeBloc.isAuthenticated) ...{
                                  // KEY: TestKeys.homeRecentActivity
                                  RecentActivityListWidget(
                                    key: const Key('home_recent_activity'),
                                    onListItemTap: () {
                                      _keyBoardDismiss();
                                    },
                                  ),
                                },
                                // KEY: TestKeys.homeJustVerified
                                JustVerifiedListWidget(
                                  key: const Key('home_just_verified'),
                                  onListItemTap: () {
                                    _keyBoardDismiss();
                                  },
                                ),
                                if (homeBloc.isAuthenticated) ...{
                                  // KEY: TestKeys.homeUserLists
                                  YoursListWidget(
                                    key: const Key('home_user_lists'),
                                    focusNode: createListFocusNode,
                                  ),
                                },
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: context.dsSpacing.sp400,
                                  ),
                                  child: Column(
                                    spacing: context.dsSpacing.sp200,
                                    children: [
                                      ExploreGridList(
                                        title:
                                            homeLocalizations
                                                .home_explore_exploreTheApp,
                                        items:
                                            HomeScreenUtils.getExploreGridItems(
                                              homeLocalizations:
                                                  homeLocalizations,
                                            ),
                                      ),
                                      if (!homeBloc.isAuthenticated) ...{
                                        DSSpacingWidget.vertical(
                                          spacing: context.dsSpacing.sp400,
                                        ),
                                        // KEY: TestKeys.homeSignInPrompt
                                        CreateAccountCard(
                                          key: const Key('home_sign_in_prompt'),
                                        ),
                                      },
                                      BlocBuilder<AppBloc, AppState>(
                                        buildWhen:
                                            (_, current) =>
                                                current
                                                    is SubscribeToPremiumSuccess,
                                        builder: (context, state) {
                                          if (appBloc.isAuthenticated &&
                                              !appBloc.isPremiumUser) {
                                            return BlocListener<
                                              PremiumPurchasesBloc,
                                              PremiumPurchasesState
                                            >(
                                              listenWhen: (_, current) {
                                                return current
                                                        is PaywallLoadSuccess &&
                                                    current.paywallSource ==
                                                        PaywallSource
                                                            .homeGetPremium;
                                              },
                                              listener: (context, state) {
                                                if (state
                                                        is PaywallLoadSuccess &&
                                                    (state.paywallResult ==
                                                            AppPaywallResult
                                                                .purchased ||
                                                        state.paywallResult ==
                                                            AppPaywallResult
                                                                .restored)) {
                                                  context
                                                      .pushNamed(
                                                        AppRoutes
                                                            .entitlementVerificationScreen
                                                            .name,
                                                      )
                                                      .then((result) {
                                                        if (!context.mounted) {
                                                          return;
                                                        }

                                                        HealthyLivingSharedUtils.entitlementVerificationScreenOnComplete(
                                                          context: context,
                                                          result: result,
                                                        );
                                                      });
                                                }
                                              },
                                              // KEY: TestKeys.homePremiumModal
                                              child: GetPremiumWidget(
                                                key: const Key('home_premium_modal'),
                                                onGetPremiumPressed: () {
                                                  context
                                                      .read<
                                                        PremiumPurchasesBloc
                                                      >()
                                                      .add(
                                                        PremiumPurchasesEvent.paywallPresented(
                                                          paywallSource:
                                                              PaywallSource
                                                                  .homeGetPremium,
                                                        ),
                                                      );
                                                },
                                              ),
                                            );
                                          }
                                          return const SizedBox.shrink();
                                        },
                                      ),
                                      // KEY: TestKeys.homeBrowseByCategory
                                      BrowseProductByCategoryGrid(
                                        key: const Key('home_browse_by_category'),
                                      ),
                                      // KEY: TestKeys.homeUserGuideCarousel
                                      GuidesCarousel(
                                        key: const Key('home_user_guide_carousel'),
                                      ),
                                      // KEY: TestKeys.homeEwgGuides
                                      GuideHorizontalList(
                                        key: const Key('home_ewg_guides'),
                                        items:
                                            HomeScreenUtils.getHomeEwgGuidesUiItem(
                                              homeLocalizations,
                                              context.dsColors,
                                            ),
                                        title:
                                            homeLocalizations
                                                .home_ewgGuides_title,
                                        onPressed: () {
                                          context.pushNamed(
                                            AppRoutes.ewgGuides.name,
                                            extra: GuidesScreenParams(
                                              title:
                                                  homeLocalizations
                                                      .home_ewgGuides_title,
                                              items:
                                                  HomeScreenUtils.getEwgGuidesUiItem(
                                                    homeLocalizations,
                                                    context.dsColors,
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
                                      // KEY: TestKeys.homeDonate
                                      DonateToEwgCard(
                                        key: const Key('home_donate'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
