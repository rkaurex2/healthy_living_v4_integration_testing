import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_info_response_dto.freezed.dart';
part 'ingredient_info_response_dto.g.dart';

@freezed
sealed class IngredientInfoResponseDTO with _$IngredientInfoResponseDTO {
  const factory IngredientInfoResponseDTO({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: "count_cleaners") int? countCleaners,
    @JsonKey(name: "count_cosmetics") int? countCosmetics,
    @JsonKey(name: "grade_worst") String? gradeWorst,
    @JsonKey(name: "grade_best") String? gradeBest,
    int? webscore,
    @JsonKey(name: "webscore_min") int? webscoreMin,
    @JsonKey(name: "skin_deep_web_ingredient_url") String? skinDeepWebIngredientUrl,
    @JsonKey(name: "cleaner_web_ingredient_url") String? cleanerWebIngredientUrl,
  }) = _IngredientInfoResponseDTO;

  factory IngredientInfoResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$IngredientInfoResponseDTOFromJson(json);
}
