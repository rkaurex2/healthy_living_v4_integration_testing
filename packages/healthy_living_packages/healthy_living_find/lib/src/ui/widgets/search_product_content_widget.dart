import 'dart:async';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_state.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_input_focus_notifier.dart';
import 'package:healthy_living_find/src/ui/models/product_category_config.dart';
import 'package:healthy_living_find/src/ui/models/product_entry_source.dart';
import 'package:healthy_living_find/src/ui/models/products_category_tab.dart';
import 'package:healthy_living_find/src/ui/models/products_result_local_model.dart';
import 'package:healthy_living_find/src/ui/widgets/category_product_widget.dart';
import 'package:healthy_living_find/src/ui/widgets/search_shimmer_list.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchProductContentWidget extends StatefulWidget {
  final bool showCategoryTabs;
  final List<ProductsCategoryTab> categories;
  final String searchText;
  final ProductsResultLocalModel? savedProductResult;
  final ProductsEntrySource? productTabEntrySource;
  final bool showBottomLoader;
  final bool isProductSelectionEnabled;
  final ProductSelectionOptionsItem productOptionsItem;
  final VoidCallback onRefreshProductSelection;
  final String? listNameAddToList;
  final SearchType? selectedProductTypeSearch;
  final bool? isEWGVerified;
  final bool? isFromProductDetail;

  const SearchProductContentWidget({
    required this.showCategoryTabs,
    required this.categories,
    required this.searchText,
    required this.productTabEntrySource,
    required this.showBottomLoader,
    required this.onRefreshProductSelection,
    super.key,
    this.savedProductResult,
    this.isProductSelectionEnabled = false,
    this.listNameAddToList,
    this.productOptionsItem = ProductSelectionOptionsItem.none,
    this.selectedProductTypeSearch,
    this.isEWGVerified,
    this.isFromProductDetail = false,
  });

  @override
  State<SearchProductContentWidget> createState() =>
      _SearchProductContentWidgetState();
}

class _SearchProductContentWidgetState extends State<SearchProductContentWidget>
    with AutomaticKeepAliveClientMixin {
  late ProductsSearchBloc productsBloc;
  final Map<SearchType, VoidCallback> _scrollListeners = {};
  final Map<SearchType, ScrollController> _scrollControllers = {};
  late SearchType searchTypeCategory;
  final searchTextInputFocusNotifier = UniversalSearchTextInputFocusNotifier();

  String get searchQuery => widget.searchText.trim();
  Timer? _debounceTimer;
  static const Duration _debounceDuration = Duration(milliseconds: 1000);

  final Map<SearchType, double> _lastOffsets = {
    SearchType.food: 0.0,
    SearchType.cleaner: 0.0,
    SearchType.personalCare: 0.0,
  };

  void _initializeScrollControllers() {
    _storeCurrentScrollPositions();

    // Clean up existing listeners
    _scrollListeners.forEach((type, listener) {
      _scrollControllers[type]?.removeListener(listener);
    });
    _scrollListeners.clear();
    for (final type in [
      SearchType.food,
      SearchType.cleaner,
      SearchType.personalCare,
    ]) {
      // Reuse existing controller or create new one
      if (!_scrollControllers.containsKey(type)) {
        _scrollControllers[type] = ScrollController();
      }

      void listener() {
        _onScrollToEnd(type);
        final controller = _scrollControllers[type];
        if (controller != null && controller.hasClients) {
          _lastOffsets[type] = controller.offset;
        }
      }

      _scrollListeners[type] = listener;

      // Add the listener to the controller
      _scrollControllers[type]!.addListener(listener);
    }
  }

  void _storeCurrentScrollPositions() {
    if (_scrollControllers.isNotEmpty) {
      _scrollControllers.forEach((type, controller) {
        if (controller.hasClients) {
          _lastOffsets[type] = controller.offset;
        }
      });
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initializeScrollControllers();

    if (mounted && context.mounted) {
      productsBloc = context.read<ProductsSearchBloc>();
    }

    if (widget.productTabEntrySource == ProductsEntrySource.fromAllTabViewAll) {
      final isReturning =
          widget.savedProductResult?.selectedCategoryType != null;
      productsBloc.add(
        ProductsListInitialised(
          initialCategoryList: widget.savedProductResult,
          searchQuery: widget.searchText,
          productsEntrySource: widget.productTabEntrySource,
          isReturningFromDetail: isReturning,
          isProductSelectionEnabled: widget.isProductSelectionEnabled,
          isAuthenticatedUser: context.read<AppBloc>().isAuthenticated,
          searchType: widget.selectedProductTypeSearch,
        ),
      );
    }
  }

  void _onScrollToEnd(SearchType categoryType) {
    final controller = _scrollControllers[categoryType];
    if (controller == null ||
        !_isNearListEnd(controller, context) ||
        !context.mounted) {
      return;
    }

    if (productsBloc.isPaginatingFor(categoryType)) return;

    if (productsBloc.selectedProductCategory != categoryType) return;

    final categoryConfig = _categoryConfigs[categoryType];
    if (categoryConfig == null) return;

    final products = categoryConfig.getProducts(productsBloc);
    final totalCount =
        productsBloc.productTypeCounts?[categoryConfig.countKey] ?? 0;
    final currentPage = categoryConfig.getCurrentPage(productsBloc);

    final nextPage =
        products.isEmpty
            ? 1
            : (products.length < totalCount ? currentPage + 1 : currentPage);

    if (products.isEmpty || products.length < totalCount) {
      productsBloc.add(
        ProductSearchPagination(
          page: nextPage,
          searchQuery: searchQuery,
          category: categoryType,
          isProductSelectionEnabled: widget.isProductSelectionEnabled,
          productSelectionOptionsItem: widget.productOptionsItem,
          filters: productsBloc.getProductCategoryFilters(),
          isEWGVerified: widget.isEWGVerified,
        ),
      );
    }
  }

  bool _isNearListEnd(ScrollController c, BuildContext context) {
    if (!c.hasClients) return false;
    final screenHeight = MediaQuery.sizeOf(context).height;
    return c.position.extentAfter < (screenHeight * 1.5);
  }

  ScrollController get _currentScrollController {
    return _scrollControllers[productsBloc.selectedProductCategory] ??
        _scrollControllers[SearchType.food]!;
  }

  void _tryPrefetchFor(SearchType categoryType) {
    final controller = _scrollControllers[categoryType];
    if (controller == null || !context.mounted) return;

    // Reuse your existing logic (or the “near end” version you added earlier)
    if (!_isNearListEnd(controller, context)) return;
    if (productsBloc.isPaginatingFor(categoryType)) return;
    if (productsBloc.selectedProductCategory != categoryType) return;

    final cfg = _categoryConfigs[categoryType];
    if (cfg == null) return;

    final products = cfg.getProducts(productsBloc);
    final totalCount = productsBloc.productTypeCounts?[cfg.countKey] ?? 0;
    final currentPage = cfg.getCurrentPage(productsBloc);

    final nextPage =
        products.isEmpty
            ? 1
            : (products.length < totalCount ? currentPage + 1 : currentPage);

    if (products.isEmpty || products.length < totalCount) {
      productsBloc.add(
        ProductSearchPagination(
          page: nextPage,
          searchQuery: searchQuery,
          category: categoryType,
          isEWGVerified: widget.isEWGVerified,
        ),
      );
    }
  }

  // Configuration map for categories
  static final Map<SearchType, ProductCategoryConfig> _categoryConfigs = {
    SearchType.food: ProductCategoryConfig(
      countKey: StringConstants.food,
      getProducts: (bloc) => bloc.foodProducts,
      getCurrentPage:
          (bloc) => bloc.foodPaginationModel?.products?.currentPage ?? 0,
    ),
    SearchType.cleaner: ProductCategoryConfig(
      countKey: StringConstants.cleaners,
      getProducts: (bloc) => bloc.cleanersProducts,
      getCurrentPage:
          (bloc) => bloc.cleanersPaginationModel?.products?.currentPage ?? 0,
    ),
    SearchType.personalCare: ProductCategoryConfig(
      countKey: StringConstants.personalCare,
      getProducts: (bloc) => bloc.personalProducts,
      getCurrentPage:
          (bloc) =>
              bloc.personalCarePaginationModel?.products?.currentPage ?? 0,
    ),
  };

  void _restoreScrollPosition(SearchType category) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = _scrollControllers[category];
      final targetOffset = _lastOffsets[category] ?? 0.0;

      if (controller != null && controller.hasClients && targetOffset > 0) {
        final maxOffset = controller.position.maxScrollExtent;
        final safeOffset = targetOffset.clamp(0.0, maxOffset);
        controller.jumpTo(safeOffset);
      }
    });
  }

  @override
  void didUpdateWidget(covariant SearchProductContentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final oldText = oldWidget.searchText.trim();
    final newText = widget.searchText.trim();
    if (oldText != newText) {
      _initializeScrollControllers();
    }
    if (oldText != newText && newText.isNotEmpty) {
      _debouncedSearch(newText);
    } else if (newText.isEmpty) {
      _debounceTimer?.cancel();
    }
  }

  void _debouncedSearch(String searchText) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(_debounceDuration, () {
      if (mounted && searchText.trim() == widget.searchText.trim()) {
        context.read<ProductsSearchBloc>().add(
          SearchTextAdded(
            searchQuery: searchText,
            isAuthenticatedUser: context.read<AppBloc>().isAuthenticated,
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final findLocalization = HealthyLivingFindLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();

    super.build(context);
    final List<SearchProductModel> productList = productsList();

    final blocState = productsBloc.state;

    if (blocState is SearchLoadSuccess && blocState.shouldJumpToTop) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final controller = _currentScrollController;
        if (controller.hasClients) {
          controller.jumpTo(0);
        }
      });
    }

    return Stack(
      children: [
        Column(
          children: [
            if (widget.showCategoryTabs)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                ),
                child: CategoryProductWidget(
                  categories: widget.categories,
                  isProductSelectionEnabled: widget.isProductSelectionEnabled,
                  selectedType: productsBloc.selectedProductCategory,
                  productSelectionOptionsItem: widget.productOptionsItem,
                  listNameAddToList: widget.listNameAddToList,
                  onCategoryChanged: (category) {
                    _storeCurrentScrollPositions();
                    productsBloc.add(
                      ProductsSearchEvent.productCategoryTabChanged(
                        searchType: category,
                        searchQuery: searchQuery,
                        isProductSelectionEnabled:
                            widget.isProductSelectionEnabled,
                        productSelectionOptionsItem: widget.productOptionsItem,
                        isEWGVerifiedSearch: widget.isEWGVerified,
                      ),
                    );
                    TooltipOverlay.dismiss();
                    _restoreScrollPosition(category);
                    isRefreshedSelectionOnce = false;
                    widget.onRefreshProductSelection.call();
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _tryPrefetchFor(category);
                    });
                  },
                  searchText: searchQuery,
                  isEWGVerifiedSearch: widget.isEWGVerified,
                  selectedProductTypeSearch: widget.selectedProductTypeSearch,
                ),
              ),
            Expanded(
              child:
                  !searchQuery.isValidValue
                      ? SizedBox.shrink()
                      : productsBloc.state is ProductsSearchInProgress
                      ? SearchShimmerList()
                      : productList.isEmpty && _checkEmptyList() == true
                      ? NoSearchResultsWidget(
                        key: const Key('no_results_view'),
                        // KEY: TestKeys.noResultsView
                        title: findLocalization.find_search_noResultsMatch(
                          searchQuery,
                        ),
                        description:
                            findLocalization.find_search_checkTheSpelling,
                      )
                      // KEY: TestKeys.searchResultsList
                      : KeyedSubtree(
                        key: const Key('search_results_list'),
                        child: ListView.separated(
                        key: PageStorageKey<String>(
                          'products_${productsBloc.selectedProductCategory?.value}_$searchQuery',
                        ),
                        controller: _currentScrollController,
                        padding: EdgeInsets.only(
                          left: context.dsSpacing.sp400,
                          right: context.dsSpacing.sp400,
                          bottom:
                              (widget.isProductSelectionEnabled &&
                                      widget.productOptionsItem ==
                                          ProductSelectionOptionsItem.addToList)
                                  ? 200
                                  : (widget.isProductSelectionEnabled &&
                                      widget.productOptionsItem ==
                                          ProductSelectionOptionsItem
                                              .compareProducts)
                                  ? 300
                                  : 0,
                        ),
                        itemCount: productList.length,
                        itemBuilder: (context, index) {
                          final iconKey = GlobalKey();
                          final isLastItem = index == productList.length - 1;
                          final canShowShimmer =
                              isLastItem &&
                              widget.showBottomLoader &&
                              !_isListEnd();

                          final product = productList[index];
                          final productType = ProductCategory.fromName(
                            product.subtype,
                          );
                          return KeyedSubtree(
                            key: ValueKey(
                              'prod_${product.id ?? product.mobileImageUrl}',
                            ),

                            child: Column(
                              children: [
                                ProductRowItem(
                                  iconKey: iconKey,
                                  imageUrl: product.mobileImageUrl,
                                  brand: product.brandName ?? '',
                                  title: product.name ?? '',
                                  isEWGVerified: product.ewgVerified == true,
                                  highLightText:
                                      (product.highlights?.name ?? ''),
                                  onTap:
                                      product.isSelectionDisabled
                                          ? () {
                                            TooltipOverlay.show(
                                              context,
                                              targetKey: iconKey,
                                              message:
                                                  HealthyLivingSharedLocalizations.of(
                                                    context,
                                                  )!.healthyLivingShared_product_youCanOnlyAdd,
                                            );
                                          }
                                          : () {
                                            if (widget
                                                .isProductSelectionEnabled) {
                                              ProductSelectionType
                                              productSelectionType =
                                                  product.productSelectionType;
                                              productsBloc.add(
                                                ProductsSearchEvent.productAddToListSelected(
                                                  productSelectionType:
                                                      productSelectionType ==
                                                              ProductSelectionType
                                                                  .add
                                                          ? ProductSelectionType
                                                              .remove
                                                          : ProductSelectionType
                                                              .add,
                                                  index: index,
                                                  categoryType:
                                                      productsBloc
                                                          .selectedProductCategory,
                                                  productSelectionOptionsItem:
                                                      widget.productOptionsItem,
                                                ),
                                              );
                                            } else {
                                              navigateToProductDetail(
                                                productCategory: productType,
                                                product: product,
                                                index: index,
                                              );
                                            }
                                          },
                                  score: _getScores(product),
                                  id: product.id,
                                  productSelectionType:
                                      product.productSelectionType,
                                  ingredientPreference:
                                      HealthyLivingSharedUtils.getProductIngredientPreference(
                                        ingredientPreferenceIndicator:
                                            product
                                                .ingredientPreferenceIndicator,
                                        isPremiumUser: appBloc.isPremiumUser,
                                      ),
                                  isSelectionDisabled:
                                      product.isSelectionDisabled,
                                ),
                                if (canShowShimmer == true) ...{
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: context.dsSpacing.sp400,
                                    ),
                                    child: RoundedRectangleShimmerWidget(
                                      height: 112,
                                      width: double.infinity,
                                      borderRadius: DSRadius.rd200,
                                      baseColor:
                                          context
                                              .dsColors
                                              .surfaceNeutralContainer3,
                                      highlightColor:
                                          context
                                              .dsColors
                                              .surfaceNeutralContainer2,
                                    ),
                                  ),
                                },
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (_, __) => DSDivider(),
                      ),
                      ),
            ),
          ],
        ),
        if (widget.isProductSelectionEnabled &&
            widget.productOptionsItem != ProductSelectionOptionsItem.none) ...{
          ValueListenableBuilder<bool>(
            valueListenable: searchTextInputFocusNotifier,
            builder: (context, hasFocus, child) {
              return hasFocus
                  ? SizedBox.shrink()
                  : Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocBuilder<ProductsSearchBloc, ProductsSearchState>(
                        buildWhen: (previous, current) {
                          return current is ProductSelectionUpdated ||
                              current is ProductListClearedAddToList ||
                              current is RemovedCompareProducts ||
                              current is ProductsSearchInProgress ||
                              current is SearchLoadSuccess;
                        },
                        builder: (context, state) {
                          if (state is ProductsSearchInProgress) {
                            return SizedBox();
                          }
                          final productSearchBloc =
                              context.read<ProductsSearchBloc>();
                          return widget.productOptionsItem ==
                                  ProductSelectionOptionsItem.addToList
                              ? ProductsAddToListSheetView(
                                listNameAddToList: widget.listNameAddToList,
                                onTapAddToList: () {
                                  final String location =
                                      GoRouterState.of(context).uri.path;
                                  if (location.isValidValue &&
                                      location.startsWith(
                                        AppRoutes.myItems.path,
                                      )) {
                                    context.pop(
                                      productSearchBloc.selectedListProducts
                                          .map(
                                            (
                                              element,
                                            ) => UserListItemsAttributesModel(
                                              productType:
                                                  productSearchBloc
                                                      .selectedProductCategory
                                                      ?.name ??
                                                  "",
                                              productId:
                                                  productSearchBloc
                                                              .selectedProductCategory ==
                                                          SearchType
                                                              .personalCare
                                                      ? (element.skinDeepId ??
                                                          -1)
                                                      : element.id ?? -1,
                                            ),
                                          )
                                          .toList(),
                                    );
                                  } else {
                                    DSBottomSheetWidget.showBottomSheet(
                                      context: context,
                                      isDismissible: false,
                                      useRootNavigator: false,
                                      isFullScreen: true,
                                      child: AddToListWidget(
                                        userListItemsAttributesModel:
                                            productSearchBloc
                                                .selectedListProducts
                                                .map(
                                                  (
                                                    element,
                                                  ) => UserListItemsAttributesModel(
                                                    productType:
                                                        productSearchBloc
                                                            .selectedProductCategory
                                                            ?.name ??
                                                        "",
                                                    productId:
                                                        productSearchBloc
                                                                    .selectedProductCategory ==
                                                                SearchType
                                                                    .personalCare
                                                            ? (element
                                                                    .skinDeepId ??
                                                                -1)
                                                            : element.id ?? -1,
                                                  ),
                                                )
                                                .toList(),
                                        isAddToListSuccessCallback: (value) {
                                          if (value == true) {
                                            widget.onRefreshProductSelection
                                                .call();
                                            clearSelectedItemsAddToList();
                                          }
                                        },
                                      ),
                                    );
                                  }
                                },
                                onTapClearSelection: () {
                                  clearSelectedItemsAddToList();
                                },
                                selectItemCount:
                                    productsBloc.selectedListProducts.length,
                                onTapClose: () {
                                  if (widget.listNameAddToList.isValidValue) {
                                    context.pop();
                                  } else {
                                    widget.onRefreshProductSelection.call();
                                    clearSelectedItemsAddToList();
                                  }
                                },
                              )
                              : CompareProductSheet(
                                isScanEnabled:
                                    productSearchBloc
                                        .defaultCompareProductItem !=
                                    null,
                                compareProductCardType:
                                    productSearchBloc
                                                .defaultCompareProductItem !=
                                            null
                                        ? CompareProductCardType.addScanSearch
                                        : CompareProductCardType.addAnother,
                                isSearchEnabled: false,
                                isDisableDefaultItem:
                                    productSearchBloc
                                        .defaultCompareProductItem !=
                                    null,
                                scanOnPressed: () async {
                                  final analytics =
                                      injector.get<SearchAnalytics>();

                                  /// Logs GA4 Event
                                  await analytics.logScanStart(
                                    source:
                                        AnalyticsEvents.searchProductCompare,
                                  );

                                  if (!context.mounted) return;

                                  await context
                                      .push(
                                        AppRoutes.scan.path,
                                        extra: ScanScreenParams(
                                          defaultCompareProductItem:
                                              productSearchBloc
                                                  .defaultCompareProductItem,
                                        ),
                                      )
                                      .then((result) async {
                                        if (result is ProductScanScreenResult &&
                                            result.routeToOpenAfterScanClose ==
                                                AppRoutes.find) {
                                          if (context.mounted) {
                                            /// Logs GA4 Event
                                            await analytics.logSearchStart(
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
                                onRemoveProduct: (index, compareProductItem) {
                                  TooltipOverlay.dismiss();
                                  productsBloc.add(
                                    ProductsSearchEvent.removeCompareProducts(
                                      index: index,
                                      compareProductItem: compareProductItem,
                                      categoryType:
                                          productSearchBloc
                                              .selectedProductCategory,
                                      productSelectionType:
                                          ProductSelectionType.remove,
                                      productSelectionOptionsItem:
                                          ProductSelectionOptionsItem
                                              .compareProducts,
                                    ),
                                  );
                                },
                                onTapCompareProducts: () async {
                                  final List<String> ids =
                                      productsBloc.selectedListProducts
                                          .map(
                                            (element) =>
                                                productSearchBloc
                                                            .selectedProductCategory ==
                                                        SearchType.personalCare
                                                    ? element.skinDeepId
                                                        .toString()
                                                    : element.id.toString(),
                                          )
                                          .toList();
                                  final analytics =
                                      injector.get<CompareProductAnalytics>();

                                  /// Logs GA4 Compare Start Event
                                  await analytics.logCompareStart(
                                    source:
                                        widget.isFromProductDetail == true
                                            ? CompareSource.productDetailSearch
                                            : CompareSource.search,
                                    firstProductID: ids[0],
                                    secondProductID: ids[1],
                                  );

                                  if (!context.mounted) return;
                                  TooltipOverlay.dismiss();
                                  widget.onRefreshProductSelection.call();
                                  clearSelectedItemsAddToList();
                                  await context.pushNamed(
                                    AppRoutes.productComparisonScreen.name,
                                    extra: ProductComparisonExtraParams(
                                      productIds: ids,
                                      productCategory:
                                          ProductCategory.fromName(
                                            productSearchBloc
                                                .selectedProductCategory!
                                                .value,
                                          ) ??
                                          ProductCategory.food,
                                    ),
                                  );
                                },
                                compareProductList:
                                    productsBloc.selectedListProducts
                                        .map(
                                          (element) => CompareProductItem(
                                            id: element.id,
                                            imageUrl: element.imageUrl ?? "",
                                            brand: element.brandName ?? "",
                                            title: element.name ?? "",
                                            isEwgVerified:
                                                element.ewgVerified ?? false,
                                            score: _getScores(element),
                                            skinDeepId: element.skinDeepId ?? 0,
                                          ),
                                        )
                                        .toList(),
                                onTapClose: () {
                                  TooltipOverlay.dismiss();
                                  if (productSearchBloc
                                          .defaultCompareProductItem ==
                                      null) {
                                    widget.onRefreshProductSelection.call();
                                    clearSelectedItemsAddToList();
                                  } else {
                                    context.pop();
                                  }
                                },
                              );
                        },
                      ),
                    ],
                  );
            },
          ),
        },
      ],
    );
  }

  void clearSelectedItemsAddToList() {
    isRefreshedSelectionOnce = false;
    productsBloc.add(
      ProductsSearchEvent.productListClearAddToList(
        categoryType: productsBloc.selectedProductCategory,
      ),
    );
  }

  bool isRefreshedSelectionOnce = false;

  List<SearchProductModel> productsList() {
    SearchType? searchType =
        widget.selectedProductTypeSearch != null
            ? widget.selectedProductTypeSearch!
            : productsBloc.selectedProductCategory;
    final categoryConfig = _categoryConfigs[searchType];
    List<SearchProductModel> tempSearchProductList =
        categoryConfig?.getProducts(productsBloc) ?? [];
    List<SearchProductModel> productListEditMode = [];
    if (tempSearchProductList.isValidList) {
      if (widget.isProductSelectionEnabled && !isRefreshedSelectionOnce) {
        isRefreshedSelectionOnce = true;
        productsBloc.add(
          ProductsSearchEvent.productListSelectionStateChange(
            isProductSelectionEnabled: widget.isProductSelectionEnabled,
            categoryType: productsBloc.selectedProductCategory,
          ),
        );
      }

      if (widget.isProductSelectionEnabled) {
        if (tempSearchProductList.any(
          (element) =>
              element.productSelectionType != ProductSelectionType.none,
        )) {
          productListEditMode = tempSearchProductList;
        } else {
          productListEditMode =
              tempSearchProductList
                  .map(
                    (item) => item.copyWith(
                      productSelectionType: ProductSelectionType.remove,
                    ),
                  )
                  .toList();
        }
      } else {
        if (tempSearchProductList.any(
          (element) =>
              element.productSelectionType != ProductSelectionType.none,
        )) {
          productListEditMode =
              tempSearchProductList
                  .map(
                    (item) => item.copyWith(
                      productSelectionType: ProductSelectionType.none,
                    ),
                  )
                  .toList();
        } else {
          productListEditMode = tempSearchProductList;
        }
      }
    }

    return productListEditMode;
  }

  bool _isListEnd() {
    final categoryConfig =
        _categoryConfigs[productsBloc.selectedProductCategory];
    if (categoryConfig == null) return false;

    final products = categoryConfig.getProducts(productsBloc);
    final totalCount =
        productsBloc.productTypeCounts?[categoryConfig.countKey] ?? 0;

    return products.length == totalCount;
  }

  bool _checkEmptyList() {
    final selectedTap = productsBloc.selectedProductCategory;

    switch (selectedTap) {
      case SearchType.food:
        return productsBloc.foodPaginationModel != null;
      case SearchType.cleaner:
        return productsBloc.cleanersPaginationModel != null;
      case SearchType.personalCare:
        return productsBloc.personalCarePaginationModel != null;
      default:
        return false;
    }
  }

  String? _getScores(SearchProductModel product) {
    final selectedTap = productsBloc.selectedProductCategory;

    switch (selectedTap) {
      case SearchType.food:
        return HealthyLivingSharedUtils.formatFoodScore(product.foodScore);
      case SearchType.cleaner:
        return product.cleanersScore;
      case SearchType.personalCare:
        return product.personalCareScore.toString();
      default:
        return "";
    }
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _scrollListeners.forEach((type, listener) {
      _scrollControllers[type]?.removeListener(listener);
    });
    _scrollListeners.clear();
    _scrollControllers.clear();
    TooltipOverlay.dismiss();

    super.dispose();
  }

  Future<void> navigateToProductDetail({
    required SearchProductModel product,
    required ProductCategory? productCategory,
    int? index,
  }) async {
    if (productCategory == ProductCategory.personalCare &&
        product.skinDeepId.toString().isValidValue) {
      /// Logs GA4 Event
      await injector.get<SearchAnalytics>().logSearchResultClick(
        product: product,
        position: index != null ? index + 1 : null,
      );
      if (!context.mounted) return;
      await context.pushNamed(
        AppRoutes.findProductDetail.name,
        extra: ProductDetailParamModel(
          productCategory: productCategory!,
          productId: product.skinDeepId!,
        ),
      );
    } else {
      if (product.id.toString().isValidValue &&
          (productCategory == ProductCategory.food ||
              productCategory == ProductCategory.cleaner)) {
        /// Logs GA4 Event
        await injector.get<SearchAnalytics>().logSearchResultClick(
          product: product,
          position: index != null ? index + 1 : null,
        );
        if (!context.mounted) return;
        await context.pushNamed(
          AppRoutes.findProductDetail.name,
          extra: ProductDetailParamModel(
            productCategory: productCategory!,
            productId: product.id!,
          ),
        );
      }
    }
  }
}
