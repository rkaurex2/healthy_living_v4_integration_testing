import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_home/src/data/models/recent_activity/recent_activity_response_dto.dart';
import 'package:healthy_living_home/src/data/repository/default_home_repository.dart';
import 'package:healthy_living_home/src/domain/data_source/home_remote_data_source.dart';
import 'package:healthy_living_home/src/domain/models/home_your_list_request.dart';
import 'package:healthy_living_home/src/domain/models/just_verified_request_model.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([HomeRemoteDataSource])
import 'home_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Shared mock – lives at the top level so the singleton always references
// the same instance.  We call reset() in setUp() to clear stubs between tests.
// ---------------------------------------------------------------------------

final MockHomeRemoteDataSource mockDataSource = MockHomeRemoteDataSource();

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late HomeRepository repository;

  setUpAll(() {
    // Initialise the singleton once; every subsequent factory call returns
    // this same instance that holds our shared mockDataSource.
    repository = DefaultHomeRepository(dataSource: mockDataSource);
  });

  setUp(() {
    // Clear all stubs / interaction history so each test starts clean.
    reset(mockDataSource);
  });

  // -------------------------------------------------------------------------
  // getYourLists
  // -------------------------------------------------------------------------
  group('getYourLists', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getYourLists(
        homeYourListRequest: anyNamed('homeYourListRequest'),
      )).thenAnswer(
        (_) async => const NetworkResponse<List<UserListDTO>?>(
          data: [],
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getYourLists(
        homeYourListRequest: const HomeYourListRequest(),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct request', () async {
      const request = HomeYourListRequest(sortBy: 'name', sortOrder: 'asc');

      when(mockDataSource.getYourLists(
        homeYourListRequest: anyNamed('homeYourListRequest'),
      )).thenAnswer(
        (_) async => const NetworkResponse<List<UserListDTO>?>(
          data: [],
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.getYourLists(homeYourListRequest: request);

      verify(mockDataSource.getYourLists(homeYourListRequest: request))
          .called(1);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.getYourLists(
        homeYourListRequest: anyNamed('homeYourListRequest'),
      )).thenThrow(Exception('network error'));

      expect(
        () => repository.getYourLists(
          homeYourListRequest: const HomeYourListRequest(),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // createYourList
  // -------------------------------------------------------------------------
  group('createYourList', () {
    test('returns 200 on success', () async {
      when(mockDataSource.createYourList(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDetailDTO?>(
          data: UserListDetailDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.createYourList(
        request: const CreateListRequestModel(name: 'Test List'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });
  });

  // -------------------------------------------------------------------------
  // getRecentViewList
  // -------------------------------------------------------------------------
  group('getRecentViewList', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getRecentViewList()).thenAnswer(
        (_) async => const NetworkResponse<RecentActivityResponseDTO?>(
          data: RecentActivityResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getRecentViewList();

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source exactly once', () async {
      when(mockDataSource.getRecentViewList()).thenAnswer(
        (_) async => const NetworkResponse<RecentActivityResponseDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.getRecentViewList();

      verify(mockDataSource.getRecentViewList()).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // getJustVerified
  // -------------------------------------------------------------------------
  group('getJustVerified', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getJustVerified(
        justVerifiedRequestModel: anyNamed('justVerifiedRequestModel'),
      )).thenAnswer(
        (_) async => const NetworkResponse<SearchResponseDTO?>(
          data: SearchResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getJustVerified(
        justVerifiedRequestModel: const JustVerifiedRequestModel(),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.getJustVerified(
        justVerifiedRequestModel: anyNamed('justVerifiedRequestModel'),
      )).thenThrow(Exception('error'));

      expect(
        () => repository.getJustVerified(
          justVerifiedRequestModel: const JustVerifiedRequestModel(),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
