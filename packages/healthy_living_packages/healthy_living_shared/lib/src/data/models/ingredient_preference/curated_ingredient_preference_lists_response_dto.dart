import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/curated_ingredient_preference_list_dto.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/curated_ingredient_preference_meta_dto.dart';

part 'curated_ingredient_preference_lists_response_dto.freezed.dart';
part 'curated_ingredient_preference_lists_response_dto.g.dart';

@freezed
sealed class CuratedIngredientPreferenceListsResponseDto
    with _$CuratedIngredientPreferenceListsResponseDto {
  const factory CuratedIngredientPreferenceListsResponseDto({
    @JsonKey(name: 'curated_ingredient_preference_lists')
    List<CuratedIngredientPreferenceListDto>? curatedIngredientPreferenceLists,
    CuratedIngredientPreferenceMetaDto? meta,
  }) = _CuratedIngredientPreferenceListsResponseDTO;

  factory CuratedIngredientPreferenceListsResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CuratedIngredientPreferenceListsResponseDtoFromJson(json);
}
