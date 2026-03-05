import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_revenuecat_response_dto.freezed.dart';
part 'auth_revenuecat_response_dto.g.dart';

@freezed
sealed class AuthRevenueCatResponseDto with _$AuthRevenueCatResponseDto {
  const factory AuthRevenueCatResponseDto({
    @JsonKey(name: 'app_user_id') String? appUserId,
  }) = _AuthRevenueCatResponseDto;

  factory AuthRevenueCatResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthRevenueCatResponseDtoFromJson(json);
}
