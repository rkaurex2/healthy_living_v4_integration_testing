import 'package:freezed_annotation/freezed_annotation.dart';

part 'sunscreen_details_model.freezed.dart';

@freezed
sealed class SunscreenDetailsModel with _$SunscreenDetailsModel {
  const factory SunscreenDetailsModel({
    @JsonKey(name: 'uvb_protection') required String uvbProtection,
    @JsonKey(name: 'uva_protection') String? uvaProtection,
    @JsonKey(name: 'uvab_balance') String? uvabBalance,
    @JsonKey(name: 'sunscreen_stability') String? sunscreenStabilityName,
    @JsonKey(name: 'health_hazard') String? healthHazardName,
    @JsonKey(name: 'other_concerns') String? otherConcerns,
  }) = _SunscreenDetailsModel;
}
