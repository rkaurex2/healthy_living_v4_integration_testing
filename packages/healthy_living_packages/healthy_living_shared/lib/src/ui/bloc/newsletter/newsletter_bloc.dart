import 'package:design_system/design_system.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class NewsletterBloc extends Bloc<NewsletterEvent, NewsletterState> {
  final NewsletterRepository _newsletterRepository;
  String _email = '';
  String _zip = '';
  String _country = StringConstants.defaultSelectedCountryCode;

  NewsletterBloc({required NewsletterRepository newsletterRepository})
    : _newsletterRepository = newsletterRepository,
      super(const NewsletterState()) {
    on<NewsletterInitialized>(_onNewsletterInitialized);
    on<EmailTextChanged>(_onEmailTextChanged);
    on<EmailFocusChanged>(_onEmailFocusChanged);
    on<ZipTextChanged>(_onZipTextChanged);
    on<ZipFocusChanged>(_onZipFocusChanged);
    on<CountryChanged>(_onCountryChanged);
    on<SubscribePressed>(_onSubscribePressed);
  }

  String get email => _email;

  String get zipCode => _zip;

  String get country => _country;

  void _onNewsletterInitialized(
    NewsletterInitialized event,
    Emitter<NewsletterState> emit,
  ) {
    _email = event.email.trim();
    _zip = event.zipcode.trim();
    _country =
        event.country?.trim() ?? StringConstants.defaultSelectedCountryCode;

    emit(
      state.copyWith(
        email: _email,
        zipCode: _zip,
        country: _country,
        emailTextInputState: DSTextInputState.defaultState,
        zipTextInputState: DSTextInputState.defaultState,
        status: NewsletterStatus.initial,
      ),
    );
  }

  void _onEmailTextChanged(
    EmailTextChanged event,
    Emitter<NewsletterState> emit,
  ) {
    _email = event.value.trim();
    emit(state.copyWith(email: _email, status: NewsletterStatus.initial));
  }

  void _onEmailFocusChanged(
    EmailFocusChanged event,
    Emitter<NewsletterState> emit,
  ) {
    _email = event.value.trim();
    emit(_validateEmailOnly());
  }

  void _onZipTextChanged(ZipTextChanged event, Emitter<NewsletterState> emit) {
    _zip = event.value.trim();
    emit(state.copyWith(zipCode: _zip, status: NewsletterStatus.initial));
  }

  void _onZipFocusChanged(
    ZipFocusChanged event,
    Emitter<NewsletterState> emit,
  ) {
    _zip = event.value.trim();
    emit(_validateZipOnly());
  }

  void _onCountryChanged(CountryChanged event, Emitter<NewsletterState> emit) {
    _country = event.value;
    emit(state.copyWith(country: _country, status: NewsletterStatus.initial));
  }

  NewsletterState _validateEmailOnly() {
    final bool isEmailValid = _email.isValidEmail;
    return state.copyWith(
      email: _email,
      status: NewsletterStatus.initial,
      emailTextInputState:
          isEmailValid ? DSTextInputState.defaultState : DSTextInputState.error,
    );
  }

  NewsletterState _validateZipOnly() {
    final bool isZipValid = _zip.isValidValue;
    return state.copyWith(
      status: NewsletterStatus.initial,
      zipCode: _zip,
      zipTextInputState:
          isZipValid ? DSTextInputState.defaultState : DSTextInputState.error,
    );
  }

  Future<void> _onSubscribePressed(
    SubscribePressed event,
    Emitter<NewsletterState> emit,
  ) async {
    try {
      emit(state.copyWith(status: NewsletterStatus.loading));

      final request = NewsletterSubscriptionRequestModel(
        email: _email,
        country: _country,
        zip: _zip,
      );

      final response = await _newsletterRepository.subscribeToNewsletter(
        request: request,
      );

      if (response.isSuccess) {
        emit(state.copyWith(status: NewsletterStatus.success));
      } else {
        emit(
          state.copyWith(
            status: NewsletterStatus.failure,
            exception: UnknownNetworkException(
              message: '',
              statusCode: response.statusCode,
              originalError: response.statusMessage ?? '',
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(
        state.copyWith(status: NewsletterStatus.failure, exception: exception),
      );
    }
  }
}
