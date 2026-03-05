import 'package:healthy_living_scan/src/data/models/polling_ocr_dto.dart';
import 'package:healthy_living_scan/src/data/models/product_submissions_dto.dart';
import 'package:healthy_living_scan/src/domain/models/product_submission_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/remove_image_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/submit_product_request_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class UploadPictureRemoteDataSource {
  Future<NetworkResponse<ProductSubmissionsDTO?>> uploadPictures({
    required ProductSubmissionRequestModel request,
    String? submissionsId,
  });

  Future<NetworkResponse<PollingOcrDTO?>> ocrPolling({required String jobId});

  Future<NetworkResponse<ProductSubmissionsDTO?>> submitProduct({
    required SubmitProductRequestModel request,
    required String submissionsId,
  });

  Future<NetworkResponse<OcrProvisionalScoreResponseDTO?>>
  pollingOCRProvisionalScore({required String jobId});

  Future<NetworkResponse<ProductSubmissionsDTO?>> triggerOcr({
    required String submissionsId,
    required String uuid,
  });

  Future<NetworkResponse<ProductSubmissionsDTO?>> removeImage({
    required String submissionsId,
    required RemoveImageRequestModel request,
  });

  Future<NetworkResponse<List<String>?>> getSunscreenActiveIngredients();
}
