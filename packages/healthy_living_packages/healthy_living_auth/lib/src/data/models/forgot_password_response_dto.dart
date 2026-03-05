import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_response_dto.freezed.dart';
part 'forgot_password_response_dto.g.dart';

@freezed
sealed class ForgotPasswordResponseDTO with _$ForgotPasswordResponseDTO {
  const factory ForgotPasswordResponseDTO({
    @JsonKey(name: 'message') String? message,
  }) = _ForgotPasswordResponseDTO;

  factory ForgotPasswordResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseDTOFromJson(json);
}
