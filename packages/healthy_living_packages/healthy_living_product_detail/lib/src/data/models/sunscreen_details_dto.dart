import 'package:freezed_annotation/freezed_annotation.dart';

part 'sunscreen_details_dto.freezed.dart';
part 'sunscreen_details_dto.g.dart';

@freezed
sealed class SunscreenDetailsDTO with _$SunscreenDetailsDTO {
  const factory SunscreenDetailsDTO({
    @JsonKey(name: 'uvb_protection') required String uvbProtection,
    @JsonKey(name: 'uva_protection') String? uvaProtection,
    @JsonKey(name: 'uvab_balance') String? uvabBalance,
    @JsonKey(name: 'sunscreen_stability') String? sunscreenStabilityName,
    @JsonKey(name: 'health_hazard') String? healthHazardName,
    @JsonKey(name: 'other_concerns') String? otherConcerns,
  }) = _SunscreenDetailsDTO;

  factory SunscreenDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$SunscreenDetailsDTOFromJson(json);
}
