import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/extracted_data_dto.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/polling_status_dto.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/provisional_score_dto.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/timings_dto.dart';

part 'ocr_provisional_score_response_dto.freezed.dart';
part 'ocr_provisional_score_response_dto.g.dart';

@freezed
sealed class OcrProvisionalScoreResponseDTO
    with _$OcrProvisionalScoreResponseDTO {
  const factory OcrProvisionalScoreResponseDTO({
    @JsonKey(name: 'job_id') String? jobId,
    String? status,
    @JsonKey(name: 'submission_id') int? submissionId,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'extracted_data') ExtractedDataDTO? extractedData,
    TimingsDTO? timings,
    @JsonKey(name: 'user_edits_provisional_score')
    ProvisionalScoreDTO? userEditsProvisionalScore,
    @JsonKey(name: 'provisional_score') ProvisionalScoreDTO? provisionalScore,
    @JsonKey(name: 'error_message') String? errorMessage,
    PollingStatusDTO? polling,
  }) = _OcrProvisionalScoreResponseDTO;

  factory OcrProvisionalScoreResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$OcrProvisionalScoreResponseDTOFromJson(json);
}
