import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_state.dart';
import 'package:healthy_living_find/src/ui/models/product_entry_source.dart';
import 'package:healthy_living_find/src/ui/models/products_category_tab.dart';
import 'package:healthy_living_find/src/ui/models/products_result_local_model.dart';
import 'package:healthy_living_find/src/ui/widgets/search_product_content_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchProductsWidget extends StatelessWidget {
  final String searchText;
  final Function(ProductsResultLocalModel?) productsResultListCallback;
  final ProductsResultLocalModel? savedProductResult;
  final ProductsEntrySource? fromAllTabViewAll;
  final bool isProductSelectionEnabled;
  final VoidCallback onRefreshProductSelection;
  final ProductSelectionOptionsItem productOptionsItem;
  final Function(SearchType?, ProductsResultLocalModel?) onLoadProductTabChange;
  final String? listNameAddToList;
  final SearchType? selectedProductTypeSearch;
  final bool? isEWGVerified;
  final int? brandId;
  final CompareProductItem? defaultCompareProductItem;
  final bool isFromProductDetail;

  const SearchProductsWidget({
    required this.searchText,
    required this.productsResultListCallback,
    required this.fromAllTabViewAll,
    required this.onRefreshProductSelection,
    required this.onLoadProductTabChange,
    this.isProductSelectionEnabled = false,
    this.savedProductResult,
    this.listNameAddToList,
    this.defaultCompareProductItem,
    this.brandId,
    this.productOptionsItem = ProductSelectionOptionsItem.none,
    this.selectedProductTypeSearch,
    this.isEWGVerified,
    this.isFromProductDetail = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final findLocalization = HealthyLivingFindLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();

    return BlocProvider<ProductsSearchBloc>(
      create:
          (_) =>
              injector.get<ProductsSearchBloc>()..add(
                ProductsListInitialised(
                  initialCategoryList: savedProductResult,
                  searchQuery: searchText,
                  productsEntrySource: fromAllTabViewAll,
                  isProductSelectionEnabled: isProductSelectionEnabled,
                  isAuthenticatedUser: appBloc.isAuthenticated,
                  searchType: selectedProductTypeSearch,
                  isEWGVerified: isEWGVerified,
                  defaultCompareProductItem: defaultCompareProductItem,
                  brandId: brandId,
                ),
              ),
      child: BlocConsumer<ProductsSearchBloc, ProductsSearchState>(
        listenWhen:
            (_, current) =>
                current is InternetFailure ||
                current is SearchLoadSuccess ||
                current is SearchLoadFailure,
        listener: (context, state) {
          final bloc = context.read<ProductsSearchBloc>();
          if (state is InternetFailure) {
            DSToast.show(
              context: context,
              title: healthyLivingSharedLocalizations.general_networkErrorTitle,
              leadingIconPath: DSIcons.icWarning,
            );
          } else if (state is SearchLoadFailure) {
            DSToast.show(
              context: context,
              title:
                  healthyLivingSharedLocalizations
                      .general_errorMessage_somethingWentWrong,
              leadingIconPath: DSIcons.icWarning,
            );
          } else if (state is SearchLoadSuccess) {
            onLoadProductTabChange.call(
              bloc.selectedProductCategory,
              state.results,
            );
          }
        },
        buildWhen:
            (_, current) =>
                current is ProductsSearchInProgress ||
                current is SearchLoadSuccess ||
                current is SearchTextEmpty ||
                current is InternetFailure ||
                current is ProductsListInitialised ||
                current is ProductSelectionUpdated ||
                current is ProductListClearedAddToList ||
                current is ProductListSelectionStateChanged ||
                current is ProductsSearchResultsEmpty ||
                current is ProductsPaginationInProgress ||
                current is RemovedCompareProducts,
        builder: (context, state) {
          final bloc = context.read<ProductsSearchBloc>();
          final activeTab = bloc.selectedProductCategory;
          final isPaginatingActiveTab =
              activeTab != null && bloc.isPaginatingFor(activeTab);

          List<ProductsCategoryTab> toCategoryTabs(Map<String, int>? counts) {
            if (counts == null || counts.isEmpty) return const [];
            return counts.entries
                .map((e) {
                  final searchType =
                      SearchType.fromName(e.key) ??
                      (e.key == StringConstants.cleaners
                          ? SearchType.cleaner
                          : null);
                  if (searchType == null) return null;
                  return ProductsCategoryTab(
                    name: e.key.replaceAll('_', ' ').toSmartTitleCase(),
                    type: searchType,
                    count: e.value,
                  );
                })
                .whereType<ProductsCategoryTab>()
                .toList();
          }

          final categories = toCategoryTabs(
            context.read<ProductsSearchBloc>().productTypeCounts,
          );
          final showCategoryTabs =
              searchText.isNotEmpty && categories.isNotEmpty;
          if (!searchText.isValidValue) {
            SizedBox.shrink();
          } else if (state is ProductsSearchResultsEmpty) {
            productsResultListCallback.call(null);
            return NoSearchResultsWidget(
              title: findLocalization.find_search_noResultsMatch(searchText),
              description: findLocalization.find_search_checkTheSpelling,
            );
          } else if (state is SearchLoadSuccess) {
            productsResultListCallback.call(state.results);
          }
          return SearchProductContentWidget(
            showCategoryTabs: showCategoryTabs,
            categories: categories,
            searchText: searchText,
            savedProductResult: savedProductResult,
            productTabEntrySource: fromAllTabViewAll,
            showBottomLoader: isPaginatingActiveTab,
            productOptionsItem: productOptionsItem,
            isProductSelectionEnabled: isProductSelectionEnabled,
            listNameAddToList: listNameAddToList,
            onRefreshProductSelection: () {
              onRefreshProductSelection.call();
            },
            selectedProductTypeSearch: selectedProductTypeSearch,
            isEWGVerified: isEWGVerified,
            isFromProductDetail: isFromProductDetail,
          );
        },
      ),
    );
  }
}
