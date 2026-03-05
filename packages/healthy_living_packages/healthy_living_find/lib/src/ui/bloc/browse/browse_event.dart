import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'browse_event.freezed.dart';

@freezed
class BrowseEvent with _$BrowseEvent {
  const factory BrowseEvent.browseInitial({required bool isEWGVerified}) =
      BrowseInitial;

  const factory BrowseEvent.browseSearchPagination({
    required String searchQuery,
    required int page,
    required BrowseProductByCategoryType category,
    required String categoryGroupTitle,
    required bool isEwgVerified,
    required ProductSelectionOptionsItem productOptionsItem,
    ProductFiltersModel? filters,
    String? categoryGroupId,
    String? categoryName,
    int? categoryId,
    int? subCategoryId,
  }) = BrowseSearchPagination;

  const factory BrowseEvent.setSortFilter({required SortOption sortOption}) =
      BrowseSetSortFilter;

  const factory BrowseEvent.productOptionUpdate({
    required BrowseProductByCategoryType category,
    required ProductSelectionOptionsItem productOptionsItem,
  }) = ProductOptionUpdate;

  const factory BrowseEvent.productSelect({
    required BrowseProductByCategoryType category,
    required ProductSelectionType productSelectionType,
    required ProductSelectionOptionsItem productSelectionOptionsItem,
    required int index,
  }) = ProductSelect;

  const factory BrowseEvent.removeCompareProducts({
    required CompareProductItem compareProductItem,
    required ProductSelectionType productSelectionType,
    required ProductSelectionOptionsItem productSelectionOptionsItem,
    BrowseProductByCategoryType? categoryType,
  }) = RemoveCompareProducts;

  const factory BrowseEvent.productListClearList({
    BrowseProductByCategoryType? categoryType,
  }) = ProductListClearList;

  const factory BrowseEvent.productListCloseSelection({
    required ProductSelectionOptionsItem productSelectionOptionsItem,
    required BrowseProductByCategoryType? categoryType,
  }) = ProductListCloseSelection;

  const factory BrowseEvent.compareUpgradeNowTapped() = CompareUpgradeNowTapped;
}
