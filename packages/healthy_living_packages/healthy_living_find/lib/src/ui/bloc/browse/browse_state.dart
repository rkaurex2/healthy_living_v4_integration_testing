import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/healthy_living_find.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'browse_state.freezed.dart';

@freezed
class BrowseState with _$BrowseState {
  const factory BrowseState.browseSearchInitial() = BrowseSearchInitial;

  const factory BrowseState.browseSearchLoading() = BrowseSearchLoading;

  const factory BrowseState.browseSearchFailure(Exception exception) =
      BrowseSearchFailure;

  const factory BrowseState.browseSearchInternetFailure(Exception exception) =
      BrowseSearchInternetFailure;

  const factory BrowseState.browseSearchSuccess({
    required SearchResponseModel searchResponse,
    required int page,
    required bool hasMore,
  }) = BrowseSearchSuccess;
  const factory BrowseState.paginationInProgress({
    required BrowseProductByCategoryType category,
  }) = BrowsePaginationInProgress;

  const factory BrowseState.browseSortFilterUpdated({
    required SortOption selectedSortOption,
  }) = BrowseSortFilterUpdated;
  const factory BrowseState.productOptionUpdated({
    required ProductSelectionOptionsItem productOptionsItem,
  }) = ProductOptionUpdated;
  const factory BrowseState.productSelected({
    required ProductSelectionType productSelectionType,
    required int index,
  }) = ProductSelected;
  const factory BrowseState.productListClearedList() = ProductListClearedList;
  const factory BrowseState.productListCloseSelectionUpdated() =
      ProductListCloseSelectionUpdated;
  const factory BrowseState.removedCompareProducts() = RemovedCompareProducts;
  const factory BrowseState.compareUpgradeNowTapSuccess({required String timestamp}) =
      CompareUpgradeNowTapSuccess;
}
