import 'package:freezed_annotation/freezed_annotation.dart';

part 'cosmetic_ingredient_dto.freezed.dart';
part 'cosmetic_ingredient_dto.g.dart';

@freezed
sealed class CosmeticIngredientDTO with _$CosmeticIngredientDTO {
  const factory CosmeticIngredientDTO({
    @JsonKey(name: 'ingred_id') int? id,
    @JsonKey(name: 'orig_text') String? labelName,
    String? name,
    String? concerns,
    String? score,
    @JsonKey(name: 'substance_id') int? substanceId,
  }) = _CosmeticIngredientDTO;

  factory CosmeticIngredientDTO.fromJson(Map<String, dynamic> json) =>
      _$CosmeticIngredientDTOFromJson(json);
}