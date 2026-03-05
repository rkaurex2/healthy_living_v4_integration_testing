import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/parsed_substance_dto.dart';

part 'provisional_score_ingredients_dto.freezed.dart';
part 'provisional_score_ingredients_dto.g.dart';

@freezed
sealed class ProvisionalScoreIngredientsDTO
    with _$ProvisionalScoreIngredientsDTO {
  const factory ProvisionalScoreIngredientsDTO({
    @JsonKey(name: 'parsed_substances')
    required List<ParsedSubstanceDTO>? parsedSubstances,
    int? total,
    int? parsed,
    int? unparsed,
    @JsonKey(name: 'unparsed_ingredients_string')
    String? unparsedIngredientsString,
  }) = _ProvisionalScoreIngredientsDTO;

  factory ProvisionalScoreIngredientsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProvisionalScoreIngredientsDTOFromJson(json);
}
