import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/health_concerns_dto.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/provisional_score_ingredients_dto.dart';

part 'provisional_score_dto.freezed.dart';
part 'provisional_score_dto.g.dart';

@freezed
sealed class ProvisionalScoreDTO with _$ProvisionalScoreDTO {
  const factory ProvisionalScoreDTO({
    int? score,
    String? source,
    ProvisionalScoreIngredientsDTO? ingredients,
    @JsonKey(name: 'product_form') String? productForm,
    @JsonKey(name: 'product_usage') String? productUsage,
    @JsonKey(name: 'health_concerns') HealthConcernsDTO? healthConcerns,
    @JsonKey(name: 'use_on_damaged_skin') bool? useOnDamagedSkin,
  }) = _ProvisionalScoreDTO;

  factory ProvisionalScoreDTO.fromJson(Map<String, dynamic> json) =>
      _$ProvisionalScoreDTOFromJson(json);
}


