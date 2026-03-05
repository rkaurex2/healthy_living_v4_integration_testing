import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/analytics/analytics_param_utils.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IngredientPreferenceAnalytics)
class DefaultIngredientPreferenceAnalytics
    implements IngredientPreferenceAnalytics {
  final AnalyticsService _analytics;

  DefaultIngredientPreferenceAnalytics(this._analytics);

  @override
  Future<void> logIngredientsPreferenceStart({
    required String source,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.ingredientsPrefStart,
      parameters: {
        AnalyticsParameters.source: source,
      },
    );
  }

  @override
  Future<void> logIngredientsPreferenceSet({
    required int ingredientId,
    required bool userSelected,
    required String listType,
    required int index,
    required String action,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.ingredientsPrefSet,
      parameters: {
        AnalyticsParameters.ingredientId: ingredientId,
        AnalyticsParameters.userSelected: userSelected.toString(),
        AnalyticsParameters.listType: listType,
        AnalyticsParameters.position: index + 1,
        AnalyticsParameters.action: action,
      },
    );
  }

  @override
  Future<void> logIngredientsPreferenceCuratedList({
    required CuratedIngredientPreferenceListModel list,
    required int index,
    required String action,
    required String source,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.ingredientsPrefCuratedList,
      parameters: {
        AnalyticsParameters.listId: list.id.toString(),
        AnalyticsParameters.listName: list.name,
        AnalyticsParameters.listType: list.listType,
        AnalyticsParameters.category: list.category,
        AnalyticsParameters.severityLevel: list.severityLevel,
        AnalyticsParameters.itemCount: list.itemCount,
        AnalyticsParameters.priorityOrder: list.priorityOrder,
        AnalyticsParameters.action: list.userSelected == true
            ? StringConstants.actionSelected
            : StringConstants.actionUnselected,
        AnalyticsParameters.position: index + 1,
        AnalyticsParameters.source: source,
      }.removeNulls(),
    );
  }

  @override
  Future<void> logIngredientsPreferenceFilter({
    required String filterName,
    required bool enabled,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.ingredientsPrefFilter,
      parameters: {
        AnalyticsParameters.filterName: filterName,
        AnalyticsParameters.enabled: enabled.toString(),
      },
    );
  }
}
