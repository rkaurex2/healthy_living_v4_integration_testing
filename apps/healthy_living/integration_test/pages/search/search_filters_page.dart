import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class SearchFiltersPage extends BasePage {
  const SearchFiltersPage(super.tester);

  Future<void> selectSortBy() => tap(TestKeys.sortByDropdown);
  Future<void> toggleEwgVerified() => tap(TestKeys.ewgVerifiedFilter);
  Future<void> tapFilter() => tap(TestKeys.filterButton);
}
