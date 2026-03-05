import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/healthy_living_find.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_event.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_state.dart';
import 'package:healthy_living_find/src/ui/models/brand_row_item_ui_model.dart';
import 'package:healthy_living_find/src/ui/models/category_row_item_ui_model.dart';
import 'package:healthy_living_find/src/ui/models/ingredient_row_item_ui_model.dart';
import 'package:healthy_living_find/src/ui/widgets/seach_all_results_section_widget.dart';
import 'package:healthy_living_find/src/ui/widgets/search_shimmer_list.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AllTabContentScreen extends StatelessWidget {
  const AllTabContentScreen({
    required this.onAllTabDataUpdated,
    required this.onViewAllTap,
    super.key,
  });

  final void Function(SearchResponseModel? allTabData)? onAllTabDataUpdated;
  final void Function(SearchTabType) onViewAllTap;

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final findLocalization = HealthyLivingFindLocalizations.of(context)!;
    final allTabBloc = context.read<AllTabBloc>();
    final appBloc = context.read<AppBloc>();

    return BlocConsumer<AllTabBloc, AllTabState>(
      listenWhen: (_, current) {
        return [AllTabLoadFailure, AllTabInitial].contains(current.runtimeType);
      },
      listener: (context, state) {
        if (state is AllTabInitial) {
          if (allTabBloc.searchQuery.isNotEmpty &&
              allTabBloc.allTabData == null) {
            allTabBloc.add(
              AllTabEvent.allTabSearched(
                searchQuery: allTabBloc.searchQuery,
                isAuthenticated: appBloc.isAuthenticated,
              ),
            );
          }
        } else if (state is AllTabLoadFailure) {
          final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
            localizations: healthyLivingSharedLocalizations,
            exception: state.exception,
          );
          DSToast.show(
            context: context,
            title: errorMessage.title,
            leadingIconPath: DSIcons.icWarning,
          );
        }
      },
      buildWhen: (_, current) {
        return [
          AllTabLoadInProgress,
          AllTabLoadSuccess,
          AllTabLoadFailure,
        ].contains(current.runtimeType);
      },
      builder: (context, state) {
        if (state is AllTabLoadInProgress) {
          return SearchShimmerList();
        } else if (state is AllTabLoadSuccess) {
          onAllTabDataUpdated?.call(state.allTabData);

          if (state.isEmptyResults) {
            return NoSearchResultsWidget(
              title: findLocalization.find_search_noResultsMatch(
                allTabBloc.searchQuery,
              ),
              description: findLocalization.find_search_checkTheSpelling,
            );
          } else {
            final searchResults = state.allTabData?.results;
            final searchPaginationModel = state.allTabData?.pagination;
            final List<BrandRowItemUIModel> brandsList =
                searchResults?.brands
                    .map(
                      (brand) => BrandRowItemUIModel(
                        name: brand.name ?? '',
                        imageUrl: brand.logoUrl ?? '',
                        highLightText: brand.highlights?.name ?? '',
                        id: brand.id ?? -1,
                      ),
                    )
                    .toList() ??
                [];
            final List<CategoryRowItemUiModel> categoriesList =
                searchResults?.categories
                    .map(
                      (category) => CategoryRowItemUiModel(
                        name: category.name ?? '',
                        highLightText: category.highlights?.name ?? '',
                        categoryId: category.id ?? -1,
                        subCategoryId: category.id ?? -1,
                        productType: category.productType ?? "",
                      ),
                    )
                    .toList() ??
                [];
            final productList = searchResults?.products ?? [];

            final List<IngredientRowItemUiModel> ingredientList =
                searchResults?.ingredients
                    .map(
                      (ingredient) => IngredientRowItemUiModel(
                        id: ingredient.id.toString(),
                        name: ingredient.name ?? '',
                        highLightText: ingredient.highlights?.name ?? '',
                      ),
                    )
                    .toList() ??
                [];
            final int? brandsTotalEntries =
                searchPaginationModel?.brands?.totalEntries;
            final int? categoriesTotalEntries =
                searchPaginationModel?.categories?.totalEntries;
            final int? productsTotalEntries =
                searchPaginationModel?.products?.totalEntries;
            final int? ingredientsTotalEntries =
                searchPaginationModel?.ingredients?.totalEntries;
            final int? listsTotalEntries =
                searchPaginationModel?.lists?.totalEntries;

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  context.dsSpacing.sp400,
                  0,
                  context.dsSpacing.sp400,
                  context.dsSpacing.sp500,
                ),
                child: Column(
                  children: [
                    SearchAllResultsSectionWidget<SearchProductModel>(
                      title: findLocalization.find_tabs_products,
                      items: productList,
                      itemBuilder: (product, index) {
                        String categoryType = "";
                        String score = "";
                        final productType = ProductCategory.fromName(
                          product.subtype,
                        );
                        if (productType == ProductCategory.personalCare) {
                          categoryType =
                              healthyLivingSharedLocalizations
                                  .general_productCategory_personalCare;
                          score = product.personalCareScore.toString();
                        } else if (productType == ProductCategory.cleaner) {
                          categoryType =
                              healthyLivingSharedLocalizations
                                  .general_productCategory_cleaners;
                          score = product.cleanersScore.toString();
                        } else if (productType == ProductCategory.food) {
                          categoryType =
                              healthyLivingSharedLocalizations
                                  .general_productCategory_food;
                          score = HealthyLivingSharedUtils.formatFoodScore(
                            product.foodScore,
                          );
                        }

                        return ProductRowItem(
                          categoryType: categoryType,
                          imageUrl: product.mobileImageUrl,
                          brand: product.brandName ?? '',
                          title: product.name ?? '',
                          highLightText: product.highlights?.name ?? '',
                          score: score,
                          isEWGVerified: product.ewgVerified == true,
                          onTap:
                              () => navigateToProductDetail(
                                context: context,
                                product: product,
                                productCategory: productType,
                                index: index,
                              ),
                          ingredientPreference:
                              HealthyLivingSharedUtils.getProductIngredientPreference(
                                ingredientPreferenceIndicator:
                                    product.ingredientPreferenceIndicator,
                                isPremiumUser: appBloc.isPremiumUser,
                              ),
                        );
                      },
                      maxVisibleItems: IntegerConstants.maxVisibleProducts,
                      onViewAllTap:
                          productList.length >
                                  IntegerConstants.maxVisibleProducts
                              ? () => onViewAllTap(SearchTabType.products)
                              : null,
                      bottomButtonText:
                          healthyLivingSharedLocalizations
                              .general_view_all_products,
                      onBottomButtonPressed:
                          productList.length >
                                  IntegerConstants.maxVisibleProducts
                              ? () => onViewAllTap(SearchTabType.products)
                              : null,
                      sectionTotalLength: productsTotalEntries,
                      searchQuery: allTabBloc.searchQuery,
                    ),
                    SearchAllResultsSectionWidget<BrandRowItemUIModel>(
                      title: healthyLivingSharedLocalizations.general_brand,
                      items: brandsList,
                      itemBuilder:
                          (brand, _) => SearchResultsRowItem(
                            title: brand.name,
                            highLightText: brand.highLightText,
                            onTap: () async {
                              /// Logs GA4 Event
                              await injector
                                  .get<SearchAnalytics>()
                                  .logSearchStart(
                                source:
                                AnalyticsEvents
                                    .searchAllTabSelectBrandName,
                              );

                              if(!context.mounted) return;

                              await context.pushNamed(
                                AppRoutes.find.name,
                                extra: SearchScreenParams(
                                  initialSelectedTabType:
                                      SearchTabType.products,
                                  shouldDisplayTabBar: false,
                                  initialSearchQuery:
                                      HealthyLivingSharedUtils.removeHtmlTags(
                                        brand.name,
                                      ),
                                  brandId: brand.id,
                                ),
                              );
                            },
                          ),
                      maxVisibleItems: IntegerConstants.maxVisibleBrands,
                      onViewAllTap:
                          brandsList.length > IntegerConstants.maxVisibleBrands
                              ? () => onViewAllTap(SearchTabType.brands)
                              : null,
                      sectionTotalLength: brandsTotalEntries,
                      searchQuery: allTabBloc.searchQuery,
                    ),
                    SearchAllResultsSectionWidget<CategoryRowItemUiModel>(
                      title:
                          healthyLivingSharedLocalizations.general_categories,
                      items: categoriesList,
                      itemBuilder:
                          (category, _) => SearchResultsRowItem(
                            title: category.name,
                            highLightText: category.highLightText,
                            onTap: () {
                              context.pushNamed(
                                AppRoutes.browseCategoryScreen.name,
                                extra: BrowseProductByCategoryParam(
                                  type:
                                      BrowseProductByCategoryType.fromName(
                                        category.productType ==
                                                StringConstants.cleaner
                                            ? StringConstants.cleaners
                                            : category.productType,
                                      )!,
                                  categoryGroupTitle:
                                      HealthyLivingSharedUtils.removeHtmlTags(
                                        category.name,
                                      ).toSmartTitleCase(),
                                  categoryName:
                                      HealthyLivingSharedUtils.removeHtmlTags(
                                        category.name,
                                      ).toSmartTitleCase(),
                                  subCategoryId:
                                      category.productType !=
                                              StringConstants.cleaner
                                          ? category.categoryId
                                          : null,
                                  categoryId:
                                      category.productType ==
                                              StringConstants.cleaner
                                          ? category.subCategoryId
                                          : null,
                                ),
                              );
                            },
                          ),
                      maxVisibleItems: IntegerConstants.maxVisibleCategories,
                      onViewAllTap:
                          categoriesList.length >
                                  IntegerConstants.maxVisibleCategories
                              ? () => onViewAllTap(SearchTabType.categories)
                              : null,
                      sectionTotalLength: categoriesTotalEntries,
                      searchQuery: allTabBloc.searchQuery,
                    ),
                    SearchAllResultsSectionWidget<IngredientRowItemUiModel>(
                      title: findLocalization.find_tabs_ingredients,
                      items: ingredientList,
                      itemBuilder:
                          (ingredient, _) => SearchResultsRowItem(
                            title: ingredient.name,
                            highLightText: ingredient.highLightText,
                            onTap: () {
                              context.pushNamed(
                                AppRoutes.searchIngredientDetails.name,
                                queryParameters:
                                    IngredientDetailScreenParams(
                                      ingredientId: ingredient.id,
                                    ).toQueryParameters(),
                              );
                            },
                          ),
                      maxVisibleItems: IntegerConstants.maxVisibleIngredients,
                      onViewAllTap:
                          ingredientList.length >
                                  IntegerConstants.maxVisibleIngredients
                              ? () => onViewAllTap(SearchTabType.ingredients)
                              : null,
                      sectionTotalLength: ingredientsTotalEntries,
                      searchQuery: allTabBloc.searchQuery,
                    ),
                    if (appBloc.isAuthenticated) ...{
                      SearchAllResultsSectionWidget<SearchListsModel>(
                        title: findLocalization.find_tabs_lists,
                        items: searchResults?.lists ?? [],
                        itemBuilder:
                            (list, _) => SearchResultsRowItem(
                              title: list.name,
                              highLightText: list.highlights?.name ?? '',
                              onTap:
                                  () => onListItemTap(
                                    context: context,
                                    listId: list.id.toString(),
                                  ),
                            ),
                        maxVisibleItems: IntegerConstants.maxVisibleLists,
                        onViewAllTap:
                            (searchResults?.lists.length ?? 0) >
                                    IntegerConstants.maxVisibleLists
                                ? () => onViewAllTap(SearchTabType.lists)
                                : null,
                        sectionTotalLength: listsTotalEntries,
                        searchQuery: allTabBloc.searchQuery,
                      ),
                    },
                  ],
                ),
              ),
            );
          }
        }
        return SizedBox.shrink();
      },
    );
  }

  Future<void> navigateToProductDetail({
    required BuildContext context,
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

      if(!context.mounted) return;

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

        if(!context.mounted) return;

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

  void onListItemTap({required BuildContext context, required String listId}) {
    context.pushNamed(
      AppRoutes.myItemMyListDetail.name,
      extra: UserListScreenParams(listId: listId),
    );
  }
}
