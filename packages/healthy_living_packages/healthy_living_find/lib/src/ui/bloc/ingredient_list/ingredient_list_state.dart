import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';

part 'ingredient_list_state.freezed.dart';

@freezed
sealed class IngredientListState with _$IngredientListState {
  const factory IngredientListState.ingredientsInitial() = IngredientsInitial;

  const factory IngredientListState.ingredientsLoadInProgress() =
      IngredientsLoadInProgress;

  const factory IngredientListState.ingredientsLoadSuccess({
    required List<SearchIngredientModel> ingredientList,
    required SearchPaginationItemModel? pagination,
  }) = IngredientsLoadSuccess;

  const factory IngredientListState.ingredientsLoadFailure(
    Exception exception,
  ) = IngredientsLoadFailure;

  const factory IngredientListState.ingredientsLoadFromCacheSuccess({
    required List<SearchIngredientModel> ingredients,
    required SearchPaginationItemModel? pagination,
  }) = IngredientsLoadFromCacheSuccess;
}
