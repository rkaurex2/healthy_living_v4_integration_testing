import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class SearchPage extends BasePage {
  const SearchPage(super.tester);

  Future<void> enterSearch(String query) =>
      enterText(TestKeys.searchBar, query);
  Future<void> tapAllProductsTab() => tap(TestKeys.searchAllProductsTab);
  Future<void> tapProductsTab() => tap(TestKeys.searchProductsTab);
  Future<void> tapBrandsTab() => tap(TestKeys.searchBrandsTab);
  Future<void> tapIngredientsTab() => tap(TestKeys.searchIngredientsTab);
  Future<void> tapListsTab() => tap(TestKeys.searchListsTab);
  Future<void> tapFilter() => tap(TestKeys.filterButton);
  Future<void> tapThreeDots() => tap(TestKeys.threeDotsMenu);
  Future<void> tapAddToListFromMenu() => tap(TestKeys.addToListFromMenu);
  Future<void> tapCompareFromMenu() => tap(TestKeys.compareFromMenu);
  Future<void> waitForNoResults() => waitFor(TestKeys.noResultsView);
  Future<void> waitForResults() => waitFor(TestKeys.searchResultsList);
}
