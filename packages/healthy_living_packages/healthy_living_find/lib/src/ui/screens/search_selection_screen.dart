import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_event.dart';
import 'package:healthy_living_find/src/ui/models/search_tabs.dart';
import 'package:healthy_living_find/src/ui/screens/search_content_screen.dart';
import 'package:healthy_living_find/src/utils/find_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchScreen extends StatelessWidget {
  final VoidCallback? onBackTap;
  final SearchTabData? initialSelectedTabData;
  final bool shouldDisplayTabBar;
  final bool productListSelectionActivate;
  final String? textInputHintText;
  final String? listNameAddToList;
  final ProductSelectionOptionsItem? productSelectionOptionsItem;
  final SearchType? searchType;
  final bool? isEWGVerified;
  final CompareProductItem? compareProductItem;
  final String? initialSearchQuery;
  final int? brandId;
  final bool isFromProductDetail;
  const SearchScreen({
    required this.listNameAddToList,
    super.key,
    this.initialSelectedTabData,
    this.shouldDisplayTabBar = true,
    this.productListSelectionActivate = false,
    this.productSelectionOptionsItem,
    this.onBackTap,
    this.textInputHintText,
    this.searchType,
    this.isEWGVerified,
    this.compareProductItem,
    this.initialSearchQuery,
    this.brandId,
    this.isFromProductDetail =false,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingFindLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();

    void handleBack() {
      final state = GoRouterState.of(context);
      final location = state.uri.path;
      final fromQuery = state.uri.queryParameters[StringConstants.openedFrom];
      final fromExtra =
          (state.extra is Map)
              ? (state.extra as Map)[StringConstants.openedFrom] as String?
              : null;
      final from = fromQuery ?? fromExtra;

      if (location.isValidValue &&
          location.startsWith(AppRoutes.myItems.path)) {
        context.pop();
      } else if (from == AppRoutes.home.name) {
        context.go(AppRoutes.home.path);
      } else {
        context.pop();
      }
      onBackTap?.call();
    }

    return BottomTabScreenPopScope(
      onPop: handleBack,
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) {
          return current is RefreshBottomTabs;
        },
        builder: (context, state) {
          if (state is RefreshBottomTabs && state.isRefresh) {
            appBloc.add(
              AppEvent.currentBottomBarIndex(
                isRefresh: false,
                bottomBarRefreshPage: BottomBarRefreshPage.searchScreen,
              ),
            );
          }

          return BlocProvider(
            key:
                state is RefreshBottomTabs &&
                        state.isRefresh &&
                        state.bottomBarRefreshPage ==
                            BottomBarRefreshPage.searchScreen
                    ? ValueKey(
                      'scan_to_search_${injector.get<UuidUtils>().generateV4()}',
                    )
                    : null,
            create: (_) {
              final allTabs = FindUtils().getSearchTabs(
                localizations: localizations,
                isAuthenticated: appBloc.isAuthenticated,
              );
              return injector.get<UniversalSearchBloc>()..add(
                UniversalSearchEvent.searchScreenInitialised(
                  initialSelectedTab: initialSelectedTabData ?? allTabs.first,
                  tabs: allTabs,
                  shouldDisplayTabBar: shouldDisplayTabBar,
                  textInputHintText:
                      textInputHintText ??
                      localizations.find_searchTextInput_hintText,
                  activateListSelection: productListSelectionActivate,
                  listNameAddToList: listNameAddToList,
                  productSelectionOptionsItem:
                      productSelectionOptionsItem ??
                      ProductSelectionOptionsItem.none,
                  searchType: searchType,
                  isEWGVerified: isEWGVerified,
                  compareProductItem: compareProductItem,
                  initialSearchQuery: initialSearchQuery,
                  brandId: brandId,
                ),
              );
            },
            child: SearchContentScreen(onBackTap: handleBack,isFromProductDetail:isFromProductDetail),
          );
        },
      ),
    );
  }
}
