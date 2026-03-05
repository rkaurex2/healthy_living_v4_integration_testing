import 'package:freezed_annotation/freezed_annotation.dart';

part 'polling_status_dto.freezed.dart';
part 'polling_status_dto.g.dart';

@freezed
sealed class PollingStatusDTO with _$PollingStatusDTO {
  const factory PollingStatusDTO({
    required int interval,
    required bool complete,
    required String stage,
    @JsonKey(name: 'estimated_progress') int? estimatedProgress,
    @JsonKey(name: 'estimated_time_remaining') int? estimatedTimeRemaining,
    @JsonKey(name: 'queue_position') int? queuePosition,
    String? message,
  }) = _PollingStatusDTO;

  factory PollingStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$PollingStatusDTOFromJson(json);
}
