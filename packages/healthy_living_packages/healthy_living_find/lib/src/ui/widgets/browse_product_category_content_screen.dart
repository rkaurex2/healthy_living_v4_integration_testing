import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_event.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_state.dart';
import 'package:healthy_living_find/src/ui/widgets/product_category_filter_item.dart';
import 'package:healthy_living_find/src/ui/widgets/search_shimmer_list.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductCategoryContentScreen extends StatefulWidget {
  final BrowseProductByCategoryParam param;

  const BrowseProductCategoryContentScreen({required this.param, super.key});

  @override
  State<BrowseProductCategoryContentScreen> createState() =>
      _BrowseProductCategoryContentScreenState();
}

class _BrowseProductCategoryContentScreenState
    extends State<BrowseProductCategoryContentScreen> {
  ProductFiltersModel? productFiltersModel;
  bool isPreFilterSelected = false;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    if (widget.param.categoryName.isValidValue ||
        widget.param.isEWGVerified == true) {
      isPreFilterSelected = true;
    }
    _triggerBrowseSearch(context.read<BrowseBloc>(), page: 1);
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingFindLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();
    final sortOptions = FilterUtils().getSortFilters();
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;

    return BlocListener<AppBloc, AppState>(
      listenWhen:
          (_, current) =>
              current is MoveToPaywall || current is RefreshUserLoginState,
      listener: (BuildContext context, AppState state) {
        final isCurrent = ModalRoute.of(context)?.isCurrent ?? false;
        if (!isCurrent) return;
        if (state is MoveToPaywall && !appBloc.isPremiumUser) {
          context.read<PremiumPurchasesBloc>().add(
            PremiumPurchasesEvent.paywallPresented(
              paywallSource: PaywallSource.browseFiltersIngredientPreference,
            ),
          );
        } else if (state is RefreshUserLoginState) {
          appBloc.add(
            AppEvent.navigationDataAfterAuthenticationSaved(
              navigationDataAfterAuthentication:
                  NavigationDataAfterAuthentication(
                    searchTerm: null,
                    searchTabType: null,
                  ),
              triggerPaywall:
                  appBloc.isAuthenticated && !appBloc.isPremiumUser
                      ? true
                      : false,
            ),
          );
        }
      },
      child: BlocConsumer<BrowseBloc, BrowseState>(
        listenWhen:
            (_, current) =>
                current is BrowseCategoriesFailure ||
                current is BrowseSearchInternetFailure,
        listener: (context, state) {
          if (state is BrowseSearchInternetFailure) {
            final errorMessage = HealthyLivingSharedUtils.getServerErrorMessage(
              localizations: HealthyLivingSharedLocalizations.of(context)!,
              exception: state.exception,
            );
            DSToast.showErrorToast(context: context, title: errorMessage);
          }
          _isLoadingMore = false;
        },
        buildWhen:
            (prev, current) =>
                current is BrowseSearchSuccess ||
                current is BrowseSearchLoading ||
                current is ProductOptionUpdated ||
                current is ProductSelected ||
                current is ProductListClearedList ||
                current is ProductListCloseSelectionUpdated,
        builder: (context, state) {
          final bloc = context.read<BrowseBloc>();
          final List<SearchProductModel> items;
          if (widget.param.type == BrowseProductByCategoryType.food) {
            items = bloc.foodProducts;
          } else if (widget.param.type == BrowseProductByCategoryType.cleaner) {
            items = bloc.cleanersProducts;
          } else if (widget.param.type ==
                  BrowseProductByCategoryType.personalCare ||
              widget.param.type == BrowseProductByCategoryType.sunscreen) {
            items = bloc.personalProducts;
          } else if (state is ProductOptionUpdated ||
              state is ProductSelected ||
              state is ProductListClearedList) {
            if (widget.param.type == BrowseProductByCategoryType.food) {
              items = bloc.foodProducts;
            } else if (widget.param.type ==
                BrowseProductByCategoryType.cleaner) {
              items = bloc.cleanersProducts;
            } else {
              items = bloc.personalProducts;
            }
          } else {
            items = [];
          }
          final page = bloc.getPageNumber(widget.param.type);
          final pageSize = bloc.getPageSize(widget.param.type);
          final hasMore = bloc.hasMoreData(widget.param.type);
          if (page > 1) {
            _isLoadingMore = false;
          }

          return Expanded(
            child: Column(
              children: [
                DSDivider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dsSpacing.sp400,
                    vertical: context.dsSpacing.sp300,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          PremiumPurchaseListenerWidget(
                            paywallSource:
                                PaywallSource.browseFiltersIngredientPreference,
                            child: ProductCategoryFilterItem(
                              // KEY: TestKeys.browseFilterButton
                              key: const Key('browse_filter_button'),
                              filterImage: DSIcons.icFilterChip,
                              isDisable:
                                  state is BrowseSearchLoading ||
                                  bloc.productOptionsItem !=
                                      ProductSelectionOptionsItem.none,
                              onFilterTap: () {
                                openFilterSheet(
                                  bloc: bloc,
                                  onManagePreferencesTap: () {
                                    context
                                        .pushNamed(
                                          AppRoutes
                                              .accountIngredientPreferenceCategory
                                              .name,
                                          extra: IngredientCategoryScreenParam(
                                            categoryType:
                                                widget.param.type.value,
                                          ),
                                        )
                                        .then((value) {
                                          if (value != null &&
                                              value
                                                  is IngredientFilterResultParam) {
                                            productFiltersModel =
                                                productFiltersModel?.copyWith(
                                                  ingredientPreferences:
                                                      IngredientPreferencesFilterModel(
                                                        isPreferred:
                                                            (value.preferCount ??
                                                                0) >
                                                            0,
                                                      ),
                                                );
                                            _triggerBrowseSearch(bloc, page: 1);
                                          }
                                        });
                                  },
                                );
                              },
                            ),
                          ),
                          if (bloc.isFilterAppliedOrPreselected(
                            type: widget.param.type,
                            isPreFilterSelected: isPreFilterSelected,
                            isEWGVerified: widget.param.isEWGVerified ?? false,
                          )) ...{
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
                      Row(
                        children: [
                          //TODO Hide the ingredient preference icon EWGV4-687
                          Visibility(
                            visible: false,
                            child: ProductCategoryFilterItem(
                              filterImage: DSIcons.icFilterIngredient,
                              isDisable: state is BrowseSearchLoading,
                              onFilterTap: () {
                                context
                                    .pushNamed(
                                      AppRoutes
                                          .accountIngredientPreferenceCategory
                                          .name,
                                      extra: IngredientCategoryScreenParam(
                                        categoryType: widget.param.type.value,
                                      ),
                                    )
                                    .then((value) {
                                      if (value != null &&
                                          value
                                              is IngredientFilterResultParam) {
                                        productFiltersModel =
                                            productFiltersModel?.copyWith(
                                              ingredientPreferences:
                                                  IngredientPreferencesFilterModel(
                                                    isPreferred:
                                                        (value.preferCount ??
                                                            0) >
                                                        0,
                                                  ),
                                            );
                                        _triggerBrowseSearch(bloc, page: 1);
                                      }
                                    });
                              },
                            ),
                          ),
                          DSSpacingWidget.horizontal(
                            spacing: context.dsSpacing.sp200,
                          ),
                          ProductCategoryFilterItem(
                            // KEY: TestKeys.sortByDropdown
                            key: const Key('sort_by_dropdown'),
                            filterImage: DSIcons.icSort,
                            isDisable: state is BrowseSearchLoading,
                            onFilterTap: () {
                              DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
                                context: context,
                                fitToChildHeight: true,
                                child: SortByBottomSheetWidget(
                                  title:
                                      sharedLocalizations
                                          .filters_contentScreen_sortByTitle,
                                  options: sortOptions,
                                  selectedIndex:
                                      productFiltersModel?.sortOption.index ??
                                      bloc.updatedSortOption.index,
                                  leadIcon: DSIcons.icClose,
                                  onChanged: (index) {
                                    final selectedOption = sortOptions[index];

                                    final currentFilters =
                                        productFiltersModel ??
                                        bloc.getProductCategoryFilters(
                                          type: widget.param.type,
                                          isEwgVerified:
                                              widget.param.isEWGVerified ??
                                              false,
                                        );
                                    if (currentFilters?.sortOption.type ==
                                            selectedOption.type &&
                                        currentFilters?.sortOption.sortOrder ==
                                            selectedOption.sortOrder) {
                                      return;
                                    }

                                    productFiltersModel = currentFilters
                                        ?.copyWith(sortOption: selectedOption);
                                    _triggerBrowseSearch(bloc, page: 1);
                                  },
                                ),
                              );
                            },
                            horizontalPadding: context.dsSpacing.sp200,
                            verticalPadding: context.dsSpacing.sp100,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (state is BrowseSearchLoading)
                  Expanded(child: SearchShimmerList())
                else
                  Expanded(
                    child: Stack(
                      children: [
                        CustomScrollView(
                          slivers: [
                            SliverFillRemaining(
                              child:
                                  items.isValidList
                                      ? ProductPaginationListview<
                                        SearchProductModel
                                      >(
                                        items: items,
                                        page: page,
                                        pageSize: pageSize,
                                        hasMore: hasMore,
                                        padding: EdgeInsets.only(
                                          left: context.dsSpacing.sp400,
                                          right: context.dsSpacing.sp400,
                                          bottom:
                                              bloc.productOptionsItem !=
                                                      ProductSelectionOptionsItem
                                                          .none
                                                  ? 200
                                                  : 0,
                                        ),
                                        fetchPage: (page, size) async {
                                          if (hasMore &&
                                              !bloc.isPaginatingFor(
                                                widget.param.type,
                                              ) &&
                                              !_isLoadingMore) {
                                            _isLoadingMore = true;
                                            _triggerBrowseSearch(
                                              bloc,
                                              page: page + 1,
                                            );
                                          }
                                        },
                                        separator: DSDivider(),
                                        itemBuilder: (
                                          context,
                                          listData,
                                          index,
                                        ) {
                                          final iconKey = GlobalKey();
                                          final product = items[index];
                                          return ProductRowItem(
                                            iconKey: iconKey,
                                            id: product.id,
                                            imageUrl: product.imageUrl ?? "",
                                            brand: product.brandName ?? "",
                                            title: product.name ?? "",
                                            score: _getScores(
                                              widget.param.type,
                                              product,
                                            ),
                                            isEWGVerified:
                                                product.ewgVerified ?? false,
                                            productSelectionType:
                                                product.productSelectionType,
                                            isSelectionDisabled:
                                                product.isSelectionDisabled,
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
                                                      if (bloc.productOptionsItem !=
                                                          ProductSelectionOptionsItem
                                                              .none) {
                                                        bloc.add(
                                                          BrowseEvent.productSelect(
                                                            productSelectionType:
                                                                listData.productSelectionType ==
                                                                        ProductSelectionType
                                                                            .remove
                                                                    ? ProductSelectionType
                                                                        .add
                                                                    : ProductSelectionType
                                                                        .remove,
                                                            index: index,
                                                            category:
                                                                widget
                                                                    .param
                                                                    .type,
                                                            productSelectionOptionsItem:
                                                                bloc.productOptionsItem,
                                                          ),
                                                        );
                                                      } else {
                                                        navigateToProductDetail(
                                                          product: product,
                                                          productCategory:
                                                              (ProductCategory.fromName(
                                                                    widget
                                                                        .param
                                                                        .type
                                                                        .value,
                                                                  ) ??
                                                                  ProductCategory
                                                                      .food),
                                                          context: context,
                                                        );
                                                      }
                                                    },
                                            ingredientPreference:
                                                HealthyLivingSharedUtils.getProductIngredientPreference(
                                                  ingredientPreferenceIndicator:
                                                      product
                                                          .ingredientPreferenceIndicator,
                                                  isPremiumUser:
                                                      appBloc.isPremiumUser,
                                                ),
                                            onTapSelectionIcon: () {
                                              // handle add/remove
                                            },
                                          );
                                        },
                                      )
                                      : NoSearchResultsWidget(
                                        title:
                                            localization
                                                .find_browse_noProductsFound,
                                        description:
                                            localization
                                                .find_browse_tryChangingOrRemovingFilters,
                                        linkText:
                                            localization
                                                .find_browse_searchYourForProduct,
                                        onLinkTap: () async {
                                          /// Logs GA4 Event
                                          await injector
                                              .get<SearchAnalytics>()
                                              .logSearchStart(
                                                source:
                                                    AnalyticsEvents
                                                        .browseProductCategoryNoResults,
                                              );
                                          if (!context.mounted) return;
                                          await context.pushNamed(
                                            AppRoutes.find.name,
                                          );
                                        },
                                      ),
                            ),
                            SliverToBoxAdapter(
                              child: DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp300,
                              ),
                            ),
                          ],
                        ),
                        if (bloc.productOptionsItem !=
                            ProductSelectionOptionsItem.none) ...{
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              bloc.productOptionsItem ==
                                      ProductSelectionOptionsItem.addToList
                                  // KEY: TestKeys.browseAddToList
                                  ? ProductsAddToListSheetView(
                                    key: const Key('browse_add_to_list'),
                                    onTapAddToList: () {
                                      DSBottomSheetWidget.showBottomSheet(
                                        context: context,
                                        isDismissible: false,
                                        useRootNavigator: false,
                                        isFullScreen: true,
                                        child: AddToListWidget(
                                          userListItemsAttributesModel:
                                              bloc.selectedListProducts
                                                  .map(
                                                    (
                                                      element,
                                                    ) => UserListItemsAttributesModel(
                                                      productType:
                                                          ((bloc.selectedProductCategory?.name ??
                                                                          "")
                                                                      .toLowerCase() ==
                                                                  StringConstants
                                                                      .sunscreen
                                                                      .toLowerCase())
                                                              ? BrowseProductByCategoryType.fromName(
                                                                    StringConstants
                                                                        .personalCare,
                                                                  )?.name ??
                                                                  ""
                                                              : bloc
                                                                      .selectedProductCategory
                                                                      ?.name ??
                                                                  "",
                                                      productId:
                                                          ((bloc.selectedProductCategory?.name ??
                                                                              "")
                                                                          .toLowerCase() ==
                                                                      StringConstants
                                                                          .sunscreen
                                                                          .toLowerCase()) ||
                                                                  bloc.selectedProductCategory ==
                                                                      BrowseProductByCategoryType
                                                                          .personalCare
                                                              ? (element
                                                                      .skinDeepId ??
                                                                  -1)
                                                              : element.id ??
                                                                  -1,
                                                    ),
                                                  )
                                                  .toList(),
                                          isAddToListSuccessCallback: (value) {
                                            if (value == true) {
                                              // widget.onRefreshProductSelection.call();
                                              closeListSelection(
                                                browseBloc: bloc,
                                              );
                                            }
                                          },
                                        ),
                                      );
                                    },
                                    onTapClearSelection: () {
                                      clearSelectedItemsList(browseBloc: bloc);
                                    },
                                    selectItemCount:
                                        bloc.selectedListProducts.length,
                                    onTapClose: () {
                                      // widget.onRefreshProductSelection.call();
                                      closeListSelection(browseBloc: bloc);
                                    },
                                  )
                                  // KEY: TestKeys.browseCompareProducts
                                  : CompareProductSheet(
                                    key: const Key('browse_compare_products'),
                                    onRemoveProduct: (
                                      index,
                                      compareProductItem,
                                    ) {
                                      TooltipOverlay.dismiss();
                                      bloc.add(
                                        BrowseEvent.removeCompareProducts(
                                          compareProductItem:
                                              compareProductItem,
                                          categoryType:
                                              bloc.selectedProductCategory,
                                          productSelectionType:
                                              ProductSelectionType.remove,
                                          productSelectionOptionsItem:
                                              ProductSelectionOptionsItem
                                                  .compareProducts,
                                        ),
                                      );
                                    },
                                    onTapCompareProducts: () async {
                                      List<String> ids =
                                          bloc.selectedListProducts
                                              .map(
                                                (element) =>
                                                    bloc.selectedProductCategory ==
                                                                BrowseProductByCategoryType
                                                                    .sunscreen ||
                                                            bloc.selectedProductCategory ==
                                                                BrowseProductByCategoryType
                                                                    .personalCare
                                                        ? element.skinDeepId
                                                            .toString()
                                                        : element.id.toString(),
                                              )
                                              .toList();

                                      final analytics =
                                          injector
                                              .get<CompareProductAnalytics>();

                                      /// Logs GA4 Compare Start Event
                                      await analytics.logCompareStart(
                                        source: CompareSource.browse,
                                        firstProductID: ids[0],
                                        secondProductID: ids[1],
                                      );

                                      if (!context.mounted) return;

                                      TooltipOverlay.dismiss();
                                      // widget.onRefreshProductSelection.call();
                                      closeListSelection(browseBloc: bloc);
                                      await context.pushNamed(
                                        AppRoutes.productComparisonScreen.name,
                                        extra: ProductComparisonExtraParams(
                                          productIds: ids,

                                          productCategory:
                                              ProductCategory.fromName(
                                                bloc.selectedProductCategory ==
                                                        BrowseProductByCategoryType
                                                            .sunscreen
                                                    ? BrowseProductByCategoryType
                                                        .personalCare
                                                        .value
                                                    : bloc
                                                        .selectedProductCategory
                                                        ?.value,
                                              ) ??
                                              ProductCategory.food,
                                        ),
                                      );
                                    },
                                    compareProductList:
                                        bloc.selectedListProducts
                                            .map(
                                              (element) => CompareProductItem(
                                                id: element.id,
                                                imageUrl:
                                                    element.imageUrl ?? "",
                                                brand: element.brandName ?? "",
                                                title: element.name ?? "",
                                                isEwgVerified:
                                                    element.ewgVerified ??
                                                    false,
                                                score: _getScores(
                                                  widget.param.type,
                                                  element,
                                                ),
                                              ),
                                            )
                                            .toList(),
                                    onTapClose: () {
                                      TooltipOverlay.dismiss();
                                      // widget.onRefreshProductSelection.call();
                                      closeListSelection(browseBloc: bloc);
                                    },
                                  ),
                            ],
                          ),
                        },
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _getScores(
    BrowseProductByCategoryType type,
    SearchProductModel product,
  ) {
    if (type == BrowseProductByCategoryType.personalCare ||
        type == BrowseProductByCategoryType.sunscreen) {
      // Note - sunscreen score is mapped under personalCare key
      return product.personalCareScore.toString();
    } else if (type == BrowseProductByCategoryType.food) {
      return HealthyLivingSharedUtils.formatFoodScore(product.foodScore);
    } else {
      return product.cleanersScore.toString();
    }
  }

  void navigateToProductDetail({
    required SearchProductModel product,
    required ProductCategory productCategory,
    required BuildContext context,
  }) {
    if ((productCategory == ProductCategory.personalCare ||
            productCategory == ProductCategory.sunscreen) &&
        product.skinDeepId.toString().isValidValue) {
      context.pushNamed(
        AppRoutes.findProductDetail.name,
        extra: ProductDetailParamModel(
          productCategory: productCategory,
          productId: product.skinDeepId!,
        ),
      );
    } else {
      if (product.id.toString().isValidValue &&
          (productCategory == ProductCategory.food ||
              productCategory == ProductCategory.cleaner)) {
        context.pushNamed(
          AppRoutes.findProductDetail.name,
          extra: ProductDetailParamModel(
            productCategory: productCategory,
            productId: product.id!,
          ),
        );
      }
    }
  }

  void _triggerBrowseSearch(BrowseBloc bloc, {required int page}) {
    bloc.add(
      BrowseEvent.browseSearchPagination(
        searchQuery: "*",
        page: page,
        category: widget.param.type,
        filters:
            productFiltersModel ??
            bloc.getProductCategoryFilters(
              type: widget.param.type,
              isEwgVerified: widget.param.isEWGVerified ?? false,
            ),
        categoryGroupTitle: widget.param.categoryGroupTitle,
        categoryGroupId: widget.param.categoryGroupId,
        categoryName: widget.param.categoryName,
        isEwgVerified:
            isPreFilterSelected == true
                ? widget.param.isEWGVerified ?? false
                : productFiltersModel?.hazardLevel?.name ==
                    HazardLevel.verified.name,
        categoryId: isPreFilterSelected ? widget.param.categoryId : null,
        subCategoryId: isPreFilterSelected ? widget.param.subCategoryId : null,
        productOptionsItem: bloc.productOptionsItem,
      ),
    );
  }

  void clearSelectedItemsList({required BrowseBloc browseBloc}) {
    browseBloc.add(
      BrowseEvent.productListClearList(
        categoryType: browseBloc.selectedProductCategory,
      ),
    );
  }

  void closeListSelection({required BrowseBloc browseBloc}) {
    browseBloc.add(
      BrowseEvent.productListCloseSelection(
        categoryType:
            ((browseBloc.selectedProductCategory?.name ?? "").toLowerCase() ==
                    StringConstants.sunscreen.toLowerCase())
                ? BrowseProductByCategoryType.personalCare
                : browseBloc.selectedProductCategory,
        productSelectionOptionsItem: ProductSelectionOptionsItem.none,
      ),
    );
  }

  void openFilterSheet({
    required BrowseBloc bloc,
    required VoidCallback onManagePreferencesTap,
  }) {
    final appBloc = context.read<AppBloc>();
    final localization = HealthyLivingSharedLocalizations.of(context)!;

    final isDiapersSubCategory =
        widget.param.categoryName?.toLowerCase() ==
        StringConstants.browseDiaperSubCategoryName;
    DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
      context: context,
      child: FiltersScreen(
        productCategory: ProductCategory.fromName(widget.param.type.value)!,
        filterOpenedFrom: FilterOpenedFrom.browse,
        initialFilters: bloc.getProductCategoryFilters(
          type: widget.param.type,
          isEwgVerified: widget.param.isEWGVerified ?? false,
        ),
        categoryAggregations: bloc.getCategoryAggregationsForProductCategory(),
        brandAggregations: bloc.getBrandAggregationsForProductCategory(),
        initialSelectedCategoryId: widget.param.categoryId,
        initialSelectedSubCategoryId:
            isDiapersSubCategory ? widget.param.subCategoryId : null,
        isEWGVerifiedSearch: widget.param.isEWGVerified,
        onManagePreferencesTap: () {
          context.pop();
          onManagePreferencesTap.call();
        },
        onTapLearnPremium: () {
          context.pop();
          _setBrowseParamInAppBloc(context: context, params: widget.param);
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
              caption: localization.productDetail_ingredientModal_authDescription,
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
        isPreFilterSelected = false;
        if (bloc.selectedProductCategory != null) {
          productFiltersModel = result;
          _triggerBrowseSearch(bloc, page: 1);
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

  void _setBrowseParamInAppBloc({
    required BuildContext context,
    required BrowseProductByCategoryParam params,
  }) {
    final appBloc = context.read<AppBloc>();
    appBloc.add(
      AppEvent.navigationDataAfterAuthenticationSaved(
        navigationDataAfterAuthentication: NavigationDataAfterAuthentication(
          browseProductByCategoryParam: params,
        ),
      ),
    );
  }

  void _navigateToSignInScreen({required BuildContext context}) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: true).toQueryParameters(),
      extra: {StringConstants.openedFrom: AppRoutes.browseCategoryScreen.name},
    );
  }

  void _navigateToCreateAccountScreen({required BuildContext context}) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: false).toQueryParameters(),
      extra: {StringConstants.openedFrom: AppRoutes.browseCategoryScreen.name},
    );
  }
}
