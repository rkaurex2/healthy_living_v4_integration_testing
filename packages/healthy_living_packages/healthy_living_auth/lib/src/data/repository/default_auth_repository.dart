import 'package:healthy_living_auth/src/data/mapper/forgot_password_mapper.dart';
import 'package:healthy_living_auth/src/data/mapper/sign_in_mapper.dart';
import 'package:healthy_living_auth/src/data/mapper/sign_in_response_dto_mapper.dart';
import 'package:healthy_living_auth/src/data/mapper/sign_up_response_dto_mapper.dart';
import 'package:healthy_living_auth/src/data/models/sign_in_social_error.dart';
import 'package:healthy_living_auth/src/data/models/sign_in_social_result.dart';
import 'package:healthy_living_auth/src/data/models/social_sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/data_source/auth_remote_data_source.dart';
import 'package:healthy_living_auth/src/domain/models/change_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/edit_profile_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_response_model.dart';
import 'package:healthy_living_auth/src/domain/models/google_sign_in/google_sign_in_response_model.dart';
import 'package:healthy_living_auth/src/domain/models/reset_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_response_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_response_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart' show NetworkResponse;

@LazySingleton(as: AuthRepository)
class DefaultAuthRepository implements AuthRepository {
  AuthRemoteDataSource _authDataSource;
  static DefaultAuthRepository? _instance;

  DefaultAuthRepository._internal(this._authDataSource);

  @factoryMethod
  factory DefaultAuthRepository({required AuthRemoteDataSource dataSource}) {
    _instance ??= DefaultAuthRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<SignInSocialResult> signInWithApple() async {
    final credential = await _authDataSource.signInWithApple();

    final identityToken = credential?.identityToken;
    final authorizationCode = credential?.authorizationCode;

    if (identityToken.isValidValue && authorizationCode.isValidValue) {
      return SignInSocialResult.success(identityToken!);
    }
    return SignInSocialResult.failure(SignInSocialError.tokenMissing);
  }

  @override
  Future<GoogleSignInResponseModel> signInWithGoogle() async {
    final googleSignInResponse = await _authDataSource.signInWithGoogle();

    final idToken = googleSignInResponse.idToken;
    return GoogleSignInResponseModel(idToken: idToken);
  }

  @override
  Future<NetworkResponse<SignInResponseModel?>> signInWithEmail({
    required SignInRequestModel request,
  }) async {
    final signInResponseModel = await _authDataSource.signInWithEmail(request);
    return NetworkResponse(
      data: signInResponseModel.data?.toSignInDomain(),
      statusCode: signInResponseModel.statusCode,
      responseHeaders: signInResponseModel.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<SignInResponseModel?>> socialSignIn({
    required SocialSignInRequestModel request,
  }) async {
    final socialSignInResponse = await _authDataSource.socialSignIn(
      request: request,
    );
    return NetworkResponse(
      data: socialSignInResponse.data?.toSignInDomain(),
      statusCode: socialSignInResponse.statusCode,
      responseHeaders: socialSignInResponse.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<ForgotPasswordResponseModel?>> requestResetPassword({
    required ForgotPasswordRequestModel request,
  }) async {
    final response = await _authDataSource.requestResetPassword(request);
    return NetworkResponse<ForgotPasswordResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<UserDataModel?>> resetPassword({
    required ResetPasswordRequestModel request,
  }) async {
    final response = await _authDataSource.resetPassword(request);
    return NetworkResponse<UserDataModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<SignUpResponseModel?>> signUpWithEmail({
    required SignUpRequestModel request,
  }) async {
    final signUpResponseModel = await _authDataSource.signUpWithEmail(request);
    return NetworkResponse(
      data: signUpResponseModel.data?.toDomain(),
      statusCode: signUpResponseModel.statusCode,
      responseHeaders: signUpResponseModel.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<UserDataModel?>> saveProfile({
    required EditProfileRequestModel request,
  }) async {
    final profileResponseModel = await _authDataSource.saveProfile(request);
    return NetworkResponse(
      data: profileResponseModel.data?.toDomain(),
      statusCode: profileResponseModel.statusCode,
      responseHeaders: profileResponseModel.responseHeaders,
    );
  }

  @override
  Future<NetworkResponse<GeneralResponseModel?>> changePassword({
    required ChangePasswordRequestModel request,
  }) async {
    final changePasswordResponse = await _authDataSource.changePassword(
      request,
    );
    return NetworkResponse(
      data: changePasswordResponse.data?.toDomain(),
      statusCode: changePasswordResponse.statusCode,
      responseHeaders: changePasswordResponse.responseHeaders,
      statusMessage: changePasswordResponse.statusMessage,
    );
  }
}
