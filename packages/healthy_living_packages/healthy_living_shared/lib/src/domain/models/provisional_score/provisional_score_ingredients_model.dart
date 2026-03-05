import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/parsed_substance_model.dart';

part 'provisional_score_ingredients_model.freezed.dart';

@freezed
sealed class ProvisionalScoreIngredientsModel
    with _$ProvisionalScoreIngredientsModel {
  const factory ProvisionalScoreIngredientsModel({
    int? total,
    int? parsed,
    int? unparsed,
    List<ParsedSubstanceModel>? parsedSubstances,
    String? unparsedIngredientsString,
  }) = _ProvisionalScoreIngredientsModel;
}
