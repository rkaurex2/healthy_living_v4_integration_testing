import 'package:healthy_living_shared/healthy_living_shared.dart';

abstract interface class ScanAnalytics {
  Future<void> logSearchStart({
    required String source,
  });

  Future<void> logScanStart({
    required String source,
  });

  Future<void> logBarcodeSearch({
    required String searchTerm,
  });

  Future<void> logScanFail({
    required String searchTerm,
    required String reason,
  });

  /// Search results are shown to the user
  Future<void> logBarcodeSearchResult({
    required String searchTerm,
    required int resultCount,
    required GeneralProductListItemUIModel product,
  });

  /// User clicks a search result
  Future<void> logBarcodeResultClick({
    required GeneralProductListItemUIModel product,
  });
}
