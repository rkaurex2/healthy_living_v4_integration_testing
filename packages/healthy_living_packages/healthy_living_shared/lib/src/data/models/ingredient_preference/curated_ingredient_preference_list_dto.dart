import 'package:freezed_annotation/freezed_annotation.dart';

part 'curated_ingredient_preference_list_dto.freezed.dart';
part 'curated_ingredient_preference_list_dto.g.dart';

@freezed
sealed class CuratedIngredientPreferenceListDto
    with _$CuratedIngredientPreferenceListDto {
  const factory CuratedIngredientPreferenceListDto({
    int? id,
    String? name,
    String? category,
    @JsonKey(name: 'list_type') String? listType,
    @JsonKey(name: 'severity_level') String? severityLevel,
    String? description,
    bool? active,
    @JsonKey(name: 'priority_order') int? priorityOrder,
    @JsonKey(name: 'item_count') int? itemCount,
    @JsonKey(name: 'user_selected') bool? userSelected,
    @JsonKey(name: 'user_selection_id') int? userSelectionId,
    @JsonKey(name: 'user_selection_enabled') bool? userSelectionEnabled,
    @JsonKey(name: 'user_selection_priority') int? userSelectionPriority,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CuratedIngredientPreferenceListDTO;

  factory CuratedIngredientPreferenceListDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CuratedIngredientPreferenceListDtoFromJson(json);
}
