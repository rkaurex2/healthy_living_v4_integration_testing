import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_preference_indicator_dto.freezed.dart';
part 'ingredient_preference_indicator_dto.g.dart';

@freezed
sealed class IngredientPreferenceIndicatorDTO with _$IngredientPreferenceIndicatorDTO {
  const factory IngredientPreferenceIndicatorDTO({
    @Default(false) @JsonKey(name: 'has_avoid') bool? hasAvoid,
    @Default(false) @JsonKey(name: 'has_prefer') bool hasPrefer,
    @JsonKey(name: 'avoid_count') int? avoidCount,
    @JsonKey(name: 'prefer_count') int? preferCount,
    @JsonKey(name: 'avoided_ingredients') List<IngredientPreferenceIngredientDTO>? avoidedIngredients,
    @JsonKey(name: 'preferred_ingredients') List<IngredientPreferenceIngredientDTO>? preferredIngredients,
  }) = _IngredientPreferenceIndicatorDTO;

  factory IngredientPreferenceIndicatorDTO.fromJson(Map<String, dynamic> json) =>
      _$IngredientPreferenceIndicatorDTOFromJson(json);
}

@freezed
sealed class IngredientPreferenceIngredientDTO with _$IngredientPreferenceIngredientDTO {
  const factory IngredientPreferenceIngredientDTO({
    String? name,
    String? source,
    @JsonKey(name: 'list_name') String? listName,
  }) = _IngredientPreferenceIngredientDTO;

  factory IngredientPreferenceIngredientDTO.fromJson(Map<String, dynamic> json) =>
      _$IngredientPreferenceIngredientDTOFromJson(json);
}
