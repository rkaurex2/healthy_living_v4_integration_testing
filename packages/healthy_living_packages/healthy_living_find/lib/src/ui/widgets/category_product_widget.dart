import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_event.dart';
import 'package:healthy_living_find/src/ui/models/products_category_tab.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CategoryProductWidget extends StatefulWidget {
  final List<ProductsCategoryTab> categories;
  final ValueChanged<SearchType> onCategoryChanged;
  final VoidCallback? onEnsureBestScoreSort;
  final ValueChanged<bool>? onShouldHideCategoryLabel;
  final String? searchText;
  final String? listNameAddToList;
  final ProductSelectionOptionsItem productSelectionOptionsItem;
  final SearchType? selectedType;
  final bool isProductSelectionEnabled;
  final SearchType? selectedProductTypeSearch;
  final bool? isEWGVerifiedSearch;

  const CategoryProductWidget({
    required this.categories,
    required this.onCategoryChanged,
    this.onEnsureBestScoreSort,
    this.onShouldHideCategoryLabel,
    this.listNameAddToList,
    this.searchText,
    this.isProductSelectionEnabled = false,
    this.productSelectionOptionsItem = ProductSelectionOptionsItem.none,
    this.selectedProductTypeSearch,
    this.isEWGVerifiedSearch,
    super.key,
    this.selectedType,
  });

  @override
  State<CategoryProductWidget> createState() => _CategoryProductWidgetState();
}

class _CategoryProductWidgetState extends State<CategoryProductWidget>
    with TickerProviderStateMixin {
  TabController? _controller;
  List<ProductsCategoryTab> _sorted = const [];
  ProductFiltersModel? productFiltersModel;
  bool _suppressNextTabCallback = false;
  bool _isManualTabChange = false;
  bool isPreFilterSelected = false;

  static const List<String> _priorityCategories = [
    'Personal care',
    'Food',
    'Cleaners',
  ];

  void _onTabChange() {
    if (_controller == null || _controller!.indexIsChanging) return;
    if ((_controller!.animation?.isAnimating ?? false)) return;
    if (widget.selectedProductTypeSearch != null) return;
    if (_suppressNextTabCallback || _isManualTabChange) {
      _suppressNextTabCallback = false;
      _isManualTabChange = false;
      return;
    }
    final searchBloc = context.read<ProductsSearchBloc>();

    final i = _controller!.index;
    if (i >= 0 && i < _sorted.length) {
      final type = _sorted[i].type;

      final currentSelectedCategory = searchBloc.selectedProductCategory;
      if (currentSelectedCategory == type) {
        return;
      }

      if (widget.productSelectionOptionsItem ==
              ProductSelectionOptionsItem.none ||
          widget.listNameAddToList.isValidValue) {
        widget.onCategoryChanged(type);
      }

      widget.onShouldHideCategoryLabel?.call(true);
    }
  }

  void _changeTab(int newIndex) {
    if (widget.selectedProductTypeSearch != null) return;
    if (widget.isEWGVerifiedSearch != null &&
        _sorted[newIndex].type == SearchType.food) {
      return;
    }
    if (widget.productSelectionOptionsItem ==
            ProductSelectionOptionsItem.none ||
        widget.listNameAddToList.isValidValue) {
      if (_controller == null || newIndex == _controller!.index) return;

      _isManualTabChange = true;
      _controller!.index = newIndex;

      final type = _sorted[newIndex].type;
      widget.onCategoryChanged(type);
      widget.onShouldHideCategoryLabel?.call(true);
      _controller!.animateTo(newIndex, duration: Duration(milliseconds: 200));
    }
  }

  int _getCategoryPriority(String categoryName) {
    for (int i = 0; i < _priorityCategories.length; i++) {
      if (categoryName.toLowerCase().contains(
            _priorityCategories[i].toLowerCase(),
          ) ||
          _priorityCategories[i].toLowerCase().contains(
            categoryName.toLowerCase(),
          )) {
        return i;
      }
    }
    return _priorityCategories.length; // Non-priority categories
  }

  void _setupController({SearchType? preferType}) {
    if (widget.categories.isEmpty) {
      _controller?.removeListener(_onTabChange);
      _controller?.dispose();
      _suppressNextTabCallback = true;
      _controller = TabController(
        length: _sorted.length,
        vsync: this,
        initialIndex: _controller!.index,
      )..addListener(_onTabChange);
      _sorted = const [];
      return;
    }

    _sorted = List<ProductsCategoryTab>.from(widget.categories)..sort((a, b) {
      final aPriority = _getCategoryPriority(a.name);
      final bPriority = _getCategoryPriority(b.name);
      if (aPriority != bPriority) {
        return aPriority.compareTo(bPriority);
      }
      final byCount = b.count.compareTo(a.count);
      return byCount != 0 ? byCount : a.name.compareTo(b.name);
    });

    final searchBloc = context.read<ProductsSearchBloc>();
    final currentSelected = preferType ?? searchBloc.selectedProductCategory;

    var initialIndex = 0;
    if (currentSelected != null) {
      if (widget.selectedProductTypeSearch != null) {
        final index = _sorted.indexWhere(
          (searchType) =>
              searchType.type.value == widget.selectedProductTypeSearch!.value,
        );
        if (index >= 0) initialIndex = index;
      } else {
        final index = _sorted.indexWhere(
          (searchType) => searchType.type == currentSelected,
        );
        if (index >= 0) initialIndex = index;
      }
    } else {
      if (_sorted.isNotEmpty) {
        var maxCount = _sorted[0].count;
        var maxIndex = 0;

        for (int i = 1; i < _sorted.length; i++) {
          if (_sorted[i].count > maxCount) {
            maxCount = _sorted[i].count;
            maxIndex = i;
          }
        }
        initialIndex = maxIndex;
      }
    }

    _controller?.removeListener(_onTabChange);
    _controller?.dispose();
    _controller = TabController(
      length: _sorted.length,
      vsync: this,
      initialIndex: initialIndex,
    )..addListener(_onTabChange);
  }

  SearchType? get _selectedTypeFromController {
    if (_controller == null || _sorted.isEmpty) return null;
    final i = _controller!.index;
    if (i < 0 || i >= _sorted.length) return null;
    return _sorted[i].type;
  }

  bool _sameCategories(
    List<ProductsCategoryTab> a,
    List<ProductsCategoryTab> b,
  ) {
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i].type != b[i].type ||
          a[i].count != b[i].count ||
          a[i].name != b[i].name) {
        return false;
      }
    }
    return true;
  }

  @override
  void initState() {
    super.initState();
    final searchBloc = context.read<ProductsSearchBloc>();
    _setupController(preferType: searchBloc.selectedProductCategory);
    widget.onEnsureBestScoreSort?.call();
    if (widget.isEWGVerifiedSearch == true) {
      isPreFilterSelected = true;
    }
  }

  @override
  void didUpdateWidget(covariant CategoryProductWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final categoriesChanged =
        oldWidget.categories.length != widget.categories.length ||
        !_sameCategories(oldWidget.categories, widget.categories);

    final searchBloc = context.read<ProductsSearchBloc>();
    final blocSelectedType = searchBloc.selectedProductCategory;

    if (categoriesChanged) {
      _setupController(preferType: blocSelectedType);
    } else if (blocSelectedType != null &&
        blocSelectedType != _selectedTypeFromController &&
        _controller != null) {
      final idx = _sorted.indexWhere((c) => c.type == blocSelectedType);
      if (idx >= 0 && idx != _controller!.index) {
        _suppressNextTabCallback = true;
        _controller!.index = idx;
      }
    }
  }

  @override
  void dispose() {
    _controller?.removeListener(_onTabChange);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final productSearchBloc = context.read<ProductsSearchBloc>();
    final appBloc = context.read<AppBloc>();
    final productCategory = FilterUtils().getProductCategoryFromSearchType(
      productSearchBloc.selectedProductCategory,
    );
    if (widget.categories.isEmpty || _controller == null) {
      return const SizedBox.shrink();
    }

    return BlocListener<AppBloc, AppState>(
      listenWhen: (_, current) => current is MoveToPaywall,
      listener: (BuildContext context, AppState state) {
        final isCurrent = ModalRoute.of(context)?.isCurrent ?? false;
        if (!isCurrent) return;
        if (state is MoveToPaywall && !appBloc.isPremiumUser) {
          context.read<PremiumPurchasesBloc>().add(
            PremiumPurchasesEvent.paywallPresented(
              paywallSource: PaywallSource.searchFiltersIngredientPreference,
            ),
          );
        }
      },

      child: Row(
        children: [
          // KEY: TestKeys.filterButton
          Stack(
            key: const Key('filter_button'),
            children: [
              PremiumPurchaseListenerWidget(
                paywallSource: PaywallSource.searchFiltersIngredientPreference,
                child: InkWell(
                  onTap:
                      widget.productSelectionOptionsItem ==
                                  ProductSelectionOptionsItem.none &&
                              productSearchBloc.getIsFilterEnabled
                          ? () {
                            openFilterSheet(
                              productCategory: productCategory,
                              productSearchBloc: productSearchBloc,
                              onManagePreferencesTap: () {
                                context
                                    .pushNamed(
                                      AppRoutes
                                          .accountIngredientPreferenceCategory
                                          .name,
                                      extra: IngredientCategoryScreenParam(
                                        categoryType: productCategory.value,
                                      ),
                                    )
                                    .then((value) {
                                      if (value != null &&
                                          value
                                              is IngredientFilterResultParam) {
                                        productSearchBloc.add(
                                          ProductsSearchEvent.productListPreferencesRefreshed(
                                            categoryType: SearchType.fromName(
                                              productCategory.value,
                                            ),
                                            avoidCount: value.avoidCount ?? 0,
                                            preferCount: value.preferCount ?? 0,
                                            searchQuery:
                                                widget.searchText ?? "",
                                            filters: productFiltersModel,
                                            isProductSelectionEnabled:
                                                widget
                                                    .isProductSelectionEnabled,
                                          ),
                                        );
                                      }
                                    });
                              },
                            );
                          }
                          : null,
                  child: DSImage.asset(
                    DSIcons.icFilterChips,
                    height: context.dsSizes.sz600,
                    width: context.dsSizes.sz600,
                    color:
                        widget.productSelectionOptionsItem ==
                                    ProductSelectionOptionsItem.none &&
                                productSearchBloc.getIsFilterEnabled
                            ? null
                            : context.dsColors.iconNeutralDisabled,
                  ),
                ),
              ),
              if (isPreFilterSelected == true ||
                  productSearchBloc.isFilterApplied) ...{
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: context.dsColors.surfacePrimaryHover,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              },
            ],
          ),
          SizedBox(width: context.dsSpacing.sp200),
          Expanded(
            child:
                (_controller == null)
                    ? const SizedBox.shrink()
                    : Container(
                      color: Colors.transparent,
                      child: TabBar(
                        controller: _controller,
                        isScrollable: true,
                        padding: EdgeInsets.symmetric(
                          vertical: context.dsSpacing.sp300,
                        ),
                        tabAlignment: TabAlignment.start,
                        indicatorPadding: EdgeInsets.zero,
                        labelPadding: EdgeInsets.only(
                          right: context.dsSpacing.sp200,
                        ),
                        indicator: const BoxDecoration(),
                        dividerHeight: 0,
                        dividerColor: Colors.transparent,
                        onTap: null,
                        tabs: List<Widget>.generate(_sorted.length, (i) {
                          return GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () => _changeTab(i),
                            child: CategoryFilterChip(
                              controller: _controller!,
                              index: i,
                              categoryName: _sorted[i].name,
                              categoryCount: _sorted[i].count,
                              isDisableCategoryFilterChip:
                                  _isDisableCategoryFilterChip(_sorted[i].type),
                            ),
                          );
                        }),
                      ),
                    ),
          ),
        ],
      ),
    );
  }

  void openFilterSheet({
    required ProductsSearchBloc productSearchBloc,
    required ProductCategory productCategory,
    required VoidCallback onManagePreferencesTap,
  }) {
    final appBloc = context.read<AppBloc>();
    final localization = HealthyLivingSharedLocalizations.of(context)!;

    DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
      context: context,
      child: FiltersScreen(
        productCategory: productCategory,
        filterOpenedFrom: FilterOpenedFrom.search,
        initialSelectedBrandId: productSearchBloc.brandId,
        initialFilters: productSearchBloc.getProductCategoryFilters(),
        categoryAggregations:
            productSearchBloc.getCategoryAggregationsForProductCategory(),
        brandAggregations:
            productSearchBloc.getBrandAggregationsForProductCategory(),
        isEWGVerifiedSearch: widget.isEWGVerifiedSearch,
        onManagePreferencesTap: () {
          context.pop();
          onManagePreferencesTap();
        },
        onTapLearnPremium: () {
          context.pop();
          _setSearchTermInAppBloc(
            context: context,
            searchQuery: widget.searchText ?? "",
          );
          if (appBloc.isAuthenticated) {
            DSModal.show(
              context: context,
              title:
                  localization
                      .productDetail_compareModal_makeMostInformedPurchase,
              caption: localization.productDetail_ingredientModal_description,
              centerImageWidget: DsModalCircleImage(
                primaryImagePath: DSIcons.icCompareModalImage,
                secondaryImagePath: DSIcons.icIngredientPreferences,
              ),
              primaryButtonType: DSModalPrimaryButtonType.dsSecondary,
              primaryButtonText: localization.general_premium_getPremium,
              onPrimaryPressed: () {
                context.pop();
                context.read<PremiumPurchasesBloc>().add(
                  PremiumPurchasesEvent.paywallPresented(
                    paywallSource: PaywallSource.homeGetPremium,
                  ),
                );
              },
              buttonSize: DSButtonSize.small,
            );
          } else {
            DSModal.show(
              context: context,
              title:
                  localization
                      .productDetail_compareModal_makeMostInformedPurchase,
              caption:
                  localization.productDetail_ingredientModal_authDescription,
              centerImageWidget: DsModalCircleImage(
                primaryImagePath: DSIcons.icCompareModalImage,
                secondaryImagePath: DSIcons.icIngredientPreferences,
              ),
              primaryButtonType: DSModalPrimaryButtonType.dsSecondary,
              primaryButtonText: localization.general_signIn,
              secondaryButtonText: localization.general_createAccount,
              onPrimaryPressed: () {
                context.pop();
                _navigateToSignInScreen(context: context);
              },
              onSecondaryPressed: () {
                context.pop();
                _navigateToCreateAccountScreen(context: context);
              },
              buttonSize: DSButtonSize.small,
            );
          }
        },
      ),
    ).then((result) {
      if (result is ProductFiltersModel) {
        if (productSearchBloc.selectedProductCategory != null) {
          isPreFilterSelected = false;
          productFiltersModel = result;
          productSearchBloc.add(
            ProductsSearchEvent.productSearchPagination(
              searchQuery: widget.searchText,
              page: 1,
              category: productSearchBloc.selectedProductCategory!,
              filters: result,
              isEWGVerified: result.hazardLevel == HazardLevel.verified,
              isProductSelectionEnabled: widget.isProductSelectionEnabled,
              shouldJumpToTop: true,
            ),
          );
        }
      } else if (result is AppRoutes) {
        if (context.mounted) {
          context.go(result.path);
        }
      } else if (result is FilterScreenResult) {
        if (result.openPaywall &&
            result.paywallSource != null &&
            context.mounted) {
          context.read<PremiumPurchasesBloc>().add(
            PremiumPurchasesEvent.paywallPresented(
              paywallSource: result.paywallSource!,
            ),
          );
        }
      }
    });
  }

  bool _isDisableCategoryFilterChip(SearchType productCategory) {
    if (widget.selectedProductTypeSearch != null &&
        widget.selectedProductTypeSearch != productCategory) {
      return true;
    } else if (widget.isEWGVerifiedSearch != null &&
        productCategory == SearchType.food) {
      return true;
    } else if (widget.productSelectionOptionsItem !=
            ProductSelectionOptionsItem.none &&
        !widget.listNameAddToList.isValidValue) {
      return true;
    }

    return false;
  }

  void _setSearchTermInAppBloc({
    required BuildContext context,
    required String searchQuery,
  }) {
    final appBloc = context.read<AppBloc>();
    appBloc.add(
      AppEvent.navigationDataAfterAuthenticationSaved(
        navigationDataAfterAuthentication: NavigationDataAfterAuthentication(
          searchTerm: searchQuery,
          searchTabType: SearchTabType.products,
          openPaywallAfterAuth: true,
        ),
      ),
    );
  }

  void _navigateToSignInScreen({required BuildContext context}) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: true).toQueryParameters(),
      extra: {StringConstants.openedFrom: AppRoutes.find.name},
    );
  }

  void _navigateToCreateAccountScreen({required BuildContext context}) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: false).toQueryParameters(),
      extra: {StringConstants.openedFrom: AppRoutes.find.name},
    );
  }
}
