import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_find/src/ui/models/product_entry_source.dart';
import 'package:healthy_living_find/src/ui/models/products_result_local_model.dart';
import 'package:healthy_living_find/src/ui/models/search_my_lists_cached_data_model.dart';
import 'package:healthy_living_find/src/ui/models/search_tabs.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show CompareProductItem, ProductSelectionOptionsItem, SearchType;

part 'universal_search_event.freezed.dart';

@freezed
class UniversalSearchEvent with _$UniversalSearchEvent {
  const factory UniversalSearchEvent.searchScreenInitialised({
    required SearchTabData initialSelectedTab,
    required List<SearchTabData> tabs,
    required bool shouldDisplayTabBar,
    required bool activateListSelection,
    required String textInputHintText,
    required ProductSelectionOptionsItem productSelectionOptionsItem,
    String? listNameAddToList,
    CompareProductItem? compareProductItem,
    SearchType? searchType,
    bool? isEWGVerified,
    String? initialSearchQuery,
    int? brandId,
  }) = SearchScreenInitialised;

  const factory UniversalSearchEvent.tabPressed({required SearchTabData tab}) =
      TabPressed;

  const factory UniversalSearchEvent.searchQueryUpdated({
    required String searchQuery,
  }) = SearchQueryUpdated;

  const factory UniversalSearchEvent.saveProductsResult({
    required ProductsResultLocalModel? productsResult,
  }) = SaveProductsResult;

  const factory UniversalSearchEvent.saveBrandListData({
    required List<SearchBrandModel> brandList,
    required SearchPaginationItemModel? pagination,
  }) = SaveBrandListData;

  const factory UniversalSearchEvent.saveAllTabData({
    required SearchResponseModel? allTabData,
  }) = SaveAllTabData;

  const factory UniversalSearchEvent.saveCategoryListData({
    required List<SearchCategoryItemModel> categoryList,
    required SearchPaginationItemModel pagination,
  }) = SaveCategoryListData;

  const factory UniversalSearchEvent.saveIngredientListData({
    required List<SearchIngredientModel> ingredientList,
    required SearchPaginationItemModel pagination,
  }) = SaveIngredientListData;

  const factory UniversalSearchEvent.setProductsEntrySource({
    required ProductsEntrySource source,
  }) = SetProductsEntrySource;

  const factory UniversalSearchEvent.saveMyListsData({
    required SearchMyListsCachedDataModel data,
  }) = SaveMyListsData;

  const factory UniversalSearchEvent.productOptionUpdate({
    required ProductSelectionOptionsItem productOptionsItem,
  }) = ProductOptionUpdate;

  const factory UniversalSearchEvent.disableTabOnProductSelectionActivate({
    required ProductSelectionOptionsItem productOptionsItem,
  }) = DisableTabOnProductSelectionActivate;

  const factory UniversalSearchEvent.productTabChange({
    required SearchType? searchType,
    required ProductsResultLocalModel? productsResultLocalModel,
  }) = ProductTabChange;

  const factory UniversalSearchEvent.compareUpgradeNowTapped() =
      CompareUpgradeNowTapped;
}
