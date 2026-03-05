import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_ingredient_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

part 'ingredient_list_event.freezed.dart';

@freezed
sealed class IngredientListEvent with _$IngredientListEvent {
  const factory IngredientListEvent.ingredientListInitialised({
    required List<SearchIngredientModel> initialIngredientList,
    required SearchPaginationItemModel? pagination,
  }) = IngredientListInitialised;

  const factory IngredientListEvent.ingredientsSearched({
    required String searchQuery,
  }) = IngredientsSearched;
}
