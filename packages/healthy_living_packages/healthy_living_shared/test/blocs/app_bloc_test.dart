import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/mockito.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Minimal valid JSON string that satisfies UserDataModel.fromJson.
const _userDataJson = '''
{
  "email": "test@example.com",
  "country": "US",
  "zip_code": "12345",
  "subscribe_newsletter": false
}
''';

/// Factory that wires up the AppBloc with all four mock dependencies.
AppBloc _makeBloc({
  required MockSessionRepository sessionRepo,
  required MockKeyValueStorage keyValueStorage,
  required MockUserDataRepository userDataRepo,
  required MockAnalyticsService analytics,
}) {
  return AppBloc(
    sessionRepository: sessionRepo,
    keyValueStorage: keyValueStorage,
    userDataRepository: userDataRepo,
    analytics: analytics,
  );
}

/// Stub the common async void calls that AppBloc always makes so tests do not
/// throw on unexpected interaction.  Individual tests can override these with
/// more specific stubs.
void _stubDefaults({
  required MockSessionRepository sessionRepo,
  required MockKeyValueStorage keyValueStorage,
  required MockUserDataRepository userDataRepo,
  required MockAnalyticsService analytics,
}) {
  when(sessionRepo.getIsAuthenticated()).thenAnswer((_) async => false);
  when(sessionRepo.removeUserTokens()).thenAnswer((_) async {});
  when(sessionRepo.getIsPremiumUser()).thenAnswer((_) async => false);
  when(sessionRepo.saveLogs(
    message: anyNamed('message'),
    saveToFile: anyNamed('saveToFile'),
  )).thenAnswer((_) async => true);
  when(userDataRepo.getUserData()).thenAnswer((_) async => null);
  when(keyValueStorage.getBool(any)).thenAnswer((_) async => null);
  when(keyValueStorage.getString(any)).thenAnswer((_) async => null);
  when(analytics.clearUser()).thenAnswer((_) async {});
  when(keyValueStorage.remove(any)).thenAnswer((_) async => true);
  when(sessionRepo.removeAccessToken()).thenAnswer((_) async {});
  when(sessionRepo.removeRefreshToken()).thenAnswer((_) async {});
  when(userDataRepo.remove(any)).thenAnswer((_) async => true);
  when(sessionRepo.removeIsAuthenticated()).thenAnswer((_) async {});
  when(sessionRepo.removeIsPremiumUser()).thenAnswer((_) async {});
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockSessionRepository sessionRepo;
  late MockKeyValueStorage keyValueStorage;
  late MockUserDataRepository userDataRepo;
  late MockAnalyticsService analytics;

  setUp(() {
    sessionRepo = MockSessionRepository();
    keyValueStorage = MockKeyValueStorage();
    userDataRepo = MockUserDataRepository();
    analytics = MockAnalyticsService();
    _stubDefaults(
      sessionRepo: sessionRepo,
      keyValueStorage: keyValueStorage,
      userDataRepo: userDataRepo,
      analytics: analytics,
    );
  });

  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('AppBloc – initial state', () {
    test('starts with AppInitial (splashInitial) state', () {
      final bloc = _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      );
      expect(bloc.state, isA<AppInitial>());
      bloc.close();
    });

    test('isAuthenticated is false before any event', () {
      final bloc = _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      );
      expect(bloc.isAuthenticated, isFalse);
      bloc.close();
    });

    test('isPremiumUser is false before any event', () {
      final bloc = _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      );
      expect(bloc.isPremiumUser, isFalse);
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // CheckAuthenticationStatus – not authenticated
  // -------------------------------------------------------------------------
  group('CheckAuthenticationStatus – unauthenticated', () {
    blocTest<AppBloc, AppState>(
      'emits AppAuthenticationStatus(isAuthenticated: false) when no session',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      expect: () => [
        isA<AppAuthenticationStatus>()
            .having((s) => s.isAuthenticated, 'isAuthenticated', isFalse),
      ],
    );

    blocTest<AppBloc, AppState>(
      'isFtUxCompletedStatus is false when key-value storage returns null',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      expect: () => [
        isA<AppAuthenticationStatus>()
            .having((s) => s.isFtUxCompletedStatus, 'isFtUxCompletedStatus', isFalse),
      ],
    );

    blocTest<AppBloc, AppState>(
      'removes user tokens when getIsAuthenticated returns null',
      build: () {
        when(sessionRepo.getIsAuthenticated()).thenAnswer((_) async => null);
        return _makeBloc(
          sessionRepo: sessionRepo,
          keyValueStorage: keyValueStorage,
          userDataRepo: userDataRepo,
          analytics: analytics,
        );
      },
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      verify: (_) {
        verify(sessionRepo.removeUserTokens()).called(1);
      },
    );

    blocTest<AppBloc, AppState>(
      'removes user tokens when getIsAuthenticated returns false',
      build: () {
        when(sessionRepo.getIsAuthenticated()).thenAnswer((_) async => false);
        return _makeBloc(
          sessionRepo: sessionRepo,
          keyValueStorage: keyValueStorage,
          userDataRepo: userDataRepo,
          analytics: analytics,
        );
      },
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      verify: (_) {
        verify(sessionRepo.removeUserTokens()).called(1);
      },
    );
  });

  // -------------------------------------------------------------------------
  // CheckAuthenticationStatus – authenticated
  // -------------------------------------------------------------------------
  group('CheckAuthenticationStatus – authenticated', () {
    setUp(() {
      when(sessionRepo.getIsAuthenticated()).thenAnswer((_) async => true);
      when(sessionRepo.getIsPremiumUser()).thenAnswer((_) async => true);
      when(userDataRepo.getUserData())
          .thenAnswer((_) async => _userDataJson);
    });

    blocTest<AppBloc, AppState>(
      'emits AppAuthenticationStatus(isAuthenticated: true) when session exists',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      expect: () => [
        isA<AppAuthenticationStatus>()
            .having((s) => s.isAuthenticated, 'isAuthenticated', isTrue),
      ],
    );

    blocTest<AppBloc, AppState>(
      'sets isPremiumUser to true when repository returns true',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      verify: (bloc) => expect(bloc.isPremiumUser, isTrue),
    );

    blocTest<AppBloc, AppState>(
      'populates userDataModel when getUserData returns valid JSON',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      verify: (bloc) {
        expect(bloc.userDataModel, isNotNull);
        expect(bloc.userDataModel!.email, 'test@example.com');
      },
    );

    blocTest<AppBloc, AppState>(
      'isFtUxCompletedStatus is true when storage returns true',
      build: () {
        when(keyValueStorage.getBool(HealthyLivingSharedKeyValueConstant.isFtUxViewed))
            .thenAnswer((_) async => true);
        return _makeBloc(
          sessionRepo: sessionRepo,
          keyValueStorage: keyValueStorage,
          userDataRepo: userDataRepo,
          analytics: analytics,
        );
      },
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      expect: () => [
        isA<AppAuthenticationStatus>()
            .having((s) => s.isFtUxCompletedStatus, 'isFtUxCompletedStatus', isTrue),
      ],
    );

    blocTest<AppBloc, AppState>(
      'does NOT call removeUserTokens when authenticated',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.checkAuthenticationStatus()),
      verify: (_) {
        verifyNever(sessionRepo.removeUserTokens());
      },
    );
  });

  // -------------------------------------------------------------------------
  // UserSessionExpired
  // -------------------------------------------------------------------------
  group('UserSessionExpired event', () {
    blocTest<AppBloc, AppState>(
      'emits AppUnauthenticatedState',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.userSessionExpired()),
      expect: () => [isA<AppUnauthenticatedState>()],
    );

    blocTest<AppBloc, AppState>(
      'AppUnauthenticatedState has a recent timestamp',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.userSessionExpired()),
      expect: () => [
        isA<AppUnauthenticatedState>().having(
          (s) => s.timestamp,
          'timestamp',
          isNotNull,
        ),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // RefreshUserLogin
  // -------------------------------------------------------------------------
  group('RefreshUserLogin event', () {
    blocTest<AppBloc, AppState>(
      'emits RefreshUserLoginState',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.refreshUserLogin()),
      expect: () => [isA<RefreshUserLoginState>()],
    );
  });

  // -------------------------------------------------------------------------
  // SubscribedToPremium
  // -------------------------------------------------------------------------
  group('SubscribedToPremium event', () {
    blocTest<AppBloc, AppState>(
      'emits SubscribeToPremiumSuccess',
      build: () {
        when(sessionRepo.getIsPremiumUser()).thenAnswer((_) async => true);
        return _makeBloc(
          sessionRepo: sessionRepo,
          keyValueStorage: keyValueStorage,
          userDataRepo: userDataRepo,
          analytics: analytics,
        );
      },
      act: (bloc) => bloc.add(const AppEvent.subscribedToPremium()),
      expect: () => [isA<SubscribeToPremiumSuccess>()],
    );

    blocTest<AppBloc, AppState>(
      'updates isPremiumUser via repository when subscribed to premium',
      build: () {
        when(sessionRepo.getIsPremiumUser()).thenAnswer((_) async => true);
        return _makeBloc(
          sessionRepo: sessionRepo,
          keyValueStorage: keyValueStorage,
          userDataRepo: userDataRepo,
          analytics: analytics,
        );
      },
      act: (bloc) => bloc.add(const AppEvent.subscribedToPremium()),
      verify: (bloc) => expect(bloc.isPremiumUser, isTrue),
    );
  });

  // -------------------------------------------------------------------------
  // CurrentBottomBarIndex
  // -------------------------------------------------------------------------
  group('CurrentBottomBarIndex event', () {
    blocTest<AppBloc, AppState>(
      'emits RefreshBottomTabs with correct values',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(
        const AppEvent.currentBottomBarIndex(
          isRefresh: true,
          bottomBarRefreshPage: BottomBarRefreshPage.homeLists,
        ),
      ),
      expect: () => [
        isA<RefreshBottomTabs>()
            .having((s) => s.isRefresh, 'isRefresh', isTrue)
            .having(
              (s) => s.bottomBarRefreshPage,
              'page',
              BottomBarRefreshPage.homeLists,
            ),
      ],
    );

    blocTest<AppBloc, AppState>(
      'emits RefreshBottomTabs with isRefresh false',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(
        const AppEvent.currentBottomBarIndex(
          isRefresh: false,
          bottomBarRefreshPage: BottomBarRefreshPage.homeLists,
        ),
      ),
      expect: () => [
        isA<RefreshBottomTabs>().having((s) => s.isRefresh, 'isRefresh', isFalse),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ProductDetailsSaved
  // -------------------------------------------------------------------------
  group('ProductDetailsSaved event', () {
    blocTest<AppBloc, AppState>(
      'saves productId on bloc when ProductDetailsSaved is added',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(
        const AppEvent.productDetailsSaved(
          productId: 42,
          productCategory: ProductCategory.personalCare,
        ),
      ),
      verify: (bloc) => expect(bloc.productId, 42),
    );

    blocTest<AppBloc, AppState>(
      'saves productCategory on bloc when ProductDetailsSaved is added',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(
        const AppEvent.productDetailsSaved(
          productId: 1,
          productCategory: ProductCategory.food,
        ),
      ),
      verify: (bloc) => expect(bloc.productCategory, ProductCategory.food),
    );

    blocTest<AppBloc, AppState>(
      'emits no new state for ProductDetailsSaved (internal setter only)',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(
        const AppEvent.productDetailsSaved(
          productId: 1,
          productCategory: null,
        ),
      ),
      expect: () => <AppState>[],
    );
  });

  // -------------------------------------------------------------------------
  // NavigationToPaywall
  // -------------------------------------------------------------------------
  group('NavigationToPaywall event', () {
    blocTest<AppBloc, AppState>(
      'emits MoveToPaywall',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.navigationToPaywall()),
      expect: () => [isA<MoveToPaywall>()],
    );
  });

  // -------------------------------------------------------------------------
  // NavigationToHistory
  // -------------------------------------------------------------------------
  group('NavigationToHistory event', () {
    blocTest<AppBloc, AppState>(
      'emits MoveToHistory',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(const AppEvent.navigationToHistory()),
      expect: () => [isA<MoveToHistory>()],
    );
  });

  // -------------------------------------------------------------------------
  // NavigationToScanAfterSubmitProductFlowExit
  // -------------------------------------------------------------------------
  group('NavigationToScanAfterSubmitProductFlowExit event', () {
    blocTest<AppBloc, AppState>(
      'emits ExitFromSubmitProductFlow',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) =>
          bloc.add(const AppEvent.navigationToScanAfterSubmitProductFlowExit()),
      expect: () => [isA<ExitFromSubmitProductFlow>()],
    );
  });

  // -------------------------------------------------------------------------
  // NavigationDataAfterAuthenticationSaved – triggerPaywall = false
  // -------------------------------------------------------------------------
  group('NavigationDataAfterAuthenticationSaved event', () {
    const navData = NavigationDataAfterAuthentication(
      searchTerm: 'test-search',
    );

    blocTest<AppBloc, AppState>(
      'emits no new state when triggerPaywall is false',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(
        AppEvent.navigationDataAfterAuthenticationSaved(
          navigationDataAfterAuthentication: navData,
        ),
      ),
      expect: () => <AppState>[],
    );

    blocTest<AppBloc, AppState>(
      'emits MoveToPaywall when triggerPaywall is true',
      build: () => _makeBloc(
        sessionRepo: sessionRepo,
        keyValueStorage: keyValueStorage,
        userDataRepo: userDataRepo,
        analytics: analytics,
      ),
      act: (bloc) => bloc.add(
        AppEvent.navigationDataAfterAuthenticationSaved(
          navigationDataAfterAuthentication: navData,
          triggerPaywall: true,
        ),
      ),
      expect: () => [isA<MoveToPaywall>()],
    );
  });
}
