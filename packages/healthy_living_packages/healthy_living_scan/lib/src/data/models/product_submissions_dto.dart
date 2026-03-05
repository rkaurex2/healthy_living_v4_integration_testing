import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_submissions_dto.freezed.dart';
part 'product_submissions_dto.g.dart';

@freezed
sealed class ProductSubmissionsDTO with _$ProductSubmissionsDTO {
  const factory ProductSubmissionsDTO({
    required String message,
    @JsonKey(name: 'submission_id') required int submissionId,
    @JsonKey(name: 'ocr_job_id') required String? ocrJobId,
    required String status,
    @JsonKey(name: 'image_ids') required List<int> imageIds,
  }) = _ProductSubmissionsDTO;

  factory ProductSubmissionsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductSubmissionsDTOFromJson(json);
}
