import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'entitlements_verify_response_dto.freezed.dart';
part 'entitlements_verify_response_dto.g.dart';

@freezed
sealed class EntitlementsVerifyResponseDto with _$EntitlementsVerifyResponseDto {
  const factory EntitlementsVerifyResponseDto({
    @JsonKey(name: 'user') UserDataDTO? userData,
    @JsonKey(name: 'revenuecat') AuthRevenueCatResponseDto? revenueCat,
    @JsonKey(name: 'entitlements') List<EntitlementsResponseDto>? entitlements,
  }) = _EntitlementsVerifyResponseDto;

  factory EntitlementsVerifyResponseDto.fromJson(Map<String, dynamic> json) =>
      _$EntitlementsVerifyResponseDtoFromJson(json);
}
