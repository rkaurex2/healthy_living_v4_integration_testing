import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/ui/models/search_tabs.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'universal_search_state.freezed.dart';

@freezed
class UniversalSearchState with _$UniversalSearchState {
  const factory UniversalSearchState.searchInitial() = SearchInitial;

  const factory UniversalSearchState.searchScreenInitial() =
      SearchScreenInitial;

  const factory UniversalSearchState.searchTextEmpty() = SearchTextEmpty;

  const factory UniversalSearchState.searchResultsEmpty() = SearchResultsEmpty;

  const factory UniversalSearchState.searchTextUpdated({
    required String? searchQuery,
  }) = SearchTextUpdated;

  const factory UniversalSearchState.tabChanged({
    required SearchTabData selectedTabData,
  }) = TabChanged;

  const factory UniversalSearchState.tabBarTabsUpdated({
    required Set<int> disabledTabs,
  }) = TabBarTabsUpdated;

  const factory UniversalSearchState.productOptionUpdated({
    required ProductSelectionOptionsItem productOptionsItem,
  }) = ProductOptionUpdated;

  const factory UniversalSearchState.productTabChanged({
    required SearchType? searchType,
  }) = ProductTabChanged;

  const factory UniversalSearchState.compareUpgradeNowTapSuccess({
    required String timestamp,
  }) = CompareUpgradeNowTapSuccess;
}
