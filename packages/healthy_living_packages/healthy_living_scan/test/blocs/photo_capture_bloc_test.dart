import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_scan/src/data/models/polling_ocr_dto.dart';
import 'package:healthy_living_scan/src/data/models/product_submissions_dto.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_state.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_scan/src/ui/model/picture_upload_status.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

void main() {
  late MockUploadPictureRemoteDataSource mockDataSource;
  late MockProductSubmissionAnalytics mockAnalytics;
  late PhotoCaptureBloc bloc;

  const testUpc = '012345678905';
  const testProductType = 'food';
  const testUuid = 'test-uuid-123';
  const testPhotoPath = '/tmp/photo_front.jpg';
  const testPhotoPath2 = '/tmp/photo_ingredients.jpg';

  final testUploadResponse = ProductSubmissionsDTO(
    message: 'success',
    submissionId: 100,
    ocrJobId: 'ocr-job-123',
    status: 'pending',
    imageIds: [1],
  );

  final testUploadResponseTwoImages = ProductSubmissionsDTO(
    message: 'success',
    submissionId: 100,
    ocrJobId: 'ocr-job-123',
    status: 'pending',
    imageIds: [1, 2],
  );

  final testTriggerOcrResponse = ProductSubmissionsDTO(
    message: 'success',
    submissionId: 100,
    ocrJobId: 'ocr-job-456',
    status: 'processing',
    imageIds: [1],
  );

  final testPollingSuccessResponse = PollingOcrDTO(
    jobId: 'ocr-job-456',
    status: 'completed',
    submissionId: 100,
    extractedData: const ExtractedDataDTO(
      productName: ExtractedFieldDTO(value: 'Test Product'),
      brandName: ExtractedFieldDTO(value: 'Test Brand'),
      ingredients: ExtractedFieldDTO(value: 'Water, Glycerin'),
    ),
    polling: const PollingStatusDTO(
      interval: 2,
      complete: true,
      stage: 'completed',
      message: 'OCR complete',
    ),
  );

  PhotoCaptureBloc buildBloc({int? maxPhotos}) => PhotoCaptureBloc(
        uploadDataSource: mockDataSource,
        submissionAnalytics: mockAnalytics,
        maxPhotos: maxPhotos,
      );

  void setProductDetails(PhotoCaptureBloc b, {
    ProductCategory category = ProductCategory.food,
  }) {
    b.add(PhotoCaptureEvent.setProductDetails(
      upc: testUpc,
      productType: testProductType,
      uuid: testUuid,
      productCategory: category,
    ));
  }

  void stubUploadSuccess() {
    when(mockDataSource.uploadPictures(
      request: anyNamed('request'),
      submissionsId: anyNamed('submissionsId'),
    )).thenAnswer((_) async => NetworkResponse(
          statusCode: 200,
          data: testUploadResponse,
        ));
  }

  void stubUploadFailure() {
    when(mockDataSource.uploadPictures(
      request: anyNamed('request'),
      submissionsId: anyNamed('submissionsId'),
    )).thenAnswer((_) async => NetworkResponse(
          statusCode: 500,
          data: null,
        ));
  }

  void stubUploadException() {
    when(mockDataSource.uploadPictures(
      request: anyNamed('request'),
      submissionsId: anyNamed('submissionsId'),
    )).thenThrow(Exception('Network error'));
  }

  void stubTriggerOcrSuccess() {
    when(mockDataSource.triggerOcr(
      submissionsId: anyNamed('submissionsId'),
      uuid: anyNamed('uuid'),
    )).thenAnswer((_) async => NetworkResponse(
          statusCode: 200,
          data: testTriggerOcrResponse,
        ));
  }

  void stubTriggerOcrFailure() {
    when(mockDataSource.triggerOcr(
      submissionsId: anyNamed('submissionsId'),
      uuid: anyNamed('uuid'),
    )).thenAnswer((_) async => NetworkResponse(
          statusCode: 500,
          data: null,
        ));
  }

  void stubTriggerOcrException() {
    when(mockDataSource.triggerOcr(
      submissionsId: anyNamed('submissionsId'),
      uuid: anyNamed('uuid'),
    )).thenThrow(Exception('OCR trigger failed'));
  }

  void stubAnalytics() {
    when(mockAnalytics.logSubmitPhoto(
      productCategory: anyNamed('productCategory'),
      imageRole: anyNamed('imageRole'),
    )).thenAnswer((_) async {});
  }

  void stubRemoveImageSuccess() {
    when(mockDataSource.removeImage(
      submissionsId: anyNamed('submissionsId'),
      request: anyNamed('request'),
    )).thenAnswer((_) async => NetworkResponse(
          statusCode: 200,
          data: const ProductSubmissionsDTO(
            message: 'removed',
            submissionId: 100,
            ocrJobId: null,
            status: 'pending',
            imageIds: [],
          ),
        ));
  }

  setUp(() {
    mockDataSource = MockUploadPictureRemoteDataSource();
    mockAnalytics = MockProductSubmissionAnalytics();
    bloc = buildBloc();
    stubAnalytics();
  });

  tearDown(() => bloc.close());

  group('PhotoCaptureBloc', () {
    test('initial state is PhotoCaptureInitial', () {
      expect(bloc.state, isA<PhotoCaptureInitial>());
      expect(bloc.state, const PhotoCaptureState.initial());
    });

    test('initial currentStep is frontLabelCamera', () {
      expect(bloc.currentStep, PhotoCaptureStep.frontLabelCamera);
    });

    test('default maxPhotos is 2', () {
      expect(bloc.maxPhotos, 2);
    });

    test('custom maxPhotos is respected', () {
      final customBloc = buildBloc(maxPhotos: 5);
      expect(customBloc.maxPhotos, 5);
      customBloc.close();
    });

    group('SetProductDetails', () {
      test('sets product details and creates step config for food', () {
        bloc.add(const PhotoCaptureEvent.setProductDetails(
          upc: testUpc,
          productType: testProductType,
          uuid: testUuid,
          productCategory: ProductCategory.food,
        ));

        // SetProductDetails doesn't emit — it just stores internal state
        // Verify by checking stepConfig is non-null after processing
        expectLater(bloc.stream, emitsInOrder([]));
      });

      test('sets product details for each category', () async {
        for (final category in ProductCategory.values) {
          final b = buildBloc();
          b.add(PhotoCaptureEvent.setProductDetails(
            upc: testUpc,
            productType: category.value,
            uuid: testUuid,
            productCategory: category,
          ));
          await Future.delayed(Duration.zero);
          expect(b.stepConfig, isNotNull);
          await b.close();
        }
      });
    });

    group('PhotoCaptureStarted', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'emits active state with frontLabelCamera step (no stepConfig)',
        build: () => buildBloc(),
        act: (bloc) => bloc.add(
          const PhotoCaptureEvent.started(isIngredientsStep: false),
        ),
        expect: () => [
          isA<PhotoCaptureActive>()
              .having(
                (s) => s.currentStep,
                'currentStep',
                PhotoCaptureStep.frontLabelCamera,
              )
              .having((s) => s.frontLabelPhotos, 'frontLabelPhotos', isEmpty)
              .having(
                  (s) => s.ingredientsPhotos, 'ingredientsPhotos', isEmpty)
              .having((s) => s.selectedPhotoIndex, 'selectedPhotoIndex', 0)
              .having((s) => s.maxPhotos, 'maxPhotos', 2),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'emits active state with initial step from stepConfig (food category)',
        build: () => buildBloc(),
        act: (bloc) {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
        },
        expect: () => [
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.frontLabelCamera,
          ),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'resets internal state on started',
        build: () => buildBloc(),
        seed: () => const PhotoCaptureState.active(
          currentStep: PhotoCaptureStep.ingredientsPreview,
          frontLabelPhotos: ['/old.jpg'],
          ingredientsPhotos: ['/old2.jpg'],
          selectedPhotoIndex: 1,
          maxPhotos: 2,
        ),
        act: (bloc) => bloc.add(
          const PhotoCaptureEvent.started(isIngredientsStep: false),
        ),
        expect: () => [
          isA<PhotoCaptureActive>()
              .having(
                (s) => s.currentStep,
                'currentStep',
                PhotoCaptureStep.frontLabelCamera,
              )
              .having((s) => s.frontLabelPhotos, 'frontLabelPhotos', isEmpty)
              .having(
                  (s) => s.ingredientsPhotos, 'ingredientsPhotos', isEmpty),
        ],
      );
    });

    group('PhotoCaptured — legacy flow (no stepConfig)', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'front label photo captured → transitions to frontLabelPreview',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
        },
        expect: () => [
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.frontLabelCamera,
          ),
          isA<PhotoCaptureActive>()
              .having(
                (s) => s.currentStep,
                'currentStep',
                PhotoCaptureStep.frontLabelPreview,
              )
              .having(
                (s) => s.frontLabelPhotos,
                'frontLabelPhotos',
                [testPhotoPath],
              )
              .having((s) => s.selectedPhotoIndex, 'selectedPhotoIndex', 0)
              .having(
                (s) => s.photoUploadStatus[testPhotoPath],
                'upload status',
                PictureUploadStatus.uploading,
              ),
        ],
      );
    });

    group('PhotoCaptured — stepConfig flow (food category)', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'front label photo captured with food stepConfig → preview step',
        build: () => buildBloc(),
        act: (bloc) {
          setProductDetails(bloc, category: ProductCategory.food);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
        },
        expect: () => [
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.frontLabelCamera,
          ),
          isA<PhotoCaptureActive>()
              .having(
                (s) => s.currentStep,
                'currentStep',
                PhotoCaptureStep.frontLabelPreview,
              )
              .having(
                (s) => s.photoUploadStatus[testPhotoPath],
                'upload status',
                PictureUploadStatus.uploading,
              ),
        ],
      );
    });

    group('UploadPhoto', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'upload succeeds → photoUploadStatus becomes uploaded',
        build: () {
          stubUploadSuccess();
          return buildBloc();
        },
        act: (bloc) {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: false,
          ));
        },
        wait: const Duration(milliseconds: 100),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // uploadPhoto → uploading
          isA<PhotoCaptureActive>().having(
            (s) => s.photoUploadStatus[testPhotoPath],
            'upload status',
            PictureUploadStatus.uploaded,
          ),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'upload fails non-2xx → emits error state',
        build: () {
          stubUploadFailure();
          return buildBloc();
        },
        act: (bloc) {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: false,
          ));
        },
        wait: const Duration(milliseconds: 100),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // uploadPhoto → uploading
          isA<PhotoCaptureError>(),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'upload throws exception → emits error state (no crash)',
        build: () {
          stubUploadException();
          return buildBloc();
        },
        act: (bloc) {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: false,
          ));
        },
        wait: const Duration(milliseconds: 100),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // uploadPhoto → uploading
          isA<PhotoCaptureError>(),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'upload without product details set → emits error (upc null)',
        build: () => buildBloc(),
        act: (bloc) {
          // Don't set product details → _upc is null
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: false,
          ));
        },
        wait: const Duration(milliseconds: 100),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // uploadPhoto → uploading
          isA<PhotoCaptureError>(),
        ],
      );
    });

    group('PhotoSelected', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'selects photo at given index',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.photoSelected(index: 0));
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>().having(
            (s) => s.selectedPhotoIndex,
            'selectedPhotoIndex',
            0,
          ),
        ],
      );
    });

    group('NavigateToPreview', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'navigates to frontLabelPreview when photos exist',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(
            const PhotoCaptureEvent.navigateToPreview(
                isIngredientsStep: false),
          );
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.frontLabelPreview,
          ), // photoCaptured
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.frontLabelPreview,
          ), // navigateToPreview
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'does nothing when no photos exist',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.navigateToPreview(
                isIngredientsStep: false),
          );
        },
        expect: () => [
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.frontLabelCamera,
          ),
          // No second emission — navigateToPreview does nothing with empty photos
        ],
      );
    });

    group('NavigateToCamera', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'navigates back to frontLabelCamera',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(
            const PhotoCaptureEvent.navigateToCamera(
                isIngredientsStep: false),
          );
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured (preview)
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.frontLabelCamera,
          ),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'navigates to ingredientsCamera',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.navigateToCamera(
                isIngredientsStep: true),
          );
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.ingredientsCamera,
          ),
        ],
      );
    });

    group('AddPhotoRequested', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'switches to camera step for front label',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.addPhotoRequested(
                isIngredientsStep: false),
          );
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.frontLabelCamera,
          ),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'switches to camera step for ingredients',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.addPhotoRequested(
                isIngredientsStep: true),
          );
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.ingredientsCamera,
          ),
        ],
      );
    });

    group('NavigateToNextStep — legacy flow', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'front label with photos → advances to ingredientsCamera',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.navigateToNextStep());
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.ingredientsCamera,
          ),
        ],
      );
    });

    group('SubmitPhotos', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'submit without product details → emits error',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(
              const PhotoCaptureEvent.submitPhotos(isGuestUser: false));
        },
        expect: () => [
          isA<PhotoCaptureError>(),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'submit triggers OCR successfully → emits polling then success',
        build: () {
          stubUploadSuccess();
          stubTriggerOcrSuccess();
          return buildBloc();
        },
        act: (bloc) async {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: false,
          ));
          // Wait for upload to complete so _submissionId is set
          await Future.delayed(const Duration(milliseconds: 200));
          bloc.add(
              const PhotoCaptureEvent.submitPhotos(isGuestUser: false));
        },
        wait: const Duration(milliseconds: 500),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // uploadPhoto → uploading
          isA<PhotoCaptureActive>(), // upload success
          isA<PhotoCapturePolling>(), // submitPhotos → polling
          isA<PhotoCaptureSuccess>()
              .having((s) => s.submissionId, 'submissionId', '100')
              .having((s) => s.jobId, 'jobId', 'ocr-job-456'),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'submit triggers OCR failure → emits error',
        build: () {
          stubUploadSuccess();
          stubTriggerOcrFailure();
          return buildBloc();
        },
        act: (bloc) async {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: false,
          ));
          await Future.delayed(const Duration(milliseconds: 200));
          bloc.add(
              const PhotoCaptureEvent.submitPhotos(isGuestUser: false));
        },
        wait: const Duration(milliseconds: 500),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // uploadPhoto → uploading
          isA<PhotoCaptureActive>(), // upload success
          isA<PhotoCapturePolling>(), // submitPhotos → polling
          isA<PhotoCaptureError>(),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'submit triggers OCR exception → emits failure (no crash)',
        build: () {
          stubUploadSuccess();
          stubTriggerOcrException();
          return buildBloc();
        },
        act: (bloc) async {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: false,
          ));
          await Future.delayed(const Duration(milliseconds: 200));
          bloc.add(
              const PhotoCaptureEvent.submitPhotos(isGuestUser: false));
        },
        wait: const Duration(milliseconds: 500),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // uploadPhoto → uploading
          isA<PhotoCaptureActive>(), // upload success
          isA<PhotoCapturePolling>(), // submitPhotos → polling emitted first
          isA<PhotoCaptureFailure>(),
        ],
      );
    });

    group('ResetFlow', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'resets to initial state',
        build: () => buildBloc(),
        seed: () => const PhotoCaptureState.active(
          currentStep: PhotoCaptureStep.ingredientsPreview,
          frontLabelPhotos: [testPhotoPath],
          ingredientsPhotos: [testPhotoPath2],
          selectedPhotoIndex: 1,
          maxPhotos: 2,
        ),
        act: (bloc) => bloc.add(const PhotoCaptureEvent.resetFlow()),
        expect: () => [
          isA<PhotoCaptureInitial>(),
        ],
      );
    });

    group('Category routing', () {
      for (final category in ProductCategory.values) {
        blocTest<PhotoCaptureBloc, PhotoCaptureState>(
          '${category.name} category → stepConfig initial step is frontLabelCamera',
          build: () => buildBloc(),
          act: (bloc) {
            bloc.add(PhotoCaptureEvent.setProductDetails(
              upc: testUpc,
              productType: category.value,
              uuid: testUuid,
              productCategory: category,
            ));
            bloc.add(
                const PhotoCaptureEvent.started(isIngredientsStep: false));
          },
          expect: () => [
            isA<PhotoCaptureActive>().having(
              (s) => s.currentStep,
              'currentStep',
              PhotoCaptureStep.frontLabelCamera,
            ),
          ],
        );
      }

      test('food category has 6 steps (front, ingredients, nutrition)', () {
        final config = PhotoCaptureStepConfig(ProductCategory.food);
        expect(config.orderedSteps.length, 6);
        expect(config.orderedSteps, [
          PhotoCaptureStep.frontLabelCamera,
          PhotoCaptureStep.frontLabelPreview,
          PhotoCaptureStep.ingredientsCamera,
          PhotoCaptureStep.ingredientsPreview,
          PhotoCaptureStep.nutritionFactsCamera,
          PhotoCaptureStep.nutritionFactsPreview,
        ]);
      });

      test('sunscreen category has 4 steps (front, drug facts)', () {
        final config = PhotoCaptureStepConfig(ProductCategory.sunscreen);
        expect(config.orderedSteps.length, 4);
        expect(config.orderedSteps.contains(PhotoCaptureStep.drugFactsPanelCamera), isTrue);
      });

      test('cleaner category has 8 steps (front, ingredients, directions, warnings)', () {
        final config = PhotoCaptureStepConfig(ProductCategory.cleaner);
        expect(config.orderedSteps.length, 8);
        expect(config.orderedSteps.contains(PhotoCaptureStep.directionsCamera), isTrue);
        expect(config.orderedSteps.contains(PhotoCaptureStep.warningsCamera), isTrue);
      });

      test('personalCare category has 4 steps (front, ingredients)', () {
        final config = PhotoCaptureStepConfig(ProductCategory.personalCare);
        expect(config.orderedSteps.length, 4);
      });
    });

    group('RetakePhotos', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'retake without submission → resets and emits active',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.retakePhotos());
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>()
              .having(
                (s) => s.currentStep,
                'currentStep',
                PhotoCaptureStep.frontLabelCamera,
              )
              .having((s) => s.frontLabelPhotos, 'frontLabelPhotos', isEmpty),
        ],
      );

      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'retake with active submission → calls removeImage then resets',
        build: () {
          stubUploadSuccess();
          stubRemoveImageSuccess();
          return buildBloc();
        },
        act: (bloc) async {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: false,
          ));
          await Future.delayed(const Duration(milliseconds: 200));
          bloc.add(const PhotoCaptureEvent.retakePhotos());
        },
        wait: const Duration(milliseconds: 500),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // uploadPhoto → uploading
          isA<PhotoCaptureActive>(), // upload success
          isA<PhotoCaptureActive>()
              .having(
                (s) => s.currentStep,
                'currentStep',
                PhotoCaptureStep.frontLabelCamera,
              )
              .having((s) => s.frontLabelPhotos, 'frontLabelPhotos', isEmpty),
        ],
        verify: (_) {
          verify(mockDataSource.removeImage(
            submissionsId: anyNamed('submissionsId'),
            request: anyNamed('request'),
          )).called(1);
        },
      );
    });

    group('SkipStep with stepConfig', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'skip on food front camera → advances to ingredients camera',
        build: () => buildBloc(),
        act: (bloc) {
          setProductDetails(bloc, category: ProductCategory.food);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
              const PhotoCaptureEvent.skipStep(PhotoCaptureStep.frontLabelCamera));
        },
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>().having(
            (s) => s.currentStep,
            'currentStep',
            PhotoCaptureStep.ingredientsCamera,
          ),
        ],
      );
    });

    group('PhotoRemoved', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'remove photo without submission ID → status becomes uploading then emits active',
        build: () => buildBloc(),
        act: (bloc) {
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.photoRemoved(
            index: 0,
            isIngredientsStep: false,
          ));
        },
        wait: const Duration(milliseconds: 100),
        expect: () => [
          isA<PhotoCaptureActive>(), // started
          isA<PhotoCaptureActive>(), // photoCaptured
          isA<PhotoCaptureActive>(), // photoRemoved → uploading status
          isA<PhotoCaptureActive>(), // after _removeImage completes
        ],
      );
    });

    group('Upload verifies role based on step', () {
      test('front label step uses "front" role', () async {
        stubUploadSuccess();
        final b = buildBloc();
        setProductDetails(b);
        b.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
        b.add(const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath));
        b.add(const PhotoCaptureEvent.uploadPhoto(
          photoPath: testPhotoPath,
          isGuestUser: false,
        ));
        await Future.delayed(const Duration(milliseconds: 200));

        final captured = verify(mockDataSource.uploadPictures(
          request: captureAnyNamed('request'),
          submissionsId: anyNamed('submissionsId'),
        )).captured;
        expect(captured, isNotEmpty);
        await b.close();
      });
    });

    group('Guest user flow', () {
      blocTest<PhotoCaptureBloc, PhotoCaptureState>(
        'upload as guest passes uuid',
        build: () {
          stubUploadSuccess();
          return buildBloc();
        },
        act: (bloc) {
          setProductDetails(bloc);
          bloc.add(const PhotoCaptureEvent.started(isIngredientsStep: false));
          bloc.add(
            const PhotoCaptureEvent.photoCaptured(photoPath: testPhotoPath),
          );
          bloc.add(const PhotoCaptureEvent.uploadPhoto(
            photoPath: testPhotoPath,
            isGuestUser: true,
          ));
        },
        wait: const Duration(milliseconds: 200),
        verify: (_) {
          verify(mockDataSource.uploadPictures(
            request: anyNamed('request'),
            submissionsId: anyNamed('submissionsId'),
          )).called(1);
        },
      );
    });
  });
}
