import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/ui/models/product_entry_source.dart';
import 'package:healthy_living_find/src/ui/models/products_result_local_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'products_search_event.freezed.dart';

@freezed
sealed class ProductsSearchEvent with _$ProductsSearchEvent {
  const factory ProductsSearchEvent.productsInitial() = ProductsInitial;

  const factory ProductsSearchEvent.productsSearchAll({
    required String? searchQuery,
    required bool isAuthenticatedUser,
    @Default(false) bool isProductSelectionEnabled,
    @Default(ProductSelectionOptionsItem.none)
    ProductSelectionOptionsItem productSelectionOptionsItem,
    ProductFiltersModel? filters,
    @Default(true) bool shouldSetCategoryWithMaxCount,
    SearchType? searchType,
    bool? isEWGVerified,
    int? brandId,
  }) = ProductSearchAll;

  const factory ProductsSearchEvent.productCategoryTabChanged({
    required String? searchQuery,
    required SearchType searchType,
    @Default(false) bool isProductSelectionEnabled,
    @Default(ProductSelectionOptionsItem.none)
    ProductSelectionOptionsItem productSelectionOptionsItem,
    bool? isEWGVerifiedSearch,
  }) = ProductCategoryTabChanged;

  const factory ProductsSearchEvent.productSearchPagination({
    required String? searchQuery,
    required int page,
    required SearchType category,
    @Default(false) bool isProductSelectionEnabled,
    @Default(ProductSelectionOptionsItem.none)
    ProductSelectionOptionsItem productSelectionOptionsItem,
    ProductFiltersModel? filters,
    bool? isEWGVerified,
    @Default(false) bool shouldJumpToTop,
  }) = ProductSearchPagination;

  const factory ProductsSearchEvent.searchTextAdded({
    required String searchQuery,
    required bool isAuthenticatedUser,
    SearchType? productCategory,
    bool? isEwgVerified,
    List<String>? hazardScoreRanges,
  }) = SearchTextAdded;

  const factory ProductsSearchEvent.productsListInitialised({
    required ProductsResultLocalModel? initialCategoryList,
    required String? searchQuery,
    required ProductsEntrySource? productsEntrySource,
    required bool isAuthenticatedUser,
    @Default(false) bool isReturningFromDetail,
    @Default(false) bool isProductSelectionEnabled,
    SearchType? searchType,
    final bool? isEWGVerified,
    CompareProductItem? defaultCompareProductItem,
    int? brandId,
  }) = ProductsListInitialised;

  const factory ProductsSearchEvent.productAddToListSelected({
    required ProductSelectionType productSelectionType,
    required int index,
    required ProductSelectionOptionsItem productSelectionOptionsItem,
    SearchType? categoryType,
  }) = ProductAddToListSelected;

  const factory ProductsSearchEvent.productListSelectionStateChange({
    SearchType? categoryType,
    @Default(false) bool isProductSelectionEnabled,
  }) = ProductListSelectionStateChange;

  const factory ProductsSearchEvent.productListClearAddToList({
    SearchType? categoryType,
  }) = ProductListClearAddToList;

  const factory ProductsSearchEvent.removeCompareProducts({
    required int index,
    required CompareProductItem compareProductItem,
    required ProductSelectionType productSelectionType,
    required ProductSelectionOptionsItem productSelectionOptionsItem,
    SearchType? categoryType,
  }) = RemoveCompareProducts;

  const factory ProductsSearchEvent.productListPreferencesRefreshed({
    required SearchType? categoryType,
    required int avoidCount,
    required int preferCount,
    required String searchQuery,
    required ProductFiltersModel? filters,
    required bool isProductSelectionEnabled,
  }) = ProductListPreferencesRefreshed;
}
