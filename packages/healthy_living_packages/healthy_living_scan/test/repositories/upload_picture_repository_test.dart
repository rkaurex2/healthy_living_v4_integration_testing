import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_scan/src/data/models/polling_ocr_dto.dart';
import 'package:healthy_living_scan/src/data/models/product_submissions_dto.dart';
import 'package:healthy_living_scan/src/data/repositories/default_upload_picture_repository.dart';
import 'package:healthy_living_scan/src/domain/data_source/upload_picture_remote_data_source.dart';
import 'package:healthy_living_scan/src/domain/models/polling_ocr_model.dart';
import 'package:healthy_living_scan/src/domain/models/product_submission_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/product_submissions_model.dart';
import 'package:healthy_living_scan/src/domain/models/remove_image_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/submit_product_request_model.dart';
import 'package:healthy_living_scan/src/domain/repository/upload_picture_repository.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([UploadPictureRemoteDataSource])
import 'upload_picture_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

UploadPictureRepository _makeRepo(
  MockUploadPictureRemoteDataSource dataSource,
) =>
    DefaultUploadPictureRepository(dataSource: dataSource);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockUploadPictureRemoteDataSource mockDataSource;
  late UploadPictureRepository repository;

  setUp(() {
    mockDataSource = MockUploadPictureRemoteDataSource();
    repository = _makeRepo(mockDataSource);
  });

  // -------------------------------------------------------------------------
  // uploadPicture
  // -------------------------------------------------------------------------
  group('uploadPicture', () {
    test('returns 200 on success with mapped domain model', () async {
      when(mockDataSource.uploadPictures(
        request: anyNamed('request'),
        submissionsId: anyNamed('submissionsId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<ProductSubmissionsDTO?>(
          data: ProductSubmissionsDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.uploadPicture(
        request: const ProductSubmissionRequestModel(),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when DTO is null', () async {
      when(mockDataSource.uploadPictures(
        request: anyNamed('request'),
        submissionsId: anyNamed('submissionsId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<ProductSubmissionsDTO?>(
          data: null,
          statusCode: 500,
          responseHeaders: {},
        ),
      );

      final result = await repository.uploadPicture(
        request: const ProductSubmissionRequestModel(),
      );

      expect(result.data, isNull);
      expect(result.statusCode, 500);
    });
  });

  // -------------------------------------------------------------------------
  // pollingOCR
  // -------------------------------------------------------------------------
  group('pollingOCR', () {
    test('returns 200 on success', () async {
      when(mockDataSource.ocrPolling(
        jobId: anyNamed('jobId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<PollingOcrDTO?>(
          data: PollingOcrDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.pollingOCR(jobId: 'job-123');

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct jobId', () async {
      when(mockDataSource.ocrPolling(
        jobId: anyNamed('jobId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<PollingOcrDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.pollingOCR(jobId: 'my-job-id');

      verify(mockDataSource.ocrPolling(jobId: 'my-job-id')).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // submitProduct
  // -------------------------------------------------------------------------
  group('submitProduct', () {
    test('returns 200 on success', () async {
      when(mockDataSource.submitProduct(
        request: anyNamed('request'),
        submissionsId: anyNamed('submissionsId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<ProductSubmissionsDTO?>(
          data: ProductSubmissionsDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.submitProduct(
        request: const SubmitProductRequestModel(),
        submissionId: 'sub-123',
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });
  });

  // -------------------------------------------------------------------------
  // pollingOCRProvisionalScore
  // -------------------------------------------------------------------------
  group('pollingOCRProvisionalScore', () {
    test('returns 200 on success', () async {
      when(mockDataSource.pollingOCRProvisionalScore(
        jobId: anyNamed('jobId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<OcrProvisionalScoreResponseDTO?>(
          data: OcrProvisionalScoreResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result =
          await repository.pollingOCRProvisionalScore(jobId: 'job-456');

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });
  });

  // -------------------------------------------------------------------------
  // triggerOcr
  // -------------------------------------------------------------------------
  group('triggerOcr', () {
    test('returns 200 on success', () async {
      when(mockDataSource.triggerOcr(
        submissionsId: anyNamed('submissionsId'),
        uuid: anyNamed('uuid'),
      )).thenAnswer(
        (_) async => const NetworkResponse<ProductSubmissionsDTO?>(
          data: ProductSubmissionsDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.triggerOcr(
        submissionsId: 'sub-1',
        uuid: 'uuid-1',
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct parameters', () async {
      when(mockDataSource.triggerOcr(
        submissionsId: anyNamed('submissionsId'),
        uuid: anyNamed('uuid'),
      )).thenAnswer(
        (_) async => const NetworkResponse<ProductSubmissionsDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.triggerOcr(
        submissionsId: 'submission-abc',
        uuid: 'uuid-xyz',
      );

      verify(mockDataSource.triggerOcr(
        submissionsId: 'submission-abc',
        uuid: 'uuid-xyz',
      )).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // removeImage
  // -------------------------------------------------------------------------
  group('removeImage', () {
    test('returns 200 on success', () async {
      when(mockDataSource.removeImage(
        request: anyNamed('request'),
        submissionsId: anyNamed('submissionsId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<ProductSubmissionsDTO?>(
          data: ProductSubmissionsDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.removeImage(
        request: const RemoveImageRequestModel(),
        submissionId: 'sub-123',
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.removeImage(
        request: anyNamed('request'),
        submissionsId: anyNamed('submissionsId'),
      )).thenThrow(Exception('error'));

      expect(
        () => repository.removeImage(
          request: const RemoveImageRequestModel(),
          submissionId: 'sub-123',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
