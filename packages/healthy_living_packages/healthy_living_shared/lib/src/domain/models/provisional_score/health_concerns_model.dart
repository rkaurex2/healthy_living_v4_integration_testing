import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_concerns_model.freezed.dart';

@freezed
sealed class HealthConcernsModel with _$HealthConcernsModel {
  const factory HealthConcernsModel({
    @JsonKey(name: 'cancer_new') String? cancerNew,
    @JsonKey(name: 'allergy_new') String? allergyNew,
    @JsonKey(name: 'dev_rep_new') String? devRepNew,
    @JsonKey(name: 'use_res_level') String? useResLevel,
  }) = _HealthConcernsModel;
}
