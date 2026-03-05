import 'package:healthy_living_shared/src/ui/models/compare/compare_source.dart';

abstract interface class CompareProductAnalytics {
  Future<void> logCompareStart({
    required CompareSource source,
    required String firstProductID,
    required String secondProductID,
  });

  Future<void> logCompareSuccess({
    required String firstProductID,
    required String secondProductID,
  });

  Future<void> logCompareFail({
    required String firstProductID,
    required String secondProductID,
    required String failureMessage,
  });
}
