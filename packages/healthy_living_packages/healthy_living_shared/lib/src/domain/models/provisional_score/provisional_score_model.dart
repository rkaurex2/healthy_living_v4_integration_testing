import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/health_concerns_model.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/provisional_score_ingredients_model.dart';

part 'provisional_score_model.freezed.dart';

@freezed
sealed class ProvisionalScoreModel with _$ProvisionalScoreModel {
  const factory ProvisionalScoreModel({
    int? score,
    String? source,
    ProvisionalScoreIngredientsModel? ingredients,
    String? productForm,
    String? productUsage,
    HealthConcernsModel? healthConcerns,
    bool? useOnDamagedSkin,
  }) = _ProvisionalScoreModel;
}
