import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living/src/analytics/screen_view_analytics.dart';
import 'package:healthy_living/src/app_router_config.dart';
import 'package:healthy_living/src/ui/wrapper/branch_deep_link_listener.dart';
import 'package:healthy_living/src/ui/wrapper/in_app_message_listener.dart';
import 'package:healthy_living/src/ui/wrapper/notification_message_listener.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_my_items/l10n/healthy_living_my_items_localizations.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScreenViewAnalytics _screenViewAnalytics =
      injector.get<ScreenViewAnalytics>();

  @override
  void dispose() {
    injector.get<NetworkConnection>().dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    getAppRouterConfig();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) =>
                  injector.get<AppBloc>()
                    ..add(AppEvent.checkAuthenticationStatus()),
        ),
        BlocProvider(
          create:
              (_) =>
                  injector.get<BrowseCategoriesBloc>()..add(
                    BrowseCategoriesEvent.browseCategoriesInitialize(
                      isEwgVerified: false,
                    ),
                  ),
        ),
        BlocProvider(create: (_) => injector.get<PremiumPurchasesBloc>()),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) {
          return current is AppAuthenticationStatus;
        },
        builder: (context, state) {
          if (state is AppAuthenticationStatus) {
            injector.get<NetworkConnection>().init();
            appRouter.refresh();
          }
          appRouter.routerDelegate.addListener(() {
            final location = appRouter.routerDelegate.state.uri.toString();
            lastKnownRoute = location;

            /// GA4 Screen View
            _screenViewAnalytics.logScreenView(routesPath: location);

            HealthyLivingSharedUtils.handleStatusBarBrightness(location);
          });
          return MaterialApp.router(
            routerConfig: appRouter,
            title: 'Home',
            theme: dsTheme,
            localizationsDelegates: [
              HealthyLivingSharedUtils.getCountryCodeLocalizationDelegate(),
              HealthyLivingSharedLocalizations.delegate,
              HealthyLivingAuthLocalizations.delegate,
              DesignSystemLocalizations.delegate,
              HealthyLivingHomeLocalizations.delegate,
              HealthyLivingProductDetailLocalizations.delegate,
              HealthyLivingMyItemsLocalizations.delegate,
              HealthyLivingFindLocalizations.delegate,
              HealthyLivingAccountLocalizations.delegate,
              HealthyLivingScanLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              final mediaQuery = MediaQuery.of(context);
              return MediaQuery(
                data: mediaQuery.copyWith(
                  textScaler: MediaQuery.of(
                    context,
                  ).textScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.2),
                ),
                child: NotificationMessageListener(
                  child: BranchDeepLinkListener(
                    child: InAppMessagingListener(child: child!),
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
