import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_submissions_model.freezed.dart';

@freezed
sealed class ProductSubmissionsModel with _$ProductSubmissionsModel {
  const factory ProductSubmissionsModel({
    required String message,
    required int submissionId,
    required String? ocrJobId,
    required String status,
    required List<int> imageIds
  }) = _ProductSubmissionsModel;
}
