import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:healthy_living_scan/src/data/models/polling_ocr_dto.dart';
import 'package:healthy_living_scan/src/data/models/product_submissions_dto.dart';
import 'package:healthy_living_scan/src/domain/data_source/upload_picture_remote_data_source.dart';
import 'package:healthy_living_scan/src/domain/models/product_submission_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/remove_image_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/submit_product_request_model.dart';
import 'package:healthy_living_scan/src/utils/product_submission_api_endpoints.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: UploadPictureRemoteDataSource)
class DefaultUploadPictureRemoteDataSource
    implements UploadPictureRemoteDataSource {
  final RestClient _restClient;

  static DefaultUploadPictureRemoteDataSource? _instance;

  DefaultUploadPictureRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultUploadPictureRemoteDataSource({
    @unauthenticatedApiRestClient required RestClient unauthenticatedRestClient,
    @apiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultUploadPictureRemoteDataSource._internal(restClient);
    return _instance!;
  }

  @override
  Future<NetworkResponse<ProductSubmissionsDTO?>> uploadPictures({
    required ProductSubmissionRequestModel request,
    String? submissionsId,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{...identifierParams.toJson()};

    final apiEndPoint =
        submissionsId.isValidValue
            ? ProductSubmissionApiEndpoints.productSubmissionsWithID(
              submissionsId!,
            )
            : ProductSubmissionApiEndpoints.productSubmissions;

    final filePath = request.picture;
    final file = File(filePath);
    final fileName = file.path.split('/').last;
    final jsonBody = request.toJson();
    jsonBody.remove('picture');
    final body = <String, Object>{};
    jsonBody.forEach((key, value) {
      if (value != null) {
        body[key] = value;
      }
    });
    //todo for check the api response will remove it
    debugPrint('=== UPLOAD REQUEST ===');

    final NetworkResponse<ProductSubmissionsDTO?> response;

    if (submissionsId.isValidValue) {
      body.remove('crowd_sourced_product_submission[uuid]');
      body.remove('crowd_sourced_product_submission[upc]');
      body.remove('crowd_sourced_product_submission[product_type]');
      if (!request.uuid.isValidValue) {
        body.remove('uuid');
      }
      final debugRequest = <String, dynamic>{
        ...body,
        'crowd_sourced_product_submission[product_images_attributes][0][picture]':
            {'filePath': filePath, 'fileName': fileName},
      };
      debugPrint(
        'NETWORK::REQUEST:: UPLOAD PICTURE '
        '$apiEndPoint'
        '\nBody:\n${const JsonEncoder.withIndent('  ').convert(debugRequest)}'
        '\nQueryParams: $queryParams',
      );
      debugPrint('=====================');
      response = await _restClient.patchFile<ProductSubmissionsDTO?>(
        apiEndPoint,
        fileKey:
            'crowd_sourced_product_submission[product_images_attributes][0][picture]',
        filePath: filePath,
        fileName: fileName,
        body: body,
        queryParams: queryParams,
        fromJson: (json) {
          debugPrint('Response JSON: $json');
          return ProductSubmissionsDTO.fromJson(json);
        },
      );
    } else {
      final postBody = Map<String, Object>.from(body)..remove('uuid');
      final debugRequest = <String, dynamic>{
        ...postBody,
        'crowd_sourced_product_submission[product_images_attributes][0][picture]':
            {'filePath': filePath, 'fileName': fileName},
      };
      debugPrint(
        'NETWORK::REQUEST:: UPLOAD PICTURE '
        '$apiEndPoint'
        '\nBody:\n${const JsonEncoder.withIndent('  ').convert(debugRequest)}'
        '\nQueryParams: $queryParams',
      );
      debugPrint('=====================');

      response = await _restClient.postFile<ProductSubmissionsDTO?>(
        apiEndPoint,
        fileKey:
            'crowd_sourced_product_submission[product_images_attributes][0][picture]',
        filePath: filePath,
        fileName: fileName,
        body: postBody,
        queryParams: queryParams,
        fromJson: (json) {
          debugPrint('Response JSON: $json');
          return ProductSubmissionsDTO.fromJson(json);
        },
      );
    }
    return response;
  }

  @override
  Future<NetworkResponse<PollingOcrDTO?>> ocrPolling({
    required String jobId,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{...identifierParams.toJson()};
    final response = await _restClient.get<PollingOcrDTO?>(
      ProductSubmissionApiEndpoints.ocrExtractionsWithID(jobId),
      queryParams: queryParams,
      fromJson: (json) {
        return PollingOcrDTO.fromJson(json);
      },
    );
    return response;
  }

  @override
  Future<NetworkResponse<ProductSubmissionsDTO?>> submitProduct({
    required SubmitProductRequestModel request,
    required String submissionsId,
  }) async
  {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{...identifierParams.toJson()};

    final body =
        HealthyLivingSharedUtils.removeNulls(request.toApiJson())
            as Map<String, dynamic>;

    //todo will remove it
    debugPrint(
      'NETWORK::REQUEST:: PATCH '
      '${ProductSubmissionApiEndpoints.productSubmissionsWithID(submissionsId)}'
      '\nBody:\n${const JsonEncoder.withIndent('  ').convert(body)}'
      '\nQueryParams: $queryParams',
    );

    final response = await _restClient.patch<ProductSubmissionsDTO?>(
      ProductSubmissionApiEndpoints.productSubmissionsWithID(submissionsId),
      queryParams: queryParams,
      fromJson: (json) {
        return ProductSubmissionsDTO.fromJson(json);
      },
      body: body,
    );

    return response;
  }

  @override
  Future<NetworkResponse<OcrProvisionalScoreResponseDTO?>>
  pollingOCRProvisionalScore({required String jobId}) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{
      ...identifierParams.toJson(),
      'resume_polling': 'true',
    };

    final response = await _restClient.get<OcrProvisionalScoreResponseDTO?>(
      ProductSubmissionApiEndpoints.ocrExtractionsWithID(jobId),
      queryParams: queryParams,
      fromJson: (json) {
        return OcrProvisionalScoreResponseDTO.fromJson(json);
      },
    );

    return response;
  }

  @override
  Future<NetworkResponse<ProductSubmissionsDTO?>> triggerOcr({
    required String submissionsId,
    required String uuid,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{...identifierParams.toJson()};

    final apiEndPoint = ProductSubmissionApiEndpoints.productSubmissionsWithID(
      submissionsId,
    );
    final body = {'uuid': uuid, 'trigger_ocr': true};
    if (!uuid.isValidValue) {
      body.remove('uuid');
    }

    final response = await _restClient.patch<ProductSubmissionsDTO?>(
      apiEndPoint,
      body: body,
      queryParams: queryParams,
      fromJson: (json) => ProductSubmissionsDTO.fromJson(json),
    );
    return response;
  }

  @override
  Future<NetworkResponse<ProductSubmissionsDTO?>> removeImage({
    required String submissionsId,
    required RemoveImageRequestModel request,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{...identifierParams.toJson()};

    final body = <String, Object>{};
    final jsonBody = request.toJson();
    jsonBody.forEach((key, value) {
      if (value != null) {
        body[key] = value;
      }
    });
    final response = await _restClient.patch<ProductSubmissionsDTO>(
      ProductSubmissionApiEndpoints.productSubmissionsWithID(submissionsId),
      body: body,
      queryParams: queryParams,
      fromJson: (json) {
        return ProductSubmissionsDTO.fromJson(json);
      },
    );
    return response;
  }

  @override
  Future<NetworkResponse<List<String>?>> getSunscreenActiveIngredients() async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{...identifierParams.toJson()};
    final response = await _restClient.get<List<String>>(
      ProductSubmissionApiEndpoints.sunscreenActiveIngredients,
      queryParams: queryParams,
      fromJson: (json) {
        final list = (json as List).map((e) => e.toString()).toList();
        return list;
      },
    );
    return response;
  }
}
