import 'package:freezed_annotation/freezed_annotation.dart';

part 'cosmetic_ingredient_model.freezed.dart';

@freezed
sealed class CosmeticIngredientModel with _$CosmeticIngredientModel {
  const factory CosmeticIngredientModel({
    @JsonKey(name: 'ingred_id') int? id,
    @JsonKey(name: 'orig_text') String? labelName,
    String? name,
    String? concerns,
    String? score,
    @JsonKey(name: 'substance_id') int? substanceId,
  }) = _CosmeticIngredientModel;
}