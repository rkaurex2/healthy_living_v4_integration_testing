import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_details_scores_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_ingredient_dto.dart';

part 'cleaner_formulation_dto.freezed.dart';
part 'cleaner_formulation_dto.g.dart';

@freezed
sealed class CleanerFormulationDTO with _$CleanerFormulationDTO {
  const factory CleanerFormulationDTO({
    @JsonKey(name: 'disclosure_score_in_words') String? disclosureScore,
    CleanerDetailsScoresDTO? scores,
    List<CleanerIngredientDTO>? ingredients,
  }) = _CleanerFormulationDTO;

  factory CleanerFormulationDTO.fromJson(Map<String, dynamic> json) =>
      _$CleanerFormulationDTOFromJson(json);
}