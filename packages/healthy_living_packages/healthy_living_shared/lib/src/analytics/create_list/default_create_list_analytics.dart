import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CreateListAnalytics)
class DefaultCreateListAnalytics implements CreateListAnalytics {
  final AnalyticsService _analytics;

  DefaultCreateListAnalytics(this._analytics);

  @override
  Future<void> logListCreated({
    required String listId,
    required String listName,
    int? itemCount,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.listCreated,
      parameters: {
        AnalyticsParameters.listId: listId,
        AnalyticsParameters.listName: listName,
        if (itemCount != null) AnalyticsParameters.itemCount: itemCount,
      },
    );
  }
}
