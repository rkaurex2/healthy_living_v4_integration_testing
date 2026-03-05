import 'package:healthy_living_scan/src/data/models/product_submissions_dto.dart';
import 'package:healthy_living_scan/src/domain/models/product_submissions_model.dart';

extension UploadImageMapper on ProductSubmissionsDTO {
  ProductSubmissionsModel toDomain() {
    return ProductSubmissionsModel(
      message: message,
      submissionId: submissionId,
      ocrJobId: ocrJobId,
      status: status,
      imageIds: imageIds
    );
  }
}
