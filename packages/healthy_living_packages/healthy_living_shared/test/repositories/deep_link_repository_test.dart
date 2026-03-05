// Deep link repository unit tests.
//
// DefaultDeepLinkRepository uses a static singleton (`_instance ??=`).
// We create the mock data source ONCE at the top level, initialise the
// singleton in setUpAll(), and reset() the mock in setUp() so that stubs
// are clean for every test.
//
// Uses manual mock (no build_runner required) because we cannot run
// code generation in this environment.

import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/repository/default_deep_link_repository.dart';
import 'package:healthy_living_shared/src/domain/data_source/deep_link_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/deep_link_product_request.dart';
import 'package:healthy_living_shared/src/domain/repository/deep_link_repository.dart';
import 'package:mockito/mockito.dart';

// ---------------------------------------------------------------------------
// Manual mock for DeepLinkRemoteDataSource
// ---------------------------------------------------------------------------

class MockDeepLinkRemoteDataSource extends Mock
    implements DeepLinkRemoteDataSource {
  @override
  Future<bool> getProductDeeplink(
    DeepLinkProductRequest? productRequest, {
    String? messageText,
    String? messageTitle,
    String? sharingTitle,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #getProductDeeplink,
          [productRequest],
          {
            #messageText: messageText,
            #messageTitle: messageTitle,
            #sharingTitle: sharingTitle,
          },
        ),
        returnValue: Future<bool>.value(false),
        returnValueForMissingStub: Future<bool>.value(false),
      ) as Future<bool>;

  @override
  Future<bool> getMyListDeeplink({
    String? listId,
    String? listName,
    String? messageText,
    String? messageTitle,
    String? sharingTitle,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #getMyListDeeplink,
          [],
          {
            #listId: listId,
            #listName: listName,
            #messageText: messageText,
            #messageTitle: messageTitle,
            #sharingTitle: sharingTitle,
          },
        ),
        returnValue: Future<bool>.value(false),
        returnValueForMissingStub: Future<bool>.value(false),
      ) as Future<bool>;
}

// ---------------------------------------------------------------------------
// Shared mock – created once, reused across all tests so the singleton
// always references this exact instance.
// ---------------------------------------------------------------------------

final MockDeepLinkRemoteDataSource _dataSource =
    MockDeepLinkRemoteDataSource();

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

DeepLinkProductRequest _productRequest({
  String productId = 'prod-123',
  String productName = 'Test Product',
  String? photoUrl = 'https://example.com/photo.jpg',
  ProductCategory category = ProductCategory.food,
  bool isVerified = true,
}) {
  return DeepLinkProductRequest(
    productId: productId,
    productName: productName,
    photoUrl: photoUrl,
    category: category,
    isVerified: isVerified,
  );
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late DeepLinkRepository repo;

  // Initialise the singleton once with the shared mock.
  setUpAll(() {
    repo = DefaultDeepLinkRepository(localDataSource: _dataSource);
  });

  // Reset the mock before each test so stubs don't leak between tests.
  setUp(() {
    reset(_dataSource);
  });

  // =========================================================================
  // getProductDeeplink
  // =========================================================================

  group('getProductDeeplink', () {
    // -----------------------------------------------------------------------
    // Happy path
    // -----------------------------------------------------------------------
    group('success', () {
      test('returns true when data source returns true', () async {
        when(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        final result = await repo.getProductDeeplink(
          _productRequest(),
          messageText: 'Check this out!',
          messageTitle: 'Share Product',
          sharingTitle: 'EWG Healthy Living',
        );

        expect(result, isTrue);
      });

      test('returns false when data source returns false', () async {
        when(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => false);

        final result = await repo.getProductDeeplink(
          _productRequest(),
          messageText: 'Check this out!',
          messageTitle: 'Share Product',
          sharingTitle: 'EWG Healthy Living',
        );

        expect(result, isFalse);
      });

      test('calls data source exactly once', () async {
        when(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getProductDeeplink(
          _productRequest(),
          messageText: 'msg',
          messageTitle: 'title',
          sharingTitle: 'share',
        );

        verify(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).called(1);
      });
    });

    // -----------------------------------------------------------------------
    // Parameter delegation
    // -----------------------------------------------------------------------
    group('parameter delegation', () {
      test('passes productRequest to data source', () async {
        final request = _productRequest(
          productId: 'specific-id-99',
          productName: 'Specific Product',
        );

        when(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getProductDeeplink(
          request,
          messageText: 'text',
          messageTitle: 'title',
          sharingTitle: 'share',
        );

        final captured = verify(_dataSource.getProductDeeplink(
          captureAny,
          messageText: captureAnyNamed('messageText'),
          messageTitle: captureAnyNamed('messageTitle'),
          sharingTitle: captureAnyNamed('sharingTitle'),
        )).captured;

        final capturedRequest = captured[0] as DeepLinkProductRequest;
        expect(capturedRequest.productId, 'specific-id-99');
        expect(capturedRequest.productName, 'Specific Product');
      });

      test('passes messageText to data source', () async {
        when(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getProductDeeplink(
          _productRequest(),
          messageText: 'Custom message text',
          messageTitle: 'title',
          sharingTitle: 'share',
        );

        final captured = verify(_dataSource.getProductDeeplink(
          captureAny,
          messageText: captureAnyNamed('messageText'),
          messageTitle: captureAnyNamed('messageTitle'),
          sharingTitle: captureAnyNamed('sharingTitle'),
        )).captured;

        expect(captured[1], 'Custom message text');
      });

      test('passes messageTitle to data source', () async {
        when(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getProductDeeplink(
          _productRequest(),
          messageText: 'text',
          messageTitle: 'Custom Title',
          sharingTitle: 'share',
        );

        final captured = verify(_dataSource.getProductDeeplink(
          captureAny,
          messageText: captureAnyNamed('messageText'),
          messageTitle: captureAnyNamed('messageTitle'),
          sharingTitle: captureAnyNamed('sharingTitle'),
        )).captured;

        expect(captured[2], 'Custom Title');
      });

      test('passes sharingTitle to data source', () async {
        when(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getProductDeeplink(
          _productRequest(),
          messageText: 'text',
          messageTitle: 'title',
          sharingTitle: 'Custom Share Title',
        );

        final captured = verify(_dataSource.getProductDeeplink(
          captureAny,
          messageText: captureAnyNamed('messageText'),
          messageTitle: captureAnyNamed('messageTitle'),
          sharingTitle: captureAnyNamed('sharingTitle'),
        )).captured;

        expect(captured[3], 'Custom Share Title');
      });
    });

    // -----------------------------------------------------------------------
    // Exception propagation
    // -----------------------------------------------------------------------
    group('data source throws', () {
      test('propagates Exception from data source', () async {
        when(_dataSource.getProductDeeplink(
          any,
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenThrow(Exception('Branch SDK error'));

        expect(
          () => repo.getProductDeeplink(
            _productRequest(),
            messageText: 'text',
            messageTitle: 'title',
            sharingTitle: 'share',
          ),
          throwsA(isA<Exception>()),
        );
      });
    });
  });

  // =========================================================================
  // getMyListDeeplink
  // =========================================================================

  group('getMyListDeeplink', () {
    // -----------------------------------------------------------------------
    // Happy path
    // -----------------------------------------------------------------------
    group('success', () {
      test('returns true when data source returns true', () async {
        when(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        final result = await repo.getMyListDeeplink(
          listId: 'list-001',
          listName: 'My Favorites',
          messageText: 'Check out my list!',
          messageTitle: 'Share List',
          sharingTitle: 'EWG Healthy Living',
        );

        expect(result, isTrue);
      });

      test('returns false when data source returns false', () async {
        when(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => false);

        final result = await repo.getMyListDeeplink(
          listId: 'list-001',
          listName: 'My Favorites',
          messageText: 'Check out my list!',
          messageTitle: 'Share List',
          sharingTitle: 'EWG Healthy Living',
        );

        expect(result, isFalse);
      });

      test('calls data source exactly once', () async {
        when(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getMyListDeeplink(
          listId: 'list-001',
          listName: 'My Favorites',
          messageText: 'msg',
          messageTitle: 'title',
          sharingTitle: 'share',
        );

        verify(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).called(1);
      });
    });

    // -----------------------------------------------------------------------
    // Parameter delegation
    // -----------------------------------------------------------------------
    group('parameter delegation', () {
      test('passes listId to data source', () async {
        when(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getMyListDeeplink(
          listId: 'specific-list-id',
          listName: 'name',
          messageText: 'text',
          messageTitle: 'title',
          sharingTitle: 'share',
        );

        final captured = verify(_dataSource.getMyListDeeplink(
          listId: captureAnyNamed('listId'),
          listName: captureAnyNamed('listName'),
          messageText: captureAnyNamed('messageText'),
          messageTitle: captureAnyNamed('messageTitle'),
          sharingTitle: captureAnyNamed('sharingTitle'),
        )).captured;

        expect(captured[0], 'specific-list-id');
      });

      test('passes listName to data source', () async {
        when(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getMyListDeeplink(
          listId: 'id',
          listName: 'Organic Products Only',
          messageText: 'text',
          messageTitle: 'title',
          sharingTitle: 'share',
        );

        final captured = verify(_dataSource.getMyListDeeplink(
          listId: captureAnyNamed('listId'),
          listName: captureAnyNamed('listName'),
          messageText: captureAnyNamed('messageText'),
          messageTitle: captureAnyNamed('messageTitle'),
          sharingTitle: captureAnyNamed('sharingTitle'),
        )).captured;

        expect(captured[1], 'Organic Products Only');
      });

      test('passes messageText to data source', () async {
        when(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getMyListDeeplink(
          listId: 'id',
          listName: 'name',
          messageText: 'Custom message for list',
          messageTitle: 'title',
          sharingTitle: 'share',
        );

        final captured = verify(_dataSource.getMyListDeeplink(
          listId: captureAnyNamed('listId'),
          listName: captureAnyNamed('listName'),
          messageText: captureAnyNamed('messageText'),
          messageTitle: captureAnyNamed('messageTitle'),
          sharingTitle: captureAnyNamed('sharingTitle'),
        )).captured;

        expect(captured[2], 'Custom message for list');
      });

      test('passes messageTitle and sharingTitle to data source', () async {
        when(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenAnswer((_) async => true);

        await repo.getMyListDeeplink(
          listId: 'id',
          listName: 'name',
          messageText: 'text',
          messageTitle: 'My Title',
          sharingTitle: 'My Sharing Title',
        );

        final captured = verify(_dataSource.getMyListDeeplink(
          listId: captureAnyNamed('listId'),
          listName: captureAnyNamed('listName'),
          messageText: captureAnyNamed('messageText'),
          messageTitle: captureAnyNamed('messageTitle'),
          sharingTitle: captureAnyNamed('sharingTitle'),
        )).captured;

        expect(captured[3], 'My Title');
        expect(captured[4], 'My Sharing Title');
      });
    });

    // -----------------------------------------------------------------------
    // Exception propagation
    // -----------------------------------------------------------------------
    group('data source throws', () {
      test('propagates Exception from data source', () async {
        when(_dataSource.getMyListDeeplink(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          messageText: anyNamed('messageText'),
          messageTitle: anyNamed('messageTitle'),
          sharingTitle: anyNamed('sharingTitle'),
        )).thenThrow(Exception('Branch SDK error'));

        expect(
          () => repo.getMyListDeeplink(
            listId: 'list-001',
            listName: 'My List',
            messageText: 'text',
            messageTitle: 'title',
            sharingTitle: 'share',
          ),
          throwsA(isA<Exception>()),
        );
      });
    });
  });

  // =========================================================================
  // Singleton behavior
  // =========================================================================

  group('singleton', () {
    test('factory returns the same instance on repeated calls', () {
      final first = DefaultDeepLinkRepository(localDataSource: _dataSource);
      final second = DefaultDeepLinkRepository(localDataSource: _dataSource);
      expect(identical(first, second), isTrue);
    });
  });
}
