// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocr_provisional_score_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OcrProvisionalScoreResponseDTO _$OcrProvisionalScoreResponseDTOFromJson(
  Map<String, dynamic> json,
) => _OcrProvisionalScoreResponseDTO(
  jobId: json['job_id'] as String?,
  status: json['status'] as String?,
  submissionId: (json['submission_id'] as num?)?.toInt(),
  completedAt:
      json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
  extractedData:
      json['extracted_data'] == null
          ? null
          : ExtractedDataDTO.fromJson(
            json['extracted_data'] as Map<String, dynamic>,
          ),
  timings:
      json['timings'] == null
          ? null
          : TimingsDTO.fromJson(json['timings'] as Map<String, dynamic>),
  userEditsProvisionalScore:
      json['user_edits_provisional_score'] == null
          ? null
          : ProvisionalScoreDTO.fromJson(
            json['user_edits_provisional_score'] as Map<String, dynamic>,
          ),
  provisionalScore:
      json['provisional_score'] == null
          ? null
          : ProvisionalScoreDTO.fromJson(
            json['provisional_score'] as Map<String, dynamic>,
          ),
  errorMessage: json['error_message'] as String?,
  polling:
      json['polling'] == null
          ? null
          : PollingStatusDTO.fromJson(json['polling'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OcrProvisionalScoreResponseDTOToJson(
  _OcrProvisionalScoreResponseDTO instance,
) => <String, dynamic>{
  'job_id': instance.jobId,
  'status': instance.status,
  'submission_id': instance.submissionId,
  'completed_at': instance.completedAt?.toIso8601String(),
  'extracted_data': instance.extractedData,
  'timings': instance.timings,
  'user_edits_provisional_score': instance.userEditsProvisionalScore,
  'provisional_score': instance.provisionalScore,
  'error_message': instance.errorMessage,
  'polling': instance.polling,
};
