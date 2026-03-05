import 'package:healthy_living_auth/src/data/models/forgot_password_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/google_sign_in/google_sign_in_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/sign_in_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/sign_up_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/social_sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/change_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/edit_profile_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/reset_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_request_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart' show NetworkResponse;
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

abstract interface class AuthRemoteDataSource {
  Future<AuthorizationCredentialAppleID?> signInWithApple();

  Future<GoogleSignInResponseDTO> signInWithGoogle();

  Future<NetworkResponse<SignInResponseDTO?>> signInWithEmail(
    SignInRequestModel request,
  );

  Future<NetworkResponse<SignInResponseDTO?>> socialSignIn({
    required SocialSignInRequestModel request,
  });

  Future<NetworkResponse<ForgotPasswordResponseDTO?>> requestResetPassword(
    ForgotPasswordRequestModel request,
  );

  Future<NetworkResponse<SignInResponseDTO?>> resetPassword(
    ResetPasswordRequestModel request,
  );

  Future<NetworkResponse<SignUpResponseDTO?>> signUpWithEmail(
    SignUpRequestModel request,
  );

  Future<NetworkResponse<UserDataDTO?>> saveProfile(
    EditProfileRequestModel request,
  );
  Future<NetworkResponse<GeneralResponseDTO?>> changePassword(
    ChangePasswordRequestModel request,
  );
}
