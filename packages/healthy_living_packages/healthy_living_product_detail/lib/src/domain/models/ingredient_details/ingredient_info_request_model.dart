import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_info_request_model.freezed.dart';

@freezed
sealed class IngredientInfoRequestModel with _$IngredientInfoRequestModel {
  const factory IngredientInfoRequestModel({required String id}) =
      _IngredientInfoRequestModel;
}
