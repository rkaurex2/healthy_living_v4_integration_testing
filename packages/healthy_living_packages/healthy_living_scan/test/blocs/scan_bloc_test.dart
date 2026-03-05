import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

void main() {
  late MockSessionRepository mockSessionRepository;
  late MockSearchRepository mockSearchRepository;
  late MockScanAnalytics mockScanAnalytics;
  late MockKeyValueStorage mockKeyValueStorage;

  const String testUpcCode = '012345678905';
  const String hasSeenBarcodeKey = 'has_seen_barcode_intro';

  final testProduct = GeneralProductListItemUIModel(
    productId: 42,
    imageUrl: 'https://example.com/product.jpg',
    brandName: 'EWG Brand',
    productName: 'Safe Shampoo',
    productType: 'beauty',
    isEWGVerified: true,
    score: '1',
    categoryType: 'cosmetics',
  );

  ScanBloc buildBloc() => ScanBloc(
        sessionRepository: mockSessionRepository,
        searchRepository: mockSearchRepository,
        scanAnalytics: mockScanAnalytics,
        keyValueStorage: mockKeyValueStorage,
      );

  setUp(() {
    mockSessionRepository = MockSessionRepository();
    mockSearchRepository = MockSearchRepository();
    mockScanAnalytics = MockScanAnalytics();
    mockKeyValueStorage = MockKeyValueStorage();

    // Default stubs for analytics (fire-and-forget, no return value needed)
    when(
      mockScanAnalytics.logBarcodeSearch(searchTerm: anyNamed('searchTerm')),
    ).thenAnswer((_) async {});
    when(
      mockScanAnalytics.logScanFail(
        searchTerm: anyNamed('searchTerm'),
        reason: anyNamed('reason'),
      ),
    ).thenAnswer((_) async {});
    when(
      mockScanAnalytics.logBarcodeSearchResult(
        searchTerm: anyNamed('searchTerm'),
        resultCount: anyNamed('resultCount'),
        product: anyNamed('product'),
      ),
    ).thenAnswer((_) async {});
  });

  group('ScanBloc', () {
    test('initial state is ScanInitial', () {
      when(mockSessionRepository.getIsAuthenticated())
          .thenAnswer((_) async => false);
      expect(buildBloc().state, isA<ScanInitial>());
    });

    group('ScanInitialized', () {
      blocTest<ScanBloc, ScanState>(
        'emits ScanInitial and sets isAuthenticated=true when user is authenticated',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => true);
          return buildBloc();
        },
        act: (bloc) => bloc.add(const ScanEvent.scanInitialized()),
        expect: () => [isA<ScanInitial>()],
        verify: (bloc) => expect(bloc.isAuthenticated, isTrue),
      );

      blocTest<ScanBloc, ScanState>(
        'emits ScanInitial and sets isAuthenticated=false when user is not authenticated',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          return buildBloc();
        },
        act: (bloc) => bloc.add(const ScanEvent.scanInitialized()),
        expect: () => [isA<ScanInitial>()],
        verify: (bloc) => expect(bloc.isAuthenticated, isFalse),
      );

      blocTest<ScanBloc, ScanState>(
        'treats null auth as false',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => null);
          return buildBloc();
        },
        act: (bloc) => bloc.add(const ScanEvent.scanInitialized()),
        expect: () => [isA<ScanInitial>()],
        verify: (bloc) => expect(bloc.isAuthenticated, isFalse),
      );
    });

    group('ScanProductSearched', () {
      blocTest<ScanBloc, ScanState>(
        'emits [ScanProductSearchInProgress, ScanProductSearchSuccess] on successful barcode search',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(
            mockSearchRepository.searchProductByBarcode(
              searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
            ),
          ).thenAnswer(
            (_) async => NetworkResponse<GeneralProductListItemUIModel?>(
              data: testProduct,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(ScanEvent.scanProductSearched(upcCode: testUpcCode)),
        expect: () => [
          isA<ScanProductSearchInProgress>(),
          isA<ScanProductSearchSuccess>(),
        ],
        verify: (bloc) {
          final state = bloc.state as ScanProductSearchSuccess;
          expect(state.productDetail?.productId, equals(42));
          expect(state.productDetail?.brandName, equals('EWG Brand'));
        },
      );

      blocTest<ScanBloc, ScanState>(
        'emits [ScanProductSearchInProgress, ScanProductSearchSuccess(null)] when product not found (null data)',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(
            mockSearchRepository.searchProductByBarcode(
              searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
            ),
          ).thenAnswer(
            (_) async => NetworkResponse<GeneralProductListItemUIModel?>(
              data: null,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(ScanEvent.scanProductSearched(upcCode: testUpcCode)),
        expect: () => [
          isA<ScanProductSearchInProgress>(),
          isA<ScanProductSearchSuccess>(),
        ],
        verify: (bloc) {
          final state = bloc.state as ScanProductSearchSuccess;
          expect(state.productDetail, isNull);
        },
      );

      blocTest<ScanBloc, ScanState>(
        'emits [ScanProductSearchInProgress, ScanProductSearchFailure] on API error (non-2xx)',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(
            mockSearchRepository.searchProductByBarcode(
              searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
            ),
          ).thenAnswer(
            (_) async => NetworkResponse<GeneralProductListItemUIModel?>(
              data: null,
              statusCode: 404,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(ScanEvent.scanProductSearched(upcCode: testUpcCode)),
        expect: () => [
          isA<ScanProductSearchInProgress>(),
          isA<ScanProductSearchFailure>(),
        ],
      );

      blocTest<ScanBloc, ScanState>(
        'emits [ScanProductSearchInProgress, ScanProductSearchFailure] when repository throws',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(
            mockSearchRepository.searchProductByBarcode(
              searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
            ),
          ).thenThrow(Exception('Network unavailable'));
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(ScanEvent.scanProductSearched(upcCode: testUpcCode)),
        expect: () => [
          isA<ScanProductSearchInProgress>(),
          isA<ScanProductSearchFailure>(),
        ],
      );

      blocTest<ScanBloc, ScanState>(
        'logs barcode search analytics on product search',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(
            mockSearchRepository.searchProductByBarcode(
              searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
            ),
          ).thenAnswer(
            (_) async => NetworkResponse<GeneralProductListItemUIModel?>(
              data: testProduct,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(ScanEvent.scanProductSearched(upcCode: testUpcCode)),
        verify: (_) {
          verify(
            mockScanAnalytics.logBarcodeSearch(searchTerm: testUpcCode),
          ).called(1);
        },
      );

      blocTest<ScanBloc, ScanState>(
        'logs scan failure analytics when search fails',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(
            mockSearchRepository.searchProductByBarcode(
              searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
            ),
          ).thenAnswer(
            (_) async => NetworkResponse<GeneralProductListItemUIModel?>(
              data: null,
              statusCode: 500,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(ScanEvent.scanProductSearched(upcCode: testUpcCode)),
        verify: (_) {
          verify(
            mockScanAnalytics.logScanFail(
              searchTerm: testUpcCode,
              reason: anyNamed('reason'),
            ),
          ).called(1);
        },
      );
    });

    group('ScanToggleTorch', () {
      blocTest<ScanBloc, ScanState>(
        'emits ScanToggledTorch(isTorchOn: true) when torch turned on',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(const ScanEvent.toggleTorch(isTorchOn: true)),
        expect: () => [
          isA<ScanToggledTorch>().having(
            (s) => s.isTorchOn,
            'isTorchOn',
            isTrue,
          ),
        ],
      );

      blocTest<ScanBloc, ScanState>(
        'emits ScanToggledTorch(isTorchOn: false) when torch turned off',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(const ScanEvent.toggleTorch(isTorchOn: false)),
        expect: () => [
          isA<ScanToggledTorch>().having(
            (s) => s.isTorchOn,
            'isTorchOn',
            isFalse,
          ),
        ],
      );
    });

    group('ScanCheckIntroDialogStatus', () {
      blocTest<ScanBloc, ScanState>(
        'emits ScanIntroDialogHide when user has already seen intro',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(mockKeyValueStorage.getBool(hasSeenBarcodeKey))
              .thenAnswer((_) async => true);
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(const ScanEvent.checkIntroDialogStatus()),
        expect: () => [isA<ScanIntroDialogHide>()],
      );

      blocTest<ScanBloc, ScanState>(
        'emits ScanIntroDialogShow when user has NOT seen intro',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(mockKeyValueStorage.getBool(hasSeenBarcodeKey))
              .thenAnswer((_) async => false);
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(const ScanEvent.checkIntroDialogStatus()),
        expect: () => [isA<ScanIntroDialogShow>()],
      );

      blocTest<ScanBloc, ScanState>(
        'emits ScanIntroDialogShow when key returns null (first launch)',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(mockKeyValueStorage.getBool(hasSeenBarcodeKey))
              .thenAnswer((_) async => null);
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(const ScanEvent.checkIntroDialogStatus()),
        expect: () => [isA<ScanIntroDialogShow>()],
      );
    });

    group('ScanMarkIntroDialogSeen', () {
      blocTest<ScanBloc, ScanState>(
        'saves seen flag and emits ScanIntroDialogHide',
        build: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => false);
          when(mockKeyValueStorage.setBool(hasSeenBarcodeKey, true))
              .thenAnswer((_) async => true);
          return buildBloc();
        },
        act: (bloc) =>
            bloc.add(const ScanEvent.markIntroDialogSeen()),
        expect: () => [isA<ScanIntroDialogHide>()],
        verify: (_) {
          verify(mockKeyValueStorage.setBool(hasSeenBarcodeKey, true))
              .called(1);
        },
      );
    });
  });
}
