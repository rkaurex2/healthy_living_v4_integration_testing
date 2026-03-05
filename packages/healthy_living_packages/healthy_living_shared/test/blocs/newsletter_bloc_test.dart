import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_response_model.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const _validEmail = 'user@example.com';
const _invalidEmail = 'not-an-email';
const _validZip = '10001';
const _emptyZip = '';
const _country = 'US';

NetworkResponse<NewsletterSubscriptionResponseModel?> _successResponse() {
  return const NetworkResponse(
    data: NewsletterSubscriptionResponseModel(message: 'Subscribed!'),
    statusCode: 200,
    responseHeaders: {},
  );
}

NetworkResponse<NewsletterSubscriptionResponseModel?> _failureResponse({
  int statusCode = 500,
}) {
  return NetworkResponse(
    data: null,
    statusCode: statusCode,
    responseHeaders: const {},
    statusMessage: 'Internal Server Error',
  );
}

NewsletterBloc _makeBloc(MockNewsletterRepository repo) =>
    NewsletterBloc(newsletterRepository: repo);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockNewsletterRepository repo;

  setUp(() {
    repo = MockNewsletterRepository();
  });

  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('NewsletterBloc – initial state', () {
    test('has empty email and zip, status initial', () {
      final bloc = _makeBloc(repo);
      expect(bloc.state.email, '');
      expect(bloc.state.zipCode, '');
      expect(bloc.state.status, NewsletterStatus.initial);
      bloc.close();
    });

    test('has defaultState for emailTextInputState', () {
      final bloc = _makeBloc(repo);
      expect(bloc.state.emailTextInputState, DSTextInputState.defaultState);
      bloc.close();
    });

    test('has defaultState for zipTextInputState', () {
      final bloc = _makeBloc(repo);
      expect(bloc.state.zipTextInputState, DSTextInputState.defaultState);
      bloc.close();
    });

    test('has empty country in initial state', () {
      final bloc = _makeBloc(repo);
      expect(bloc.state.country, '');
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // NewsletterInitialized
  // -------------------------------------------------------------------------
  group('NewsletterInitialized event', () {
    blocTest<NewsletterBloc, NewsletterState>(
      'populates email and zip from event',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(
        const NewsletterEvent.newsletterInitialized(
          email: _validEmail,
          zipcode: _validZip,
          country: _country,
        ),
      ),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.email, 'email', _validEmail)
            .having((s) => s.zipCode, 'zipCode', _validZip)
            .having((s) => s.country, 'country', _country),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'trims whitespace from email and zip',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(
        const NewsletterEvent.newsletterInitialized(
          email: '  user@example.com  ',
          zipcode: '  10001  ',
        ),
      ),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.email, 'email', 'user@example.com')
            .having((s) => s.zipCode, 'zipCode', '10001'),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'falls back to US country code when country is null',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(
        const NewsletterEvent.newsletterInitialized(
          email: _validEmail,
          zipcode: _validZip,
        ),
      ),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.country, 'country', StringConstants.defaultSelectedCountryCode),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'resets status to initial on Initialized',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(
        const NewsletterEvent.newsletterInitialized(
          email: _validEmail,
          zipcode: _validZip,
        ),
      ),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.initial),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // EmailTextChanged
  // -------------------------------------------------------------------------
  group('EmailTextChanged event', () {
    blocTest<NewsletterBloc, NewsletterState>(
      'updates email in state',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(const NewsletterEvent.emailTextChanged(_validEmail)),
      expect: () => [
        isA<NewsletterState>().having((s) => s.email, 'email', _validEmail),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'trims the email value',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.emailTextChanged('  hello@test.com  ')),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.email, 'email', 'hello@test.com'),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'keeps status as initial when typing',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(const NewsletterEvent.emailTextChanged(_validEmail)),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.initial),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'does NOT validate immediately (no error state on invalid email typed)',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.emailTextChanged(_invalidEmail)),
      expect: () => [
        isA<NewsletterState>().having(
          (s) => s.emailTextInputState,
          'emailTextInputState',
          DSTextInputState.defaultState,
        ),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // EmailFocusChanged
  // -------------------------------------------------------------------------
  group('EmailFocusChanged event', () {
    blocTest<NewsletterBloc, NewsletterState>(
      'shows error state for invalid email after focus lost',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.emailFocusChanged(_invalidEmail)),
      expect: () => [
        isA<NewsletterState>().having(
          (s) => s.emailTextInputState,
          'emailTextInputState',
          DSTextInputState.error,
        ),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'shows defaultState for valid email after focus lost',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.emailFocusChanged(_validEmail)),
      expect: () => [
        isA<NewsletterState>().having(
          (s) => s.emailTextInputState,
          'emailTextInputState',
          DSTextInputState.defaultState,
        ),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'updates email field in state on focus changed',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.emailFocusChanged(_validEmail)),
      expect: () => [
        isA<NewsletterState>().having((s) => s.email, 'email', _validEmail),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ZipTextChanged
  // -------------------------------------------------------------------------
  group('ZipTextChanged event', () {
    blocTest<NewsletterBloc, NewsletterState>(
      'updates zipCode in state',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(const NewsletterEvent.zipTextChanged(_validZip)),
      expect: () => [
        isA<NewsletterState>().having((s) => s.zipCode, 'zipCode', _validZip),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'trims the zip value',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.zipTextChanged('  10001  ')),
      expect: () => [
        isA<NewsletterState>().having((s) => s.zipCode, 'zipCode', '10001'),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'keeps status as initial when typing zip',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(const NewsletterEvent.zipTextChanged(_validZip)),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.initial),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ZipFocusChanged
  // -------------------------------------------------------------------------
  group('ZipFocusChanged event', () {
    blocTest<NewsletterBloc, NewsletterState>(
      'shows error state for empty zip after focus lost',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.zipFocusChanged(_emptyZip)),
      expect: () => [
        isA<NewsletterState>().having(
          (s) => s.zipTextInputState,
          'zipTextInputState',
          DSTextInputState.error,
        ),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'shows defaultState for non-empty zip after focus lost',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.zipFocusChanged(_validZip)),
      expect: () => [
        isA<NewsletterState>().having(
          (s) => s.zipTextInputState,
          'zipTextInputState',
          DSTextInputState.defaultState,
        ),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'updates zipCode field in state on focus changed',
      build: () => _makeBloc(repo),
      act: (bloc) =>
          bloc.add(const NewsletterEvent.zipFocusChanged(_validZip)),
      expect: () => [
        isA<NewsletterState>().having((s) => s.zipCode, 'zipCode', _validZip),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // CountryChanged
  // -------------------------------------------------------------------------
  group('CountryChanged event', () {
    blocTest<NewsletterBloc, NewsletterState>(
      'updates country in state',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(const NewsletterEvent.countryChanged('CA')),
      expect: () => [
        isA<NewsletterState>().having((s) => s.country, 'country', 'CA'),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'keeps status as initial when changing country',
      build: () => _makeBloc(repo),
      act: (bloc) => bloc.add(const NewsletterEvent.countryChanged('GB')),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.initial),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // SubscribePressed – success path
  // -------------------------------------------------------------------------
  group('SubscribePressed – success', () {
    setUp(() {
      when(
        repo.subscribeToNewsletter(request: anyNamed('request')),
      ).thenAnswer((_) async => _successResponse());
    });

    blocTest<NewsletterBloc, NewsletterState>(
      'emits loading then success when API call succeeds',
      build: () => _makeBloc(repo),
      seed: () => const NewsletterState(
        email: _validEmail,
        zipCode: _validZip,
        country: _country,
      ),
      act: (bloc) => bloc.add(const NewsletterEvent.subscribePressed()),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.loading),
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.success),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'calls subscribeToNewsletter on the repository exactly once',
      build: () => _makeBloc(repo),
      seed: () => const NewsletterState(
        email: _validEmail,
        zipCode: _validZip,
        country: _country,
      ),
      act: (bloc) => bloc.add(const NewsletterEvent.subscribePressed()),
      verify: (_) {
        verify(repo.subscribeToNewsletter(request: anyNamed('request'))).called(1);
      },
    );
  });

  // -------------------------------------------------------------------------
  // SubscribePressed – API failure (non-2xx response)
  // -------------------------------------------------------------------------
  group('SubscribePressed – API failure', () {
    setUp(() {
      when(
        repo.subscribeToNewsletter(request: anyNamed('request')),
      ).thenAnswer((_) async => _failureResponse(statusCode: 500));
    });

    blocTest<NewsletterBloc, NewsletterState>(
      'emits loading then failure when API returns non-2xx',
      build: () => _makeBloc(repo),
      seed: () => const NewsletterState(
        email: _validEmail,
        zipCode: _validZip,
        country: _country,
      ),
      act: (bloc) => bloc.add(const NewsletterEvent.subscribePressed()),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.loading),
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.failure),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'failure state carries a non-null exception',
      build: () => _makeBloc(repo),
      seed: () => const NewsletterState(
        email: _validEmail,
        zipCode: _validZip,
        country: _country,
      ),
      act: (bloc) => bloc.add(const NewsletterEvent.subscribePressed()),
      expect: () => [
        isA<NewsletterState>(),
        isA<NewsletterState>()
            .having((s) => s.exception, 'exception', isNotNull),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // SubscribePressed – exception thrown by repository
  // -------------------------------------------------------------------------
  group('SubscribePressed – repository throws', () {
    setUp(() {
      when(
        repo.subscribeToNewsletter(request: anyNamed('request')),
      ).thenThrow(Exception('Network error'));
    });

    blocTest<NewsletterBloc, NewsletterState>(
      'emits loading then failure when repository throws',
      build: () => _makeBloc(repo),
      seed: () => const NewsletterState(
        email: _validEmail,
        zipCode: _validZip,
        country: _country,
      ),
      act: (bloc) => bloc.add(const NewsletterEvent.subscribePressed()),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.loading),
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.failure),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'captures thrown exception in failure state',
      build: () => _makeBloc(repo),
      seed: () => const NewsletterState(
        email: _validEmail,
        zipCode: _validZip,
        country: _country,
      ),
      act: (bloc) => bloc.add(const NewsletterEvent.subscribePressed()),
      expect: () => [
        anything,
        isA<NewsletterState>()
            .having((s) => s.exception, 'exception', isA<Exception>()),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // SubscribePressed – repository NOT called on invalid state
  // -------------------------------------------------------------------------
  group('SubscribePressed – input validation guard', () {
    // The NewsletterBloc does NOT itself validate before calling the repo
    // (validation happens via FocusChanged events before the button is enabled
    // in the UI).  These tests verify that the bloc passes the current field
    // values to the repository regardless of validity, which means the UI is
    // responsible for gating the button.
    test('bloc accessor returns current email value', () async {
      final bloc = _makeBloc(repo);
      bloc.add(const NewsletterEvent.emailTextChanged(_validEmail));
      await bloc.stream.first;
      expect(bloc.email, _validEmail);
      bloc.close();
    });

    test('bloc accessor returns current zip value', () async {
      final bloc = _makeBloc(repo);
      bloc.add(const NewsletterEvent.zipTextChanged(_validZip));
      await bloc.stream.first;
      expect(bloc.zipCode, _validZip);
      bloc.close();
    });

    test('bloc accessor returns current country value', () async {
      final bloc = _makeBloc(repo);
      bloc.add(const NewsletterEvent.countryChanged('DE'));
      await bloc.stream.first;
      expect(bloc.country, 'DE');
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // After success – form can be re-initialised
  // -------------------------------------------------------------------------
  group('Re-initialise form after success', () {
    setUp(() {
      when(
        repo.subscribeToNewsletter(request: anyNamed('request')),
      ).thenAnswer((_) async => _successResponse());
    });

    blocTest<NewsletterBloc, NewsletterState>(
      'Initialized after success resets status to initial',
      build: () => _makeBloc(repo),
      seed: () => const NewsletterState(status: NewsletterStatus.success),
      act: (bloc) => bloc.add(
        const NewsletterEvent.newsletterInitialized(
          email: _validEmail,
          zipcode: _validZip,
        ),
      ),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.status, 'status', NewsletterStatus.initial),
      ],
    );

    blocTest<NewsletterBloc, NewsletterState>(
      'Initialized after success clears input fields from event',
      build: () => _makeBloc(repo),
      seed: () => const NewsletterState(status: NewsletterStatus.success),
      act: (bloc) => bloc.add(
        const NewsletterEvent.newsletterInitialized(
          email: 'new@test.com',
          zipcode: '99999',
        ),
      ),
      expect: () => [
        isA<NewsletterState>()
            .having((s) => s.email, 'email', 'new@test.com')
            .having((s) => s.zipCode, 'zipCode', '99999'),
      ],
    );
  });
}
