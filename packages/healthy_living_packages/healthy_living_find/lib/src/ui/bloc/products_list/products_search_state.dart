import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_find/src/ui/models/products_result_local_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'products_search_state.freezed.dart';

@freezed
class ProductsSearchState with _$ProductsSearchState {
  const factory ProductsSearchState.productsInitial() = ProductsSearchInitial;

  const factory ProductsSearchState.searchLoadInProgress() =
      ProductsSearchInProgress;

  const factory ProductsSearchState.searchTextEmpty() = SearchTextEmpty;

  const factory ProductsSearchState.searchLoadSuccess({
    required ProductsResultLocalModel? results,
    @Default(false) bool shouldJumpToTop,
  }) = SearchLoadSuccess;

  const factory ProductsSearchState.searchLoadFailure(Exception exception) =
      SearchLoadFailure;

  const factory ProductsSearchState.internetFailure(Exception exception) =
      InternetFailure;

  const factory ProductsSearchState.searchResultsEmpty() =
      ProductsSearchResultsEmpty;

  const factory ProductsSearchState.searchLoadingMore({
    required SearchResultsModel? results,
  }) = SearchLoadingMore;

  const factory ProductsSearchState.saveProductsResult({
    required SearchResultsModel? results,
  }) = SaveProductsResult;

  const factory ProductsSearchState.searchTextUpdated({
    required String? searchQuery,
  }) = ProductsSearchTextUpdated;

  const factory ProductsSearchState.paginationInProgress({
    required SearchType category,
  }) = ProductsPaginationInProgress;

  const factory ProductsSearchState.productSelectionUpdated({
    required List<SearchProductModel> foodProducts,
    required List<SearchProductModel> cleanersProducts,
    required List<SearchProductModel> personalProducts,
  }) = ProductSelectionUpdated;

  const factory ProductsSearchState.productListSelectionStateChanged() =
      ProductListSelectionStateChanged;

  const factory ProductsSearchState.productListClearedAddToList() =
      ProductListClearedAddToList;

  const factory ProductsSearchState.removedCompareProducts() =
      RemovedCompareProducts;
}
