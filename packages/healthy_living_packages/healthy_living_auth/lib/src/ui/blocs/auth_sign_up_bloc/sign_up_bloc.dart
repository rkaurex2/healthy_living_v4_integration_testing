import 'dart:async';
import 'dart:convert';

import 'package:design_system/design_system.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/healthy_living_auth.dart';
import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_auth/src/domain/models/edit_profile_mobile_user_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/edit_profile_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_request_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/models/email_error_type.dart';
import 'package:healthy_living_auth/src/ui/models/password_error_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:storage/storage.dart';

@Injectable()
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository _authRepository;
  final SessionRepository _sessionRepository;
  final KeyValueStorage _keyValueStorage;
  final AnalyticsService _analytics;
  final AuthAnalytics _authAnalytics;
  final PurchaseUserService _purchaseUserService;
  UserDataModel? _userDataModel;

  UserDataModel? get userDataModel => _userDataModel;
  bool _isEditProfileMode = false;

  bool _isEditProfile() => _isEditProfileMode;

  SignUpBloc({
    required AuthRepository authRepository,
    required SessionRepository sessionRepository,
    required KeyValueStorage keyValueStorage,
    required AnalyticsService analytics,
    required AuthAnalytics authAnalytics,
    required PurchaseUserService purchaseUserService,
  }) : _authRepository = authRepository,
       _sessionRepository = sessionRepository,
       _keyValueStorage = keyValueStorage,
       _analytics = analytics,
       _authAnalytics = authAnalytics,
       _purchaseUserService = purchaseUserService,
       super(
         const SignUpState(
           email: '',
           firstName: '',
           lastName: '',
           password: '',
           zipCode: '',
           subscribeNewsletter: false,
           isFormButtonDisabled: true,
           country: StringConstants.defaultSelectedCountryCode,
           emailTextInputState: DSTextInputState.defaultState,
           passwordTextInputState: DSTextInputState.defaultState,
           firstNameTextInputState: DSTextInputState.defaultState,
           lastNameTextInputState: DSTextInputState.defaultState,
           zipCodeTextInputState: DSTextInputState.defaultState,
         ),
       ) {
    on<OnTextChange>(_onTextChanged);
    on<UserEmailFocusChanged>(_onEmailFocusChanged);
    on<PasswordFocusChanged>(_onPasswordFocusChanged);
    on<FirstNameFocusChanged>(_onFirstNameFocusChanged);
    on<LastNameFocusChanged>(_onLastNameFocusChanged);
    on<ZipCodeFocusChanged>(_onZipCodeFocusChanged);
    on<SubscribeNewsletterToggled>(_onSubscribeNewsletterToggled);
    on<SignUpButtonPressed>(_onSignUpButtonPressed);
    on<UserCountryChanged>(_onCountryChanged);
    on<SignupInitialized>(_onInitialized);
    on<SaveButtonPressed>(_onSaveButtonPressed);
  }

  void _onEmailFocusChanged(
    UserEmailFocusChanged event,
    Emitter<SignUpState> emit,
  ) {
    if (!event.value.isValidValue) {
      _updateForm(emit: emit, email: event.value);
    } else if (event.value != state.email) {
      _updateForm(emit: emit, email: event.value);
    }
  }

  void _onPasswordFocusChanged(
    PasswordFocusChanged event,
    Emitter<SignUpState> emit,
  ) {
    _updateForm(emit: emit, password: event.value);
  }

  void _onFirstNameFocusChanged(
    FirstNameFocusChanged event,
    Emitter<SignUpState> emit,
  ) {
    _updateForm(emit: emit, firstName: event.value);
  }

  void _onLastNameFocusChanged(
    LastNameFocusChanged event,
    Emitter<SignUpState> emit,
  ) {
    _updateForm(emit: emit, lastName: event.value);
  }

  void _onZipCodeFocusChanged(
    ZipCodeFocusChanged event,
    Emitter<SignUpState> emit,
  ) {
    _updateForm(emit: emit, zipCode: event.value);
  }

  DSTextInputState _getFieldState({
    required bool hasChanged,
    required bool isValid,
    required DSTextInputState? currentState,
  }) {
    if (!hasChanged) return currentState ?? DSTextInputState.defaultState;
    return isValid ? DSTextInputState.defaultState : DSTextInputState.error;
  }

  void _onSubscribeNewsletterToggled(
    SubscribeNewsletterToggled event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(subscribeNewsletter: !state.subscribeNewsletter));
  }

  void _onTextChanged(OnTextChange event, Emitter<SignUpState> emit) {
    bool isButtonValid;
    if (_isEditProfile()) {
      isButtonValid =
          event.firstName.isValidValue &&
          event.lastName.isValidValue &&
          event.email.isValidValue &&
          event.email.isValidEmail;
    } else {
      isButtonValid =
          event.firstName.isValidValue &&
          event.lastName.isValidValue &&
          event.password.isValidValue &&
          event.email.isValidValue &&
          event.email.isValidEmail &&
          event.zipCode.isValidValue;
    }
    if (isButtonValid) {
      emit(
        state.copyWith(
          status: AuthScreenStatus.initial,
          isFormButtonDisabled: false,
          emailTextInputState: DSTextInputState.defaultState,
          passwordTextInputState: DSTextInputState.defaultState,
          firstNameTextInputState: DSTextInputState.defaultState,
          lastNameTextInputState: DSTextInputState.defaultState,
          zipCodeTextInputState: DSTextInputState.defaultState,
          email: event.email,
          password: event.password,
          firstName: event.firstName,
          lastName: event.lastName,
          zipCode: event.zipCode,
          subscribeNewsletter: state.subscribeNewsletter,
          country: state.country,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isFormButtonDisabled: true,
          status: AuthScreenStatus.initial,
          subscribeNewsletter: state.subscribeNewsletter,
          country: state.country,
        ),
      );
    }
  }

  void _updateForm({
    required Emitter<SignUpState> emit,
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? zipCode,
    String? country,
  }) {
    final newFirstName = firstName?.trim() ?? state.firstName;
    final newLastName = lastName?.trim() ?? state.lastName;
    final newEmail = email?.trim() ?? state.email;
    final newPassword = password?.trim() ?? state.password;
    final newZipCode = zipCode?.trim() ?? state.zipCode;
    final newCountry = country?.trim() ?? state.country;

    DSTextInputState emailState = state.emailTextInputState;
    EmailErrorType emailErrorType = state.emailErrorType;
    DSTextInputState passwordState = state.passwordTextInputState;
    PasswordErrorType passwordErrorType = state.passwordErrorType;

    if (email != null) {
      if (!newEmail.isValidValue) {
        emailState = DSTextInputState.error;
        emailErrorType = EmailErrorType.required;
      } else if (!newEmail.isValidEmail) {
        emailState = DSTextInputState.error;
        emailErrorType = EmailErrorType.invalid;
      } else {
        emailState = DSTextInputState.defaultState;
        emailErrorType = EmailErrorType.none;
      }
    }
    if (password != null) {
      if (!newPassword.isValidValue) {
        passwordState = DSTextInputState.error;
        passwordErrorType = PasswordErrorType.required;
      } else if (newPassword.length < IntegerConstants.minPasswordLength) {
        passwordState = DSTextInputState.error;
        passwordErrorType = PasswordErrorType.invalid;
      } else {
        passwordState = DSTextInputState.defaultState;
        passwordErrorType = PasswordErrorType.none;
      }
    }

    emit(
      state.copyWith(
        firstName: newFirstName,
        lastName: newLastName,
        email: newEmail,
        password: newPassword,
        zipCode: newZipCode,
        status: AuthScreenStatus.initial,
        firstNameTextInputState: _getFieldState(
          hasChanged: firstName != null,
          isValid: newFirstName.isValidValue,
          currentState: state.firstNameTextInputState,
        ),
        lastNameTextInputState: _getFieldState(
          hasChanged: lastName != null,
          isValid: newLastName.isValidValue,
          currentState: state.lastNameTextInputState,
        ),
        emailTextInputState: emailState,
        emailErrorType: emailErrorType,
        passwordTextInputState: passwordState,
        passwordErrorType: passwordErrorType,
        zipCodeTextInputState: _getFieldState(
          hasChanged: zipCode != null,
          isValid: _isEditProfile() ? true : newZipCode.isValidValue,
          currentState: state.zipCodeTextInputState,
        ),
        country: newCountry,
        subscribeNewsletter: state.subscribeNewsletter,
      ),
    );
  }

  void _onCountryChanged(UserCountryChanged event, Emitter<SignUpState> emit) {
    _updateForm(emit: emit, country: event.value);
  }

  FutureOr<void> _onSignUpButtonPressed(
    SignUpButtonPressed event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      emit(state.copyWith(status: AuthScreenStatus.loading));

      /// GA4 event (SignUp)
      await _authAnalytics.logSignUp(method: StringConstants.email);

      final signUpResponse = await _authRepository.signUpWithEmail(
        request: SignUpRequestModel(
          email: event.email,
          password: event.password,
          confirmPassword: event.password,
          firstName: event.firstName,
          lastName: event.lastName,
          country: event.country,
          zipCode: event.zipCode,
          subscribeNewsletter: event.isNewsletterSubscribed,
        ),
      );
      final accessToken = signUpResponse.responseHeaders["access-token"]?[0];
      final refreshToken = signUpResponse.responseHeaders["refresh-token"]?[0];
      if (signUpResponse.isSuccess &&
          signUpResponse.data != null &&
          accessToken.isValidValue &&
          refreshToken.isValidValue) {
        await _sessionRepository.saveAccessToken(accessToken!);
        await _sessionRepository.saveRefreshToken(refreshToken!);

        final userData = signUpResponse.data!.userData;
        if (userData != null) {
          /// log GA4 for user
          await _analytics.setUserId(
            userData.email.isValidValue ? userData.email : userData.firstName,
          );

          final userDataJson = userData.toJson();
          final encodedUserDataJson = jsonEncode(userDataJson);
          await _keyValueStorage.setString(
            HealthyLivingSharedKeyValueConstant.user,
            encodedUserDataJson,
          );
          if (userData.revenueCat?.appUserId.isValidValue == true) {
            final revenueCatAppUserId = userData.revenueCat!.appUserId;
            await Purchases.logIn(revenueCatAppUserId);
            await _purchaseUserService.syncUserDetails(userData);
          }
          if (HealthyLivingSharedUtils.checkForPremiumUser(
            revenueCatData: userData.revenueCat,
            entitlements: userData.entitlements,
          )) {
            await _sessionRepository.saveIsPremiumUser(true);
          }
        }
        await _sessionRepository.saveIsAuthenticated(true);
        emit(state.copyWith(status: AuthScreenStatus.success));
      } else {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            signUpException: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } catch (e) {
      NetworkException networkException = e as NetworkException;
      if (networkException.statusCode == ApiStatusCodeConstants.statusCode422 &&
          _isEmailAlreadyTakenError(networkException)) {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            signUpException: networkException,
            emailTextInputState: DSTextInputState.error,
            emailErrorType: EmailErrorType.alreadyRegistered,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            signUpException: networkException,
          ),
        );
      }
    }
  }

  Future<void> _onInitialized(
    SignupInitialized event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      final userDataString = await _keyValueStorage.getString(
        HealthyLivingSharedKeyValueConstant.user,
      );
      if (userDataString != null) {
        final userDataJson = jsonDecode(userDataString);
        _userDataModel = UserDataModel.fromJson(userDataJson);
      }
      emit(state.copyWith(status: AuthScreenStatus.localDataLoaded));
    } on Exception catch (exception) {
      NetworkException networkException = exception as NetworkException;
      emit(
        state.copyWith(
          status: AuthScreenStatus.failure,
          signUpException: networkException,
        ),
      );
    }
  }

  void setEditProfileMode(bool isEditProfile) {
    _isEditProfileMode = isEditProfile;
  }

  FutureOr<void> _onSaveButtonPressed(
    SaveButtonPressed event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      emit(state.copyWith(status: AuthScreenStatus.loading));
      final saveProfileResponse = await _authRepository.saveProfile(
        request: EditProfileRequestModel(
          mobileUser: EditProfileMobileUserRequestModel(
            firstName: event.firstName,
            lastName: event.lastName,
            country: event.country,
            zipCode: event.zipCode,
          ),
        ),
      );

      if (saveProfileResponse.isSuccess && saveProfileResponse.data != null) {
        final updatedUserData = saveProfileResponse.data?.copyWith(
          revenueCat: _userDataModel?.revenueCat,
          entitlements: _userDataModel?.entitlements,
        );
        _userDataModel = updatedUserData;
        final encodedUserDataJson = jsonEncode(updatedUserData?.toJson());
        await _keyValueStorage.setString(
          HealthyLivingSharedKeyValueConstant.user,
          encodedUserDataJson,
        );
        emit(state.copyWith(status: AuthScreenStatus.profileUpdateSuccess));
      } else {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            signUpException: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } catch (e) {
      NetworkException networkException = e as NetworkException;
      if (networkException.statusCode == ApiStatusCodeConstants.statusCode422 &&
          _isEmailAlreadyTakenError(networkException)) {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            signUpException: networkException,
            emailTextInputState: DSTextInputState.error,
            emailErrorType: EmailErrorType.alreadyRegistered,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            signUpException: networkException,
          ),
        );
      }
    }
  }

  bool _isEmailAlreadyTakenError(NetworkException exception) {
    final responseBody = exception.responseBody;
    if (responseBody is Map) {
      bool containsAlreadyTaken(String? value) {
        return value?.toLowerCase().contains('already been taken') ?? false;
      }

      final flatError = responseBody['error'];
      if (flatError is String && containsAlreadyTaken(flatError)) {
        return true;
      }

      final dynamic errorsField =
          responseBody['errors'] ?? responseBody['error'];

      if (errorsField is Map) {
        for (final value in errorsField.values) {
          if (value is String && containsAlreadyTaken(value)) {
            return true;
          }
          if (value is List) {
            for (final item in value) {
              if (item is String && containsAlreadyTaken(item)) {
                return true;
              }
            }
          }
        }
      } else if (errorsField is List) {
        for (final item in errorsField) {
          if (item is String && containsAlreadyTaken(item)) {
            return true;
          }
        }
      }
    }
    return false;
  }
}
