import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_event.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_state.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_ui_model.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:storage/storage.dart';
import 'package:flutter/material.dart';

@Injectable()
class IngredientPreferenceBloc
    extends Bloc<IngredientPreferenceEvent, IngredientPreferenceState> {
  final IngredientPreferenceRepository _ingredientPreferenceRepository;
  final KeyValueStorage _keyValueStorage;
  final IngredientPreferenceAnalytics _ingredientPreferenceAnalytics;
  List<IngredientPreferenceCategoryUiModel> _ingredientPreferenceCategoryList =
      [];

  List<IngredientPreferenceCategoryUiModel>
  get ingredientPreferenceCategoryList => _ingredientPreferenceCategoryList;

  IngredientPreferenceBloc({
    required IngredientPreferenceRepository ingredientPreferenceRepository,
    required KeyValueStorage keyValueStorage,
    required IngredientPreferenceAnalytics ingredientPreferenceAnalytics,
  }) : _ingredientPreferenceRepository = ingredientPreferenceRepository,
       _keyValueStorage = keyValueStorage,
       _ingredientPreferenceAnalytics = ingredientPreferenceAnalytics,
       super(const IngredientPreferenceState.initial()) {
    on<IngredientPreferencesListFetched>(_onIngredientPreferencesListFetched);
    on<ActiveIngredientPreferencesFetched>(
      _onActiveIngredientPreferencesFetched,
    );
    on<FtUxViewed>(_onFtUxViewed);
    on<SaveIngredientPreferences>(_onSaveIngredientPreferences);
    on<DeleteIngredientPreferences>(_onDeleteIngredientPreferences);
  }

  Future<void> _onFtUxViewed(
    FtUxViewed event,
    Emitter<IngredientPreferenceState> emit,
  ) async {
    try {
      await _keyValueStorage.setBool(
        HealthyLivingSharedKeyValueConstant.isPremiumFtUxViewed,
        true,
      );
      emit(IngredientPreferenceState.viewedFtUx());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onDeleteIngredientPreferences(
    DeleteIngredientPreferences event,
    Emitter<IngredientPreferenceState> emit,
  ) async {
    try {
      if (state is SavePreferenceLoadInProgress) {
        return;
      }
      emit(
        IngredientPreferenceState.savePreferenceLoadInProgress(
          listType: event.listType,
          index: event.index,
        ),
      );
      final response = await _ingredientPreferenceRepository
          .deleteIngredientPreferences(userSelectId: event.userSelectionId);

      if (response?.isSuccess ?? false) {
        /// GA4 event (IngredientsPref Set)
        await _ingredientPreferenceAnalytics.logIngredientsPreferenceSet(
          ingredientId: event.id,
          userSelected: event.userSelected,
          listType: event.listType,
          index: event.index,
          action: StringConstants.actionUnselected,
        );

        emit(
          IngredientPreferenceState.savePreferenceLoadSuccess(
            listType: event.listType,
            index: event.index,
          ),
        );
      }
    } on Exception catch (e) {
      emit(IngredientPreferenceState.deletePreferenceLoadFail(exception: e));
    }
  }

  Future<void> _onSaveIngredientPreferences(
    SaveIngredientPreferences event,
    Emitter<IngredientPreferenceState> emit,
  ) async {
    try {
      if (state is SavePreferenceLoadInProgress) {
        return;
      }
      emit(
        IngredientPreferenceState.savePreferenceLoadInProgress(
          listType: event.listType,
          index: event.index,
        ),
      );
      final response = await _ingredientPreferenceRepository
          .saveIngredientPreferences(
            request: SaveCuratedIngredientPreferencesRequestModel(
              userSelection: CuratedIngredientUserSelection(
                listId: event.id.toString(),
                enabled: event.userSelected,
                priority: 1,
              ),
            ),
          );

      if (response?.isSuccess ?? false) {
        /// GA4 event (IngredientsPref Set)
        await _ingredientPreferenceAnalytics.logIngredientsPreferenceSet(
          ingredientId: event.id,
          userSelected: event.userSelected,
          listType: event.listType,
          index: event.index,
          action: StringConstants.actionSelected,
        );

        emit(
          IngredientPreferenceState.savePreferenceLoadSuccess(
            listType: event.listType,
            index: event.index,
          ),
        );
      }
    } on Exception catch (e) {
      emit(IngredientPreferenceState.savePreferenceFail(exception: e));
    }
  }

  Future<void> _onActiveIngredientPreferencesFetched(
    ActiveIngredientPreferencesFetched event,
    Emitter<IngredientPreferenceState> emit,
  ) async {
    try {
      emit(
        IngredientPreferenceState.activeIngredientPreferenceLoadInProgress(),
      );

      /// GA4 event (IngredientsPref Start)
      await _ingredientPreferenceAnalytics.logIngredientsPreferenceStart(
        source: StringConstants.account,
      );

      final response = await _ingredientPreferenceRepository
          .getActivePreferences(
            request: CuratedIngredientPreferenceListsRequestModel(
              filterUserSelected: true,
            ),
          );

      if (response.isSuccess) {
        final List<CuratedIngredientPreferenceListModel?> items =
            response.data ?? [];

        final summaryList = buildPreferenceSummary(items, event.list);

        List<IngredientPreferenceCategoryUiModel>? list =
            event.list.asMap().entries.map((entry) {
              IngredientPreferenceCategoryUiModel item = entry.value;
              for (var summaryListData in summaryList) {
                var type =
                    item.type.value == StringConstants.personalCare
                        ? StringConstants.cosmetics
                        : item.type.value;
                if (type == summaryListData.type) {
                  return item.copyWith(
                    avoidCount: summaryListData.avoidCount,
                    preferredCount: summaryListData.preferCount,
                  );
                }
              }
              return item;
            }).toList();
        _ingredientPreferenceCategoryList.clear();
        _ingredientPreferenceCategoryList = list;
        emit(
          IngredientPreferenceState.loadActiveIngredientPreference(list: list),
        );
      }
    } on Exception catch (e) {
      emit(IngredientPreferenceState.activePreferenceLoadFail(exception: e));
    }
  }

  Future<void> _onIngredientPreferencesListFetched(
    IngredientPreferencesListFetched event,
    Emitter<IngredientPreferenceState> emit,
  ) async {
    try {
      if (!event.refreshListWithOutLoader) {
        emit(IngredientPreferenceState.ingredientPreferenceLoadInProgress());
      }

      final response = await _ingredientPreferenceRepository
          .getCuratedIngredientPreferences(
            request: CuratedIngredientPreferenceListsRequestModel(
              filterCategory:
                  event.category == StringConstants.personalCare
                      ? StringConstants.cosmetics
                      : (event.category ?? ""),
              filterListType: event.listType ?? "",
            ),
          );

      if (response.isSuccess) {
        final List<CuratedIngredientPreferenceListModel?> items =
            response.data ?? [];

        final List<CuratedIngredientPreferenceListModel?> avoidedList =
            items
                .where(
                  (e) =>
                      e?.listType?.toLowerCase() ==
                      StringConstants.ingredientPreferencesAvoidListType,
                )
                .toList();

        final List<CuratedIngredientPreferenceListModel?> preferredList =
            items
                .where(
                  (e) =>
                      e?.listType?.toLowerCase() ==
                      StringConstants.ingredientPreferencesPreferListType,
                )
                .toList();

        /// GA4 Events (IngredientsPref CuratedList)
        if (items.isValidList == true) {
          for (final entry in items.asMap().entries) {
            final index = entry.key;
            final list = entry.value;

            if (list != null && list.userSelected == true) {
              await _ingredientPreferenceAnalytics
                  .logIngredientsPreferenceCuratedList(
                    list: list,
                    index: index,
                    action: StringConstants.actionSelected,
                    source: StringConstants.ingredientPreferences,
                  );
            }
          }
        }

        emit(
          IngredientPreferenceState.loadIngredientPreference(
            avoidList: avoidedList,
            preferList: preferredList,
          ),
        );
      }
    } on Exception catch (e) {
      emit(
        IngredientPreferenceState.ingredientPreferenceLoadFail(exception: e),
      );
    }
  }

  List<IngredientPreferenceType> buildPreferenceSummary(
    List<CuratedIngredientPreferenceListModel?> items,
    List<IngredientPreferenceCategoryUiModel> uiItemList,
  ) {
    final Map<String, IngredientPreferenceType> result = {};

    for (final item in items) {
      if (item?.userSelected != true) continue;

      if (!result.containsKey(item?.category)) {
        result[item?.category ?? ""] = IngredientPreferenceType(
          type: item?.category ?? "",
          avoidCount: 0,
          preferCount: 0,
        );
      }

      final current = result[item?.category]!;

      if (item?.listType?.toLowerCase() ==
          StringConstants.ingredientPreferencesAvoidListType) {
        result[item?.category ?? ""] = IngredientPreferenceType(
          type: current.type,
          avoidCount: current.avoidCount + 1,
          preferCount: current.preferCount,
        );
      } else if (item?.listType?.toLowerCase() ==
          StringConstants.ingredientPreferencesPreferListType) {
        result[item?.category ?? ""] = IngredientPreferenceType(
          type: current.type,
          avoidCount: current.avoidCount,
          preferCount: current.preferCount + 1,
        );
      }
    }

    return result.values.toList();
  }
}
