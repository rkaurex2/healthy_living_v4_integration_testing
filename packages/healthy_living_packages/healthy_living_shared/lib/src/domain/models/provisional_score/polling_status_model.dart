import 'package:freezed_annotation/freezed_annotation.dart';

part 'polling_status_model.freezed.dart';

@freezed
sealed class PollingStatusModel with _$PollingStatusModel {
  const factory PollingStatusModel({
    required int interval,
    required bool complete,
    required String stage,
    int? estimatedProgress,
    int? estimatedTimeRemaining,
    int? queuePosition,
    String? message,
  }) = _PollingStatusModel;
}
