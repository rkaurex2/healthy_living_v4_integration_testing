// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_submissions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductSubmissionsDTO _$ProductSubmissionsDTOFromJson(
  Map<String, dynamic> json,
) => _ProductSubmissionsDTO(
  message: json['message'] as String,
  submissionId: (json['submission_id'] as num).toInt(),
  ocrJobId: json['ocr_job_id'] as String?,
  status: json['status'] as String,
  imageIds:
      (json['image_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
);

Map<String, dynamic> _$ProductSubmissionsDTOToJson(
  _ProductSubmissionsDTO instance,
) => <String, dynamic>{
  'message': instance.message,
  'submission_id': instance.submissionId,
  'ocr_job_id': instance.ocrJobId,
  'status': instance.status,
  'image_ids': instance.imageIds,
};
