import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_state.dart';
import 'package:storage/storage.dart';

// ---------------------------------------------------------------------------
// Manual mocks
// ---------------------------------------------------------------------------
class MockKeyValueStorage extends Mock implements KeyValueStorage {
  @override
  Future<bool> setBool(String? key, bool? value) =>
      super.noSuchMethod(
        Invocation.method(#setBool, [key, value]),
        returnValue: Future<bool>.value(false),
        returnValueForMissingStub: Future<bool>.value(false),
      ) as Future<bool>;
}

class MockAuthAnalytics extends Mock implements AuthAnalytics {
  @override
  Future<void> logLoginSkip({String? source}) =>
      super.noSuchMethod(
        Invocation.method(#logLoginSkip, [], {#source: source}),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>;
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['unit'])
void main() {
  late MockKeyValueStorage mockKeyValueStorage;
  late MockAuthAnalytics mockAuthAnalytics;

  setUp(() {
    mockKeyValueStorage = MockKeyValueStorage();
    mockAuthAnalytics = MockAuthAnalytics();
  });

  FtUxBloc buildBloc() => FtUxBloc(
        keyValueStorage: mockKeyValueStorage,
        authAnalytics: mockAuthAnalytics,
      );

  group('FtUxBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is FtUxComplete(isFtUxComplete: false)', () {
      final bloc = buildBloc();
      expect(
        bloc.state,
        isA<FtUxComplete>().having(
          (s) => s.isFtUxComplete,
          'isFtUxComplete',
          false,
        ),
      );
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // SetFtUxCompleted(true)
    // -----------------------------------------------------------------------
    blocTest<FtUxBloc, FtUxState>(
      'emits FtUxComplete(isFtUxComplete: true) when SetFtUxCompleted(true) '
      'is added and calls keyValueStorage.setBool',
      build: () {
        when(mockKeyValueStorage.setBool(any, any))
            .thenAnswer((_) async => true);
        return buildBloc();
      },
      act: (bloc) =>
          bloc.add(const FtUxEvent.setFtUxCompleted(true)),
      expect: () => [
        isA<FtUxComplete>().having(
          (s) => s.isFtUxComplete,
          'isFtUxComplete',
          true,
        ),
      ],
      verify: (_) {
        verify(mockKeyValueStorage.setBool(any, true)).called(1);
      },
    );

    // -----------------------------------------------------------------------
    // SetFtUxCompleted(false)
    // -----------------------------------------------------------------------
    blocTest<FtUxBloc, FtUxState>(
      'emits FtUxComplete(isFtUxComplete: false) when SetFtUxCompleted(false) '
      'is added',
      build: () {
        when(mockKeyValueStorage.setBool(any, any))
            .thenAnswer((_) async => true);
        return buildBloc();
      },
      act: (bloc) =>
          bloc.add(const FtUxEvent.setFtUxCompleted(false)),
      expect: () => [
        isA<FtUxComplete>().having(
          (s) => s.isFtUxComplete,
          'isFtUxComplete',
          false,
        ),
      ],
      verify: (_) {
        verify(mockKeyValueStorage.setBool(any, false)).called(1);
      },
    );

    // -----------------------------------------------------------------------
    // SetFtUxCompleted — toggle true then false
    // -----------------------------------------------------------------------
    blocTest<FtUxBloc, FtUxState>(
      'can toggle from true back to false',
      build: () {
        when(mockKeyValueStorage.setBool(any, any))
            .thenAnswer((_) async => true);
        return buildBloc();
      },
      act: (bloc) {
        bloc.add(const FtUxEvent.setFtUxCompleted(true));
        bloc.add(const FtUxEvent.setFtUxCompleted(false));
      },
      expect: () => [
        isA<FtUxComplete>().having(
          (s) => s.isFtUxComplete,
          'isFtUxComplete',
          true,
        ),
        isA<FtUxComplete>().having(
          (s) => s.isFtUxComplete,
          'isFtUxComplete',
          false,
        ),
      ],
    );

    // -----------------------------------------------------------------------
    // ContinueAsGuestTapped
    // -----------------------------------------------------------------------
    blocTest<FtUxBloc, FtUxState>(
      'emits ContinueAsGuestSuccess when ContinueAsGuestTapped is added '
      'and logs analytics',
      build: () {
        when(mockAuthAnalytics.logLoginSkip(source: anyNamed('source')))
            .thenAnswer((_) async {});
        return buildBloc();
      },
      act: (bloc) =>
          bloc.add(const FtUxEvent.continueAsGuestTapped()),
      expect: () => [
        isA<ContinueAsGuestSuccess>(),
      ],
      verify: (_) {
        verify(
          mockAuthAnalytics.logLoginSkip(source: anyNamed('source')),
        ).called(1);
      },
    );
  });
}
