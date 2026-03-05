import 'package:freezed_annotation/freezed_annotation.dart';

part 'curated_ingredient_preference_meta_dto.freezed.dart';
part 'curated_ingredient_preference_meta_dto.g.dart';

@freezed
sealed class CuratedIngredientPreferenceMetaDto
    with _$CuratedIngredientPreferenceMetaDto {
  const factory CuratedIngredientPreferenceMetaDto({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'per_page') int? perPage,
  }) = _CuratedIngredientPreferenceMetaDTO;

  factory CuratedIngredientPreferenceMetaDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CuratedIngredientPreferenceMetaDtoFromJson(json);
}
