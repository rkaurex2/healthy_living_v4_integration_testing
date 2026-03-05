import 'package:freezed_annotation/freezed_annotation.dart';
part 'health_concerns_dto.freezed.dart';
part 'health_concerns_dto.g.dart';
@freezed
sealed class HealthConcernsDTO with _$HealthConcernsDTO {
  const factory HealthConcernsDTO({
    @JsonKey(name: 'cancer_new') String? cancerNew,
    @JsonKey(name: 'allergy_new') String? allergyNew,
    @JsonKey(name: 'dev_rep_new') String? devRepNew,
    @JsonKey(name: 'use_res_level') String? useResLevel,
  }) = _HealthConcernsDTO;

  factory HealthConcernsDTO.fromJson(Map<String, dynamic> json) =>
      _$HealthConcernsDTOFromJson(json);
}
