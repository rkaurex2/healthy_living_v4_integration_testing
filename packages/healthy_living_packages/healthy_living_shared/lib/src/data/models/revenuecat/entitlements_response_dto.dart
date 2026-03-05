import 'package:freezed_annotation/freezed_annotation.dart';

part 'entitlements_response_dto.freezed.dart';
part 'entitlements_response_dto.g.dart';

@freezed
sealed class EntitlementsResponseDto with _$EntitlementsResponseDto {
  const factory EntitlementsResponseDto({
    @JsonKey(name: 'entitlement_id') String? entitlementId,
    bool? active,
    @JsonKey(name: 'product_id') String? productId,
    String? environment,
  }) = _EntitlementsResponseDto;

  factory EntitlementsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$EntitlementsResponseDtoFromJson(json);
}
