import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_input_focus_notifier.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_state.dart';
import 'package:healthy_living_find/src/ui/widgets/search_product_options.dart';
import 'package:healthy_living_find/src/ui/widgets/search_tabs_widget.dart';
import 'package:healthy_living_find/src/ui/widgets/search_top_bar.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show AppBloc, AppEvent, AppPaywallResult, AppRoutes, AuthScreenParams, Debounce, HealthyLivingSharedLocalizations, HealthyLivingSharedUtils, IntegerConstants, NavigationDataAfterAuthentication, NoSearchResultsWidget, PaywallLoadSuccess, PaywallSource, PremiumPurchasesBloc, PremiumPurchasesEvent, PremiumPurchasesState, ProductSelectionOptionsItem, SearchTabType, SearchType, StringConstants, Validate;

class SearchContentScreen extends StatefulWidget {
  const SearchContentScreen({
    super.key,
    this.onBackTap,
    this.onCompareTap,
    this.onTabChanged,
    this.searchHintText,
    this.isFromProductDetail = false,
  });

  final VoidCallback? onBackTap;
  final VoidCallback? onCompareTap;
  final ValueChanged<int>? onTabChanged;
  final String? searchHintText;
  final bool isFromProductDetail;

  @override
  State<SearchContentScreen> createState() => _SearchContentScreenState();
}

class _SearchContentScreenState extends State<SearchContentScreen> {
  late final TextEditingController _controller;
  late final FocusNode _searchTextInputFocusNode;
  late final Debounce _debounce;
  final searchTextInputFocusNotifier = UniversalSearchTextInputFocusNotifier();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _searchTextInputFocusNode = FocusNode();
    _debounce = Debounce(
      milliseconds: IntegerConstants.defaultDebounceDurationInMilliSeconds,
    );
    _searchTextInputFocusNode.addListener(() {
      searchTextInputFocusNotifier.updateFocus(
        _searchTextInputFocusNode.hasFocus,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _searchTextInputFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final findLocalization = HealthyLivingFindLocalizations.of(context)!;
    final searchBloc = context.read<UniversalSearchBloc>();
    final shareLocalization = HealthyLivingSharedLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundWhite,
      body: SafeArea(
        child: BlocConsumer<UniversalSearchBloc, UniversalSearchState>(
          listenWhen:
              (_, current) => [
                SearchTextUpdated,
                CompareUpgradeNowTapSuccess,
              ].contains(current.runtimeType),
          listener: (context, state) {
            if (state is SearchTextUpdated) {
              if (_controller.text.trim() != searchBloc.searchQuery) {
                _controller.text = searchBloc.searchQuery;
              }
            } else if (state is CompareUpgradeNowTapSuccess) {
              context.read<PremiumPurchasesBloc>().add(
                PremiumPurchasesEvent.paywallPresented(
                  paywallSource: PaywallSource.compareBottomSheet,
                ),
              );
            }
          },
          buildWhen: (prev, current) {
            return [
                  SearchScreenInitial,
                  SearchResultsEmpty,
                  SearchTextUpdated,
                  TabChanged,
                  SearchTextEmpty,
                  ProductOptionUpdated,
                  ProductTabChanged,
                ].contains(current.runtimeType) ||
                (prev is SearchResultsEmpty && current is SearchTextEmpty) ||
                (prev is SearchResultsEmpty);
          },
          builder: (context, state) {
            final appBloc = context.read<AppBloc>();

            if (searchBloc.allTabs.isNotEmpty) {
              return Column(
                children: [
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                  BlocListener<PremiumPurchasesBloc, PremiumPurchasesState>(
                    listenWhen: (_, current) {
                      return current is PaywallLoadSuccess &&
                          current.paywallSource ==
                              PaywallSource.compareBottomSheet;
                    },
                    listener: (context, state) {
                      if (state is PaywallLoadSuccess &&
                          (state.paywallResult == AppPaywallResult.purchased ||
                              state.paywallResult ==
                                  AppPaywallResult.restored)) {
                        context
                            .pushNamed(
                              AppRoutes.entitlementVerificationScreen.name,
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
                    child: SearchTopBar(
                      controller: _controller,
                      focusNode: _searchTextInputFocusNode,
                      onBack: widget.onBackTap,
                      onScanner: () {},
                      isMoreOptionDisable: isMoreDisabled(
                        universalSearchBloc: searchBloc,
                        isGuestUserLogin: !appBloc.isAuthenticated,
                      ),
                      onMoreOptionsTap: () {
                        if (!isMoreDisabled(
                          universalSearchBloc: searchBloc,
                          isGuestUserLogin: !appBloc.isAuthenticated,
                        )) {
                          DSBottomSheetWidget.showBottomSheet(
                            context: context,
                            child: SearchProductOptions(
                              universalSearchBloc: searchBloc,
                              isAuthenticated: appBloc.isAuthenticated,
                              isPremiumUser:
                                  appBloc.isAuthenticated &&
                                  appBloc.isPremiumUser,
                              onTapCompare: () {
                                DSModal.show(
                                  context: context,
                                  title:
                                      shareLocalization
                                          .productDetail_compareModal_makeMostInformedPurchase,
                                  caption:
                                      shareLocalization
                                          .productDetail_compareModal_unAuthenticateDescription,
                                  centerImageWidget: DsModalCircleImage(
                                    primaryImagePath:
                                        DSIcons.icCompareModalImage,
                                    secondaryImagePath:
                                        DSIcons.icCompareDisable,
                                  ),
                                  primaryButtonType:
                                      DSModalPrimaryButtonType.dsSecondary,
                                  primaryButtonText:
                                      shareLocalization.general_signIn,
                                  secondaryButtonText:
                                      shareLocalization.general_createAccount,
                                  onPrimaryPressed: () {
                                    context.pop();
                                    _navigateToSignInScreen(context: context);
                                  },
                                  onSecondaryPressed: () {
                                    context.pop();
                                    _navigateToCreateAccountScreen(
                                      context: context,
                                    );
                                  },
                                  buttonSize: DSButtonSize.small,
                                );
                              },
                            ),
                          ).then((result) {
                            if (result is bool && result) {
                              searchBloc.add(
                                UniversalSearchEvent.compareUpgradeNowTapped(),
                              );
                            }
                          });
                        }
                      },
                      onCompare: widget.onCompareTap,
                      onChanged: (searchText) {
                        _debounce.run(() {
                          context.read<UniversalSearchBloc>().add(
                            UniversalSearchEvent.searchQueryUpdated(
                              searchQuery: searchText.trim(),
                            ),
                          );
                        });
                      },
                      onTextClearIconTap: () {
                        context.read<UniversalSearchBloc>().add(
                          UniversalSearchEvent.searchQueryUpdated(
                            searchQuery: '',
                          ),
                        );
                      },
                    ),
                  ),
                  if (state is SearchResultsEmpty) ...{
                    NoSearchResultsWidget(
                      title: findLocalization.find_search_noResultsMatch(
                        searchBloc.searchQuery,
                      ),
                      description:
                          findLocalization.find_search_checkTheSpelling,
                    ),
                  } else if (searchBloc.searchQuery.trim().isEmpty) ...{
                    NoSearchResultsWidget(
                      title:
                          findLocalization
                              .find_noSearch_smarterChoicesStartHere,
                      description:
                          findLocalization
                              .find_noSearch_learnWhatsReallyInYourFood,
                      iconPath: DSIcons.icIllustrationZSSearch,
                      onLinkTap: () {
                        context.goNamed(AppRoutes.browse.name);
                      },
                    ),
                  } else ...{
                    Expanded(
                      child: SearchTabsWidget(
                        key: ValueKey<String>('tabs:${searchBloc.searchQuery}'),
                        tabs: searchBloc.allTabs,
                        searchText: searchBloc.searchQuery,
                        isFromProductDetail: widget.isFromProductDetail,
                      ),
                    ),
                  },
                ],
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }

  bool isMoreDisabled({
    required UniversalSearchBloc universalSearchBloc,
    required bool isGuestUserLogin,
  }) {
    final tab = universalSearchBloc.selectedTabData.type;
    final option = universalSearchBloc.productOptionsItem;
    final String location = GoRouterState.of(context).uri.path;

    if (location.isValidValue && location.startsWith(AppRoutes.myItems.path)) {
      return true;
    } else {
      if (universalSearchBloc.searchQuery.isEmpty) {
        return true;
      }
      if (tab != SearchTabType.products) {
        return true;
      } else {
        if (option == ProductSelectionOptionsItem.addToList) {
          return true;
        } else if (option == ProductSelectionOptionsItem.compareProducts) {
          return true;
        } else {
          if (universalSearchBloc.selectedProductCategory == SearchType.food &&
              (universalSearchBloc
                          .productsResultLocalModel
                          ?.foodSearchResultsList ??
                      [])
                  .isEmpty) {
            return true;
          } else if (universalSearchBloc.selectedProductCategory ==
                  SearchType.cleaner &&
              (universalSearchBloc
                          .productsResultLocalModel
                          ?.cleanersSearchResultsList ??
                      [])
                  .isEmpty) {
            return true;
          } else if (universalSearchBloc.selectedProductCategory ==
                  SearchType.personalCare &&
              (universalSearchBloc
                          .productsResultLocalModel
                          ?.personalCareSearchResultsList ??
                      [])
                  .isEmpty) {
            return true;
          } else {
            return false;
          }
        }
      }
    }
  }

  void _navigateToSignInScreen({required BuildContext context}) {
    final appBloc = context.read<AppBloc>();
    context
        .pushNamed(
          AppRoutes.authScreen.name,
          queryParameters: AuthScreenParams(isLogin: true).toQueryParameters(),
          extra: {StringConstants.openedFrom: AppRoutes.find.name},
        )
        .then((_) {
          appBloc.add(
            AppEvent.navigationDataAfterAuthenticationSaved(
              navigationDataAfterAuthentication:
                  NavigationDataAfterAuthentication(
                    searchTerm: null,
                    searchTabType: null,
                  ),
            ),
          );
        });
  }

  void _navigateToCreateAccountScreen({required BuildContext context}) {
    final appBloc = context.read<AppBloc>();
    context
        .pushNamed(
          AppRoutes.authScreen.name,
          queryParameters: AuthScreenParams(isLogin: false).toQueryParameters(),
          extra: {StringConstants.openedFrom: AppRoutes.find.name},
        )
        .then((_) {
          appBloc.add(
            AppEvent.navigationDataAfterAuthenticationSaved(
              navigationDataAfterAuthentication:
                  NavigationDataAfterAuthentication(
                    searchTerm: null,
                    searchTabType: null,
                  ),
            ),
          );
        });
  }
}
