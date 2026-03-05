import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_response_model.dart';

part 'ingredient_details_state.freezed.dart';

@freezed
sealed class IngredientDetailsState with _$IngredientDetailsState {
  const factory IngredientDetailsState.initial() = IngredientDetailsInitial;

  const factory IngredientDetailsState.loading() = IngredientDetailsLoadInProgress;

  const factory IngredientDetailsState.success({
    required IngredientInfoResponseModel data,
  }) = IngredientDetailsLoadSuccess;

  const factory IngredientDetailsState.failure(Exception? exception) =
      IngredientDetailsLoadFailure;
}
