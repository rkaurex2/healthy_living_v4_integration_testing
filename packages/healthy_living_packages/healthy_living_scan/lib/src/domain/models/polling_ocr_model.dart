import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'polling_ocr_model.freezed.dart';

@freezed
sealed class PollingOcrModel with _$PollingOcrModel {
  const factory PollingOcrModel({
    required int submissionId,
    required String? jobId,
    required String status,
    DateTime? completedAt,
    ExtractedDataModel? extractedData,
    TimingsModel? timings,
    PollingStatusModel? polling,
  }) = _PollingOcrModel;
}
