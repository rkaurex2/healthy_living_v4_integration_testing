import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'polling_ocr_dto.freezed.dart';
part 'polling_ocr_dto.g.dart';

@freezed
sealed class PollingOcrDTO with _$PollingOcrDTO {
  const factory PollingOcrDTO({
    @JsonKey(name: 'job_id') required String jobId,
    required String status,
    @JsonKey(name: 'submission_id') required int submissionId,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'extracted_data') ExtractedDataDTO? extractedData,
    TimingsDTO? timings,
    PollingStatusDTO? polling,
  }) = _PollingOcrDTO;

  factory PollingOcrDTO.fromJson(Map<String, dynamic> json) =>
      _$PollingOcrDTOFromJson(json);
}
