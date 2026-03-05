import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_state.dart'
    show ProductOptionUpdated, TabBarTabsUpdated, UniversalSearchState;
import 'package:healthy_living_find/src/ui/models/product_entry_source.dart';
import 'package:healthy_living_find/src/ui/models/search_tabs.dart';
import 'package:healthy_living_find/src/ui/screens/all_tab_screen.dart';
import 'package:healthy_living_find/src/ui/screens/brand_list/brand_list_screen.dart';
import 'package:healthy_living_find/src/ui/screens/category_list/category_list_screen.dart';
import 'package:healthy_living_find/src/ui/screens/ingredient_list/ingredient_list_screen.dart';
import 'package:healthy_living_find/src/ui/screens/lists/search_my_lists_screen.dart';
import 'package:healthy_living_find/src/ui/widgets/search_products_widget.dart';
import 'package:healthy_living_find/src/utils/find_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchTabsWidget extends StatefulWidget {
  final List<SearchTabData> tabs;
  final String searchText;
  final bool isFromProductDetail;

  const SearchTabsWidget({
    required this.tabs,
    required this.searchText,
    this.isFromProductDetail = false,
    super.key,
  });

  @override
  State<SearchTabsWidget> createState() => _SearchTabsWidgetState();
}

class _SearchTabsWidgetState extends State<SearchTabsWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  void initState() {
    super.initState();
    if (!mounted) return;
    final searchBloc = context.read<UniversalSearchBloc>();
    _tabController = TabController(
      length: widget.tabs.length,
      initialIndex: searchBloc.selectedTabData.index,
      vsync: this,
    );
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return;
      searchBloc.add(
        UniversalSearchEvent.tabPressed(
          tab: searchBloc.allTabs[_tabController.index],
        ),
      );
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchBloc = context.read<UniversalSearchBloc>();

    return BlocListener<UniversalSearchBloc, UniversalSearchState>(
      listener: (context, state) {
        final bloc = context.read<UniversalSearchBloc>();
        if (state is ProductOptionUpdated) {
          bloc.add(
            UniversalSearchEvent.disableTabOnProductSelectionActivate(
              productOptionsItem: bloc.productOptionsItem,
            ),
          );
        }
      },
      listenWhen: (_, current) => current is ProductOptionUpdated,
      child: Column(
        children: [
          if (searchBloc.shouldDisplayTabBar) ...{
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dsSpacing.sp400,
                  ),
                  child: BlocBuilder<UniversalSearchBloc, UniversalSearchState>(
                    buildWhen: (_, current) => current is TabBarTabsUpdated,
                    builder: (context, state) {
                      return AbsorbPointer(
                        absorbing:
                            searchBloc.productOptionsItem !=
                            ProductSelectionOptionsItem.none,
                        child: TabBar(
                          controller: _tabController,
                          isScrollable: true,
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 3,
                              color: context.dsColors.strokePrimaryDefault,
                            ),
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          dividerHeight: 0,
                          dividerColor: Colors.transparent,
                          tabAlignment: TabAlignment.start,
                          labelPadding: EdgeInsets.zero,
                          tabs:
                              widget.tabs
                                  .map(
                                    (tab) => Container(
                                      // KEY: TestKeys.searchAllProductsTab / searchProductsTab / etc.
                                      key: Key('search_${tab.type.name}_tab'),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: context.dsSpacing.sp300,
                                        vertical: context.dsSpacing.sp200,
                                      ),
                                      child: DSText(
                                        text: tab.name,
                                        textStyle:
                                            DSTextStyleType
                                                .primaryButtonSRegular,
                                        textColor:
                                            searchBloc.disabledTabs.contains(
                                                  tab.index,
                                                )
                                                ? context
                                                    .dsColors
                                                    .textNeutralDisabled
                                                : context
                                                    .dsColors
                                                    .textNeutralOnWhite,
                                      ),
                                    ),
                                  )
                                  .toList(),
                          onTap: (index) {
                            if (searchBloc.disabledTabs.contains(index)) {
                              _tabController.animateTo(
                                _tabController.previousIndex,
                              );
                              return;
                            }
                          },
                        ),
                      );
                    },
                  ),
                ),
                DSDivider(),
              ],
            ),
          },
          Expanded(
            child: PageStorage(
              bucket: _bucket,
              child: TabBarView(
                physics:
                    (searchBloc.shouldDisplayTabBar &&
                            searchBloc.productOptionsItem ==
                                ProductSelectionOptionsItem.none)
                        ? null
                        : NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: List.generate(widget.tabs.length, (index) {
                  final selectedIndex = searchBloc.selectedTabData.index;
                  final searchTabType = widget.tabs[index].type;
                  final searchTabIndex = widget.tabs[index].index;
                  if (searchTabType == SearchTabType.all &&
                      index == searchTabIndex &&
                      selectedIndex == searchTabIndex) {
                    return AllTabScreen(
                      key: ValueKey(widget.searchText),
                      searchedText: widget.searchText,
                      allTabData: searchBloc.allTabResults,
                      onAllTabDataUpdated: (allTabData) {
                        searchBloc.add(
                          UniversalSearchEvent.saveAllTabData(
                            allTabData: allTabData,
                          ),
                        );
                      },
                      onViewAllTap: (tabType) {
                        int goToIndex = FindUtils().getSearchTabTypeIndex(
                          tabType,
                        );
                        if (goToIndex == 3) {
                          searchBloc.add(
                            UniversalSearchEvent.setProductsEntrySource(
                              source: ProductsEntrySource.fromAllTabViewAll,
                            ),
                          );
                        } else {
                          searchBloc.add(
                            const UniversalSearchEvent.setProductsEntrySource(
                              source: ProductsEntrySource.normal,
                            ),
                          );
                        }
                        _tabController.animateTo(goToIndex);
                      },
                    );
                  } else if (searchTabType == SearchTabType.brands &&
                      index == searchTabIndex &&
                      selectedIndex == searchTabIndex) {
                    return BrandListScreen(
                      key: WidgetKeyConstants.getBrandsValueKey(
                        searchText: widget.searchText,
                      ),
                      searchedText: widget.searchText,
                      initialBrandList: searchBloc.brandList,
                      pagination: searchBloc.brandsPaginationData,
                      onBrandListUpdate: (brandList, pagination) {
                        searchBloc.add(
                          UniversalSearchEvent.saveBrandListData(
                            brandList: brandList,
                            pagination: pagination,
                          ),
                        );
                      },
                    );
                  } else if (searchTabType == SearchTabType.categories &&
                      index == searchTabIndex &&
                      selectedIndex == searchTabIndex) {
                    final categoryList = searchBloc.categoryList;
                    final categoryPaginationData =
                        searchBloc.categoriesPaginationData;
                    return CategoryListScreen(
                      key: WidgetKeyConstants.getCategoryScreenValueKey(
                        searchText: widget.searchText,
                      ),
                      searchedText: widget.searchText,
                      initialCategoryList: categoryList,
                      pagination: categoryPaginationData,
                      onCategoryListUpdate: (categoryList, pagination) {
                        searchBloc.add(
                          UniversalSearchEvent.saveCategoryListData(
                            categoryList: categoryList,
                            pagination: pagination,
                          ),
                        );
                      },
                    );
                  } else if (searchTabType == SearchTabType.products &&
                      index == searchTabIndex &&
                      selectedIndex == searchTabIndex) {
                    final ProductsEntrySource? fromAllTabViewAll =
                        searchBloc.productsEntrySource;
                    return BlocBuilder<
                      UniversalSearchBloc,
                      UniversalSearchState
                    >(
                      buildWhen:
                          (_, current) => current is ProductOptionUpdated,
                      builder: (context, state) {
                        return SearchProductsWidget(
                          key: ValueKey('products:${widget.searchText}'),
                          fromAllTabViewAll: fromAllTabViewAll,
                          searchText: widget.searchText,
                          brandId: searchBloc.brandId,
                          productOptionsItem: searchBloc.productOptionsItem,
                          listNameAddToList: searchBloc.listNameAddToList,
                          isProductSelectionEnabled: _isProductSelectionEnabled(
                            universalSearchBloc: searchBloc,
                            state: state,
                          ),
                          productsResultListCallback: (result) {
                            searchBloc.add(
                              UniversalSearchEvent.saveProductsResult(
                                productsResult: result,
                              ),
                            );
                          },
                          onRefreshProductSelection: () {
                            searchBloc.add(
                              UniversalSearchEvent.productOptionUpdate(
                                productOptionsItem:
                                    ProductSelectionOptionsItem.none,
                              ),
                            );
                          },
                          savedProductResult:
                              searchBloc.productsResultLocalModel,
                          onLoadProductTabChange: (
                            searchType,
                            productsResultLocalModel,
                          ) {
                            searchBloc.add(
                              UniversalSearchEvent.productTabChange(
                                searchType: searchType,
                                productsResultLocalModel:
                                    productsResultLocalModel,
                              ),
                            );
                          },
                          selectedProductTypeSearch:
                              searchBloc.selectedProductTypeSearch,
                          isEWGVerified: searchBloc.isEWGVerified,
                          defaultCompareProductItem:
                              searchBloc.defaultCompareProductItem,
                          isFromProductDetail: widget.isFromProductDetail,
                        );
                      },
                    );
                  } else if (searchTabType == SearchTabType.ingredients &&
                      index == searchTabIndex &&
                      selectedIndex == searchTabIndex) {
                    final ingredientList = searchBloc.ingredientList;
                    final ingredientPaginationData =
                        searchBloc.ingredientsPaginationData;
                    return IngredientListScreen(
                      key: WidgetKeyConstants.getIngredientsScreenValueKey(
                        searchText: widget.searchText,
                      ),
                      searchedText: widget.searchText,
                      initialIngredientList: ingredientList,
                      pagination: ingredientPaginationData,
                      onIngredientListUpdate: (ingredientList, pagination) {
                        searchBloc.add(
                          UniversalSearchEvent.saveIngredientListData(
                            ingredientList: ingredientList,
                            pagination: pagination,
                          ),
                        );
                      },
                    );
                  } else if (searchTabType == SearchTabType.lists &&
                      index == searchTabIndex &&
                      selectedIndex == searchTabIndex) {
                    return SearchMyListsScreen(
                      key: WidgetKeyConstants.getListsScreenValueKey(
                        searchText: widget.searchText,
                      ),
                      searchedText: widget.searchText,
                      initialMyLists:
                          searchBloc.myListsCachedData?.myLists ?? [],
                      pagination: searchBloc.myListsCachedData?.pagination,
                      onMyListsUpdate: (myListsData) {
                        searchBloc.add(
                          UniversalSearchEvent.saveMyListsData(
                            data: myListsData,
                          ),
                        );
                      },
                    );
                  }
                  return SizedBox.shrink();
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isProductSelectionEnabled({
    required UniversalSearchBloc universalSearchBloc,
    required UniversalSearchState state,
  }) {
    if (universalSearchBloc.defaultActivateListSelection) {
      if (universalSearchBloc.selectedProductCategory == SearchType.food &&
          (universalSearchBloc
                      .productsResultLocalModel
                      ?.foodSearchResultsList ??
                  [])
              .isNotEmpty) {
        return true;
      } else if (universalSearchBloc.selectedProductCategory ==
              SearchType.cleaner &&
          (universalSearchBloc
                      .productsResultLocalModel
                      ?.cleanersSearchResultsList ??
                  [])
              .isNotEmpty) {
        return true;
      } else if (universalSearchBloc.selectedProductCategory ==
              SearchType.personalCare &&
          (universalSearchBloc
                      .productsResultLocalModel
                      ?.personalCareSearchResultsList ??
                  [])
              .isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } else if (state is ProductOptionUpdated &&
        state.productOptionsItem != ProductSelectionOptionsItem.none) {
      return true;
    } else {
      return false;
    }
  }
}
