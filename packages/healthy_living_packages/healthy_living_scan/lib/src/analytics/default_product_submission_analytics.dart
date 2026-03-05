import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductSubmissionAnalytics)
class DefaultProductSubmissionAnalytics implements ProductSubmissionAnalytics {
  final AnalyticsService _analytics;

  DefaultProductSubmissionAnalytics(this._analytics);

  @override
  Future<void> logSubmitStart() async {
    await _analytics.logEvent(
      name: AnalyticsEvents.submitStart,
      parameters: {AnalyticsParameters.source: AnalyticsParameters.scan},
    );
  }

  @override
  Future<void> logSubmitPhoto({
    required String imageRole,
    required String productCategory,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.submitPhoto,
      parameters: {
        AnalyticsParameters.productCategory: productCategory,
        AnalyticsParameters.imageRole: imageRole,
      },
    );
  }

  @override
  Future<void> logSubmitAddDetails({
    required String productCategory,
    required String submissionId,
    required String addDetailScreen,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.submitAddDetails,
      parameters: {
        AnalyticsParameters.submissionId: submissionId,
        AnalyticsParameters.productCategory: productCategory,
        AnalyticsParameters.addDetailScreen: addDetailScreen,
      },
    );
  }

  @override
  Future<void> logSubmitSkipDetails({
    required String productCategory,
    required String submissionId,
    required String skipDetailScreen,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.submitSkipDetails,
      parameters: {
        AnalyticsParameters.submissionId: submissionId,
        AnalyticsParameters.productCategory: productCategory,
        AnalyticsParameters.skipDetailScreen: skipDetailScreen,
      },
    );
  }

  @override
  Future<void> logSubmitSkipToScore({
    required String productCategory,
    required String submissionId,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.submitSkipToScore,
      parameters: {
        AnalyticsParameters.submissionId: submissionId,
        AnalyticsParameters.productCategory: productCategory,
        AnalyticsParameters.source: AnalyticsEvents.submitSkipToScore,
      },
    );
  }

  @override
  Future<void> logSubmitSuccess({
    required String productCategory,
    required String submissionId,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.submitSuccess,
      parameters: {
        AnalyticsParameters.productCategory: productCategory,
        AnalyticsParameters.submissionId: submissionId,
      },
    );
  }

  @override
  Future<void> logSubmitFail({
    required String productCategory,
    required String submissionId,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.submitFail,
      parameters: {
        AnalyticsParameters.productCategory: productCategory,
        AnalyticsParameters.submissionId: submissionId,
      },
    );
  }
}
