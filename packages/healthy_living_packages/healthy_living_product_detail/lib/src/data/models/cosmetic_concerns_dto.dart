import 'package:freezed_annotation/freezed_annotation.dart';

part 'cosmetic_concerns_dto.freezed.dart';
part 'cosmetic_concerns_dto.g.dart';

@freezed
sealed class CosmeticConcernsDTO with _$CosmeticConcernsDTO {
  const factory CosmeticConcernsDTO({
    @JsonKey(name: 'cancer_new') String? cancerConcernLevel,
    @JsonKey(name: 'dev_rep_new') String? developmentalConcernLevel,
    @JsonKey(name: 'allergy_new') String? allergyConcernLevel,
    @JsonKey(name: 'use_res_level') String? useRestrictionConcerLevel,
  }) = _CosmeticConcernsDTO;

  factory CosmeticConcernsDTO.fromJson(Map<String, dynamic> json) =>
      _$CosmeticConcernsDTOFromJson(json);
}