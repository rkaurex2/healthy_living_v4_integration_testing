import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const _testJobId = 'job-123-abc';

OcrProvisionalScoreResponseDTO _completedOcrResponse() =>
    const OcrProvisionalScoreResponseDTO(
      jobId: _testJobId,
      status: StringConstants.provisionalScoreCompleted,
      submissionId: 42,
    );

OcrProvisionalScoreResponseDTO _processingOcrResponse() =>
    const OcrProvisionalScoreResponseDTO(
      jobId: _testJobId,
      status: StringConstants.processing,
      submissionId: null,
    );

OcrProvisionalScoreResponseDTO _userEditsCompletedOcrResponse() =>
    const OcrProvisionalScoreResponseDTO(
      jobId: _testJobId,
      status: StringConstants.userEditsProvisionalScoreCompleted,
      submissionId: 42,
    );

OcrProvisionalScoreResponseDTO _fullCompletedOcrResponse() =>
    const OcrProvisionalScoreResponseDTO(
      jobId: _testJobId,
      status: StringConstants.ocrPollingCompleted,
      submissionId: 42,
    );

NetworkResponse<OcrProvisionalScoreResponseDTO?> _pollingSuccess({
  OcrProvisionalScoreResponseDTO? data,
}) =>
    NetworkResponse<OcrProvisionalScoreResponseDTO?>(
      data: data ?? _completedOcrResponse(),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<OcrProvisionalScoreResponseDTO?> _pollingNullDataResponse() =>
    const NetworkResponse<OcrProvisionalScoreResponseDTO?>(
      data: null,
      statusCode: 200,
      responseHeaders: {},
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockHistoryProductRepository mockRepository;

  setUp(() {
    mockRepository = MockHistoryProductRepository();
  });

  InstantHazardBloc buildBloc() =>
      InstantHazardBloc(repository: mockRepository);

  group('InstantHazardBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is InstantHazardInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<InstantHazardInitial>());
      bloc.close();
    });

    test('initial currentFindingsTab is 0', () {
      final bloc = buildBloc();
      expect(bloc.currentFindingsTab, 0);
      bloc.close();
    });

    test('initial ocrExtractedData is null', () {
      final bloc = buildBloc();
      expect(bloc.ocrExtractedData, isNull);
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // PollingOCR – success with provisionalScoreCompleted
    // -----------------------------------------------------------------------
    group('PollingOCR – success', () {
      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits [OCRPollingLoading, ocrPollingSuccess] when status is provisionalScoreCompleted',
        build: buildBloc,
        setUp: () {
          when(mockRepository.pollingOCRProvisionalScore(
            jobId: anyNamed('jobId'),
          )).thenAnswer(
            (_) async => _pollingSuccess(data: _completedOcrResponse()),
          );
        },
        act: (bloc) => bloc.add(
          const InstantHazardEvent.pollingOcr(
            jobId: _testJobId,
            productCategory: ProductCategory.food,
          ),
        ),
        expect: () => [
          isA<OCRPollingLoading>(),
          isA<OCRPollingSuccess>().having(
            (s) => s.productCategory,
            'productCategory',
            ProductCategory.food,
          ),
        ],
      );

      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits ocrPollingSuccess when status is userEditsProvisionalScoreCompleted',
        build: buildBloc,
        setUp: () {
          when(mockRepository.pollingOCRProvisionalScore(
            jobId: anyNamed('jobId'),
          )).thenAnswer(
            (_) async => _pollingSuccess(data: _userEditsCompletedOcrResponse()),
          );
        },
        act: (bloc) => bloc.add(
          const InstantHazardEvent.pollingOcr(
            jobId: _testJobId,
            productCategory: ProductCategory.personalCare,
          ),
        ),
        expect: () => [
          isA<OCRPollingLoading>(),
          isA<OCRPollingSuccess>().having(
            (s) => s.productCategory,
            'productCategory',
            ProductCategory.personalCare,
          ),
        ],
      );

      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits ocrPollingSuccess when status is completed',
        build: buildBloc,
        setUp: () {
          when(mockRepository.pollingOCRProvisionalScore(
            jobId: anyNamed('jobId'),
          )).thenAnswer(
            (_) async => _pollingSuccess(data: _fullCompletedOcrResponse()),
          );
        },
        act: (bloc) => bloc.add(
          const InstantHazardEvent.pollingOcr(
            jobId: _testJobId,
            productCategory: ProductCategory.food,
          ),
        ),
        expect: () => [
          isA<OCRPollingLoading>(),
          isA<OCRPollingSuccess>(),
        ],
      );

      blocTest<InstantHazardBloc, InstantHazardState>(
        'stores ocrExtractedData on success',
        build: buildBloc,
        setUp: () {
          when(mockRepository.pollingOCRProvisionalScore(
            jobId: anyNamed('jobId'),
          )).thenAnswer(
            (_) async => _pollingSuccess(data: _completedOcrResponse()),
          );
        },
        act: (bloc) => bloc.add(
          const InstantHazardEvent.pollingOcr(
            jobId: _testJobId,
            productCategory: ProductCategory.food,
          ),
        ),
        verify: (bloc) {
          expect(bloc.ocrExtractedData, isNotNull);
          expect(bloc.ocrExtractedData?.jobId, _testJobId);
        },
      );
    });

    // -----------------------------------------------------------------------
    // PollingOCR – not yet complete (keeps polling / only loading emitted)
    // -----------------------------------------------------------------------
    group('PollingOCR – not yet complete', () {
      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits only [OCRPollingLoading] when status is processing (no success)',
        build: buildBloc,
        setUp: () {
          when(mockRepository.pollingOCRProvisionalScore(
            jobId: anyNamed('jobId'),
          )).thenAnswer(
            (_) async => _pollingSuccess(data: _processingOcrResponse()),
          );
        },
        act: (bloc) => bloc.add(
          const InstantHazardEvent.pollingOcr(
            jobId: _testJobId,
            productCategory: ProductCategory.food,
          ),
        ),
        expect: () => [
          isA<OCRPollingLoading>(),
        ],
      );

      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits only [OCRPollingLoading] when response data is null',
        build: buildBloc,
        setUp: () {
          when(mockRepository.pollingOCRProvisionalScore(
            jobId: anyNamed('jobId'),
          )).thenAnswer((_) async => _pollingNullDataResponse());
        },
        act: (bloc) => bloc.add(
          const InstantHazardEvent.pollingOcr(
            jobId: _testJobId,
            productCategory: ProductCategory.food,
          ),
        ),
        expect: () => [
          isA<OCRPollingLoading>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // PollingOCR – failure
    // -----------------------------------------------------------------------
    group('PollingOCR – failure', () {
      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits [OCRPollingLoading, InstantHazarFailure] when repository throws',
        build: buildBloc,
        setUp: () {
          when(mockRepository.pollingOCRProvisionalScore(
            jobId: anyNamed('jobId'),
          )).thenThrow(Exception('Polling failed'));
        },
        act: (bloc) => bloc.add(
          const InstantHazardEvent.pollingOcr(
            jobId: _testJobId,
            productCategory: ProductCategory.food,
          ),
        ),
        expect: () => [
          isA<OCRPollingLoading>(),
          isA<InstantHazarFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );

      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits failure with NetworkConnectionException',
        build: buildBloc,
        setUp: () {
          when(mockRepository.pollingOCRProvisionalScore(
            jobId: anyNamed('jobId'),
          )).thenThrow(
            NetworkConnectionException(
              isTimeout: false,
              message: 'No internet',
              statusCode: null,
              originalError: null,
            ),
          );
        },
        act: (bloc) => bloc.add(
          const InstantHazardEvent.pollingOcr(
            jobId: _testJobId,
            productCategory: ProductCategory.food,
          ),
        ),
        expect: () => [
          isA<OCRPollingLoading>(),
          isA<InstantHazarFailure>().having(
            (s) => s.exception,
            'exception',
            isA<NetworkConnectionException>(),
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // FindingsTabChanged
    // -----------------------------------------------------------------------
    group('FindingsTabChanged', () {
      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits UpdateFindingsTab with correct tabIndex',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const InstantHazardEvent.findingsTabChanged(1)),
        expect: () => [
          isA<UpdateFindingsTab>().having(
            (s) => s.tabIndex,
            'tabIndex',
            1,
          ),
        ],
      );

      blocTest<InstantHazardBloc, InstantHazardState>(
        'updates currentFindingsTab property',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const InstantHazardEvent.findingsTabChanged(2)),
        verify: (bloc) {
          expect(bloc.currentFindingsTab, 2);
        },
      );

      blocTest<InstantHazardBloc, InstantHazardState>(
        'emits UpdateFindingsTab with index 0',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const InstantHazardEvent.findingsTabChanged(0)),
        expect: () => [
          isA<UpdateFindingsTab>().having(
            (s) => s.tabIndex,
            'tabIndex',
            0,
          ),
        ],
      );
    });
  });
}
