import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_details_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_ingredient_model.dart';

part 'cleaner_formulation_model.freezed.dart';

@freezed
sealed class CleanerFormulationModel with _$CleanerFormulationModel {
  const factory CleanerFormulationModel({
    @JsonKey(name: 'disclosure_score_in_words') String? disclosureScore,
    CleanerDetailsScoresModel? scores,
    List<CleanerIngredientModel>? ingredients,
  }) = _CleanerFormulationModel;
}