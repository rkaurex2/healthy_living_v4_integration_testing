import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/extracted_data_model.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/polling_status_model.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/provisional_score_model.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/timings_model.dart';

part 'ocr_provisional_score_response_model.freezed.dart';

@freezed
sealed class OcrProvisionalScoreResponseModel
    with _$OcrProvisionalScoreResponseModel {
  const factory OcrProvisionalScoreResponseModel({
    String? jobId,
    String? status,
    int? submissionId,
    DateTime? completedAt,
    ExtractedDataModel? extractedData,
    TimingsModel? timings,
    ProvisionalScoreModel? userEditsProvisionalScore,
    ProvisionalScoreModel? provisionalScore,
    String? errorMessage,
    PollingStatusModel? polling,
  }) = _OcrProvisionalScoreResponseModel;
}
