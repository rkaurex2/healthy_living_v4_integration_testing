import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'sign_up_response_dto.freezed.dart';
part 'sign_up_response_dto.g.dart';

@freezed
sealed class SignUpResponseDTO with _$SignUpResponseDTO {
  const factory SignUpResponseDTO({
    @JsonKey(name: 'user_data') UserDataDTO? userData,
    @JsonKey(name: 'revenuecat') AuthRevenueCatResponseDto? revenueCat,
    @JsonKey(name: 'entitlements') List<EntitlementsResponseDto>? entitlements,
  }) = _SignUpResponseDTO;

  factory SignUpResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDTOFromJson(json);
}
