import 'package:healthy_living_scan/src/data/mapper/polling_ocr_mapper.dart';
import 'package:healthy_living_scan/src/data/mapper/upload_image_mapper.dart';
import 'package:healthy_living_scan/src/domain/data_source/upload_picture_remote_data_source.dart';
import 'package:healthy_living_scan/src/domain/models/polling_ocr_model.dart';
import 'package:healthy_living_scan/src/domain/models/product_submission_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/product_submissions_model.dart';
import 'package:healthy_living_scan/src/domain/models/remove_image_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/submit_product_request_model.dart';
import 'package:healthy_living_scan/src/domain/repository/upload_picture_repository.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: UploadPictureRepository)
class DefaultUploadPictureRepository implements UploadPictureRepository {
  UploadPictureRemoteDataSource _productDetailRemoteDataSource;
  static DefaultUploadPictureRepository? _instance;

  DefaultUploadPictureRepository._internal(this._productDetailRemoteDataSource);

  @factoryMethod
  factory DefaultUploadPictureRepository({
    required UploadPictureRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultUploadPictureRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<ProductSubmissionsModel?>> uploadPicture({
    required ProductSubmissionRequestModel request,
  }) async {
    final response = await _productDetailRemoteDataSource.uploadPictures(
      request: request,
    );
    return NetworkResponse<ProductSubmissionsModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<PollingOcrModel?>> pollingOCR({
    required String jobId,
  }) async {
    final response = await _productDetailRemoteDataSource.ocrPolling(
      jobId: jobId,
    );
    return NetworkResponse<PollingOcrModel?>(
      data: response.data?.toModel(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<ProductSubmissionsModel?>> submitProduct({
    required SubmitProductRequestModel request,
    required String submissionId,
  }) async {
    final response = await _productDetailRemoteDataSource.submitProduct(
      request: request,
      submissionsId: submissionId,
    );
    return NetworkResponse<ProductSubmissionsModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<OcrProvisionalScoreResponseModel?>>
  pollingOCRProvisionalScore({required String jobId}) async {
    final response = await _productDetailRemoteDataSource
        .pollingOCRProvisionalScore(jobId: jobId);
    return NetworkResponse<OcrProvisionalScoreResponseModel?>(
      data: response.data?.toDomainModel(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<ProductSubmissionsModel?>> triggerOcr({
    required String submissionsId,
    required String uuid,
  }) async {
    final response = await _productDetailRemoteDataSource.triggerOcr(
      submissionsId: submissionsId,
      uuid: uuid,
    );

    return NetworkResponse<ProductSubmissionsModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      responseHeaders: response.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<ProductSubmissionsModel?>> removeImage({
    required RemoveImageRequestModel request,
    required String submissionId,
  }) async {
    final response = await _productDetailRemoteDataSource.removeImage(
      request: request,
      submissionsId: submissionId,
    );
    return NetworkResponse<ProductSubmissionsModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
