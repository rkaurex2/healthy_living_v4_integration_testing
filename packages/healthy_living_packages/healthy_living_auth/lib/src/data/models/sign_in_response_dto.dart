import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'sign_in_response_dto.freezed.dart';
part 'sign_in_response_dto.g.dart';

@freezed
sealed class SignInResponseDTO with _$SignInResponseDTO {
  const factory SignInResponseDTO({
    @JsonKey(name: 'user_data') UserDataDTO? userData,
    @JsonKey(name: 'revenuecat') AuthRevenueCatResponseDto? revenueCat,
    @JsonKey(name: 'entitlements') List<EntitlementsResponseDto>? entitlements,
  }) = _SignInResponseDTO;

  factory SignInResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDTOFromJson(json);
}
