import 'package:freezed_annotation/freezed_annotation.dart';

part 'cosmetic_concerns_model.freezed.dart';

@freezed
sealed class CosmeticConcernsModel with _$CosmeticConcernsModel {
  const factory CosmeticConcernsModel({
    @JsonKey(name: 'cancer_new') String? cancerConcernLevel,
    @JsonKey(name: 'dev_rep_new') String? developmentalConcernLevel,
    @JsonKey(name: 'allergy_new') String? allergyConcernLevel,
    @JsonKey(name: 'use_res_level') String? useRestrictionConcerLevel,
  }) = _CosmeticConcernsModel;
}