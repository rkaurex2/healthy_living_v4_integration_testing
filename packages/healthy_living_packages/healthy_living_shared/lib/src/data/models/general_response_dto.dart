// general_response_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_response_dto.freezed.dart';
part 'general_response_dto.g.dart';

@freezed
sealed class GeneralResponseDTO with _$GeneralResponseDTO {
  const factory GeneralResponseDTO({
    String? status,
    String? message,
  }) = _GeneralResponseDTO;

  factory GeneralResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$GeneralResponseDTOFromJson(json);
}
