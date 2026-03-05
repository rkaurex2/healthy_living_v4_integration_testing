import 'package:healthy_living_scan/src/domain/models/polling_ocr_model.dart';
import 'package:healthy_living_scan/src/domain/models/product_submission_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/product_submissions_model.dart';
import 'package:healthy_living_scan/src/domain/models/remove_image_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/submit_product_request_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

abstract interface class UploadPictureRepository {
  Future<NetworkResponse<ProductSubmissionsModel?>> uploadPicture({
    required ProductSubmissionRequestModel request,
  });

  Future<NetworkResponse<PollingOcrModel?>> pollingOCR({required String jobId});

  Future<NetworkResponse<ProductSubmissionsModel?>> submitProduct({
    required SubmitProductRequestModel request,
    required String submissionId,
  });

  Future<NetworkResponse<OcrProvisionalScoreResponseModel?>>
  pollingOCRProvisionalScore({required String jobId});

  Future<NetworkResponse<ProductSubmissionsModel?>> triggerOcr({
    required String submissionsId,
    required String uuid,
  });

  Future<NetworkResponse<ProductSubmissionsModel?>> removeImage({
    required RemoveImageRequestModel request,
    required String submissionId,
  });
}
