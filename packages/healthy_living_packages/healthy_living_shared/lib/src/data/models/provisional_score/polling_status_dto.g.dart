// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polling_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PollingStatusDTO _$PollingStatusDTOFromJson(Map<String, dynamic> json) =>
    _PollingStatusDTO(
      interval: (json['interval'] as num).toInt(),
      complete: json['complete'] as bool,
      stage: json['stage'] as String,
      estimatedProgress: (json['estimated_progress'] as num?)?.toInt(),
      estimatedTimeRemaining:
          (json['estimated_time_remaining'] as num?)?.toInt(),
      queuePosition: (json['queue_position'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PollingStatusDTOToJson(_PollingStatusDTO instance) =>
    <String, dynamic>{
      'interval': instance.interval,
      'complete': instance.complete,
      'stage': instance.stage,
      'estimated_progress': instance.estimatedProgress,
      'estimated_time_remaining': instance.estimatedTimeRemaining,
      'queue_position': instance.queuePosition,
      'message': instance.message,
    };
