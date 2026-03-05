import 'package:healthy_living_my_items/src/ui/model/history_sort_option.dart';
import 'package:healthy_living_my_items/src/ui/model/history_sort_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class MyItemsUtils {
  MyItemsUtils._instance();

  static MyItemsUtils? _sharedInstance;

  factory MyItemsUtils() => _sharedInstance ??= MyItemsUtils._instance();

  List<HistorySortOption> getHistorySortOptions() {
    return [
      HistorySortOption(
        index: 1,
        type: HistorySortType.all,
        name: StringConstants.allProducts,
      ),
      HistorySortOption(
        index: 2,
        type: HistorySortType.recentlyViewed,
        name: StringConstants.viewedProducts,
      ),
      HistorySortOption(
        index: 3,
        type: HistorySortType.submissions,
        name: StringConstants.submittedProducts,
      ),
    ];
  }

  HistorySortOption getDefaultHistorySortOption() {
    return HistorySortOption(
      index: 1,
      type: HistorySortType.all,
      name: StringConstants.allProducts,
    );
  }

  String getLocalizedHistorySortName(
    HealthyLivingSharedLocalizations l10n,
    HistorySortType sortType,
  ) {
    switch (sortType) {
      case HistorySortType.all:
        return l10n.history_sort_allProducts;

      case HistorySortType.recentlyViewed:
        return l10n.history_sort_viewedProducts;

      case HistorySortType.submissions:
        return l10n.history_sort_submittedProducts;
    }
  }

  String getHistorySortParam(HistorySortType sortType) {
    switch (sortType) {
      case HistorySortType.all:
        return StringConstants.filterAllSubcategoryName;

      case HistorySortType.recentlyViewed:
        return StringConstants.recentlyViewed;

      case HistorySortType.submissions:
        return StringConstants.submissions;
    }
  }
}
