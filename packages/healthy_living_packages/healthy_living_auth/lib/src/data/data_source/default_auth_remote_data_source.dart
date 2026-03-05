import 'package:healthy_living_auth/src/core/google_sign_in/google_social_sign_in.dart';
import 'package:healthy_living_auth/src/data/models/forgot_password_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/google_sign_in/google_sign_in_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/sign_in_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/sign_up_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/social_sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/data_source/auth_remote_data_source.dart';
import 'package:healthy_living_auth/src/domain/models/change_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/edit_profile_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/reset_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_request_model.dart';
import 'package:healthy_living_auth/src/utils/auth_api_endpoints.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@LazySingleton(as: AuthRemoteDataSource)
class DefaultAuthRemoteDataSource implements AuthRemoteDataSource {
  final GoogleSocialSignIn _googleSignIn;
  final RestClient _restClient;
  final RestClient _unAuthenticatedRestClient;

  static DefaultAuthRemoteDataSource? _instance;

  DefaultAuthRemoteDataSource._internal(
    this._googleSignIn,
    this._restClient,
    this._unAuthenticatedRestClient,
  );

  @factoryMethod
  factory DefaultAuthRemoteDataSource({
    required GoogleSocialSignIn googleSignInClient,
    @apiRestClient required RestClient restClient,
    @unauthenticatedApiRestClient required RestClient unAuthenticatedRestClient,
  }) {
    _instance ??= DefaultAuthRemoteDataSource._internal(
      googleSignInClient,
      restClient,
      unAuthenticatedRestClient,
    );
    return _instance!;
  }

  @override
  Future<AuthorizationCredentialAppleID?> signInWithApple() async {
    return await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
  }

  @override
  Future<GoogleSignInResponseDTO> signInWithGoogle() async {
    final account = await _googleSignIn.authenticate();
    return GoogleSignInResponseDTO(idToken: account.authentication.idToken);
  }

  @override
  Future<NetworkResponse<SignInResponseDTO?>> signInWithEmail(
    SignInRequestModel request,
  ) async {
    return await _unAuthenticatedRestClient.post<SignInResponseDTO>(
      AuthApiEndpoints.userSignIn,
      body: request.toJson(),
      fromJson: (json) => SignInResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<SignInResponseDTO?>> socialSignIn({
    required SocialSignInRequestModel request,
  }) {
    return _unAuthenticatedRestClient.post<SignInResponseDTO>(
      AuthApiEndpoints.socialSignIn,
      body: {"data": request.toJson()},
      fromJson: (json) => SignInResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<ForgotPasswordResponseDTO?>> requestResetPassword(
    ForgotPasswordRequestModel request,
  ) async {
    final queryParamRequest =
        await IdentifierQueryParamRequest.fromIdentifier();
    return _unAuthenticatedRestClient.post<ForgotPasswordResponseDTO?>(
      AuthApiEndpoints.passwordReset,
      queryParams: queryParamRequest.toJson(),
      body: request.toJson(),
      fromJson: (json) => ForgotPasswordResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<SignInResponseDTO?>> resetPassword(
    ResetPasswordRequestModel request,
  ) async {
    final queryParamRequest =
        await IdentifierQueryParamRequest.fromIdentifier();
    return _unAuthenticatedRestClient.patch<SignInResponseDTO?>(
      AuthApiEndpoints.passwordReset,
      queryParams: queryParamRequest.toJson(),
      body: request.toJson(),
      fromJson: (json) => SignInResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<SignUpResponseDTO?>> signUpWithEmail(
    SignUpRequestModel request,
  ) async {
    return await _unAuthenticatedRestClient.post<SignUpResponseDTO>(
      AuthApiEndpoints.userSignUp,
      body: request.toJson(),
      fromJson: (json) => SignUpResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<UserDataDTO?>> saveProfile(
    EditProfileRequestModel request,
  ) async {
    return await _restClient.patch<UserDataDTO>(
      AuthApiEndpoints.userEditProfile,
      body: request.toJson(),
      fromJson: (json) => UserDataDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<GeneralResponseDTO?>> changePassword(
    ChangePasswordRequestModel request,
  ) async{
    return await _restClient.patch<GeneralResponseDTO>(
      AuthApiEndpoints.userChangePassword,
      body: request.toJson(),
      fromJson: (json) => GeneralResponseDTO.fromJson(json),
    );
  }
}
