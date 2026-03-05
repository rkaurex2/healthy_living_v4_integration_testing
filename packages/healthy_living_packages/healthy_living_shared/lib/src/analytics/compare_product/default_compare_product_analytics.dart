import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

@LazySingleton(as: CompareProductAnalytics)
class DefaultCompareProductAnalytics implements CompareProductAnalytics {
  final AnalyticsService _analytics;

  DefaultCompareProductAnalytics(this._analytics);

  @override
  Future<void> logCompareStart({
    required CompareSource source,
    required String firstProductID,
    required String secondProductID,
  }) {
    debugPrint("==logCompareStart==");
    return _analytics.logEvent(
      name: AnalyticsEvents.compareStart,
      parameters: {
        AnalyticsParameters.compareSource: source.name,
        AnalyticsParameters.firstProduct: firstProductID,
        AnalyticsParameters.secondProduct: secondProductID,
      },
    );
  }

  @override
  Future<void> logCompareSuccess({
    required String firstProductID,
    required String secondProductID,
  }) {
    debugPrint("==logCompareSuccess==");
    return _analytics.logEvent(
      name: AnalyticsEvents.compareSuccess,
      parameters: {
        AnalyticsParameters.firstProduct: firstProductID,
        AnalyticsParameters.secondProduct: secondProductID,
      },
    );
  }

  @override
  Future<void> logCompareFail({
    required String firstProductID,
    required String secondProductID,
    required String failureMessage,
  }) {
    debugPrint("==logCompareFail==");
    return _analytics.logEvent(
      name: AnalyticsEvents.compareFail,
      parameters: {
        AnalyticsParameters.apiFailure: failureMessage,
        AnalyticsParameters.firstProduct: firstProductID,
        AnalyticsParameters.failureStep: secondProductID,
      },
    );
  }
}
