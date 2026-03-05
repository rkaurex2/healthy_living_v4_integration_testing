import 'package:healthy_living_auth/src/data/models/sign_in_social_result.dart';
import 'package:healthy_living_auth/src/data/models/social_sign_in_request_model.dart';
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
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart' show NetworkResponse;

abstract interface class AuthRepository {
  Future<SignInSocialResult> signInWithApple();

  Future<GoogleSignInResponseModel> signInWithGoogle();

  Future<NetworkResponse<SignInResponseModel?>> signInWithEmail({
    required SignInRequestModel request,
  });

  Future<NetworkResponse<SignInResponseModel?>> socialSignIn({
    required SocialSignInRequestModel request,
  });

  Future<NetworkResponse<ForgotPasswordResponseModel?>> requestResetPassword({
    required ForgotPasswordRequestModel request,
  });

  Future<NetworkResponse<UserDataModel?>> resetPassword({
    required ResetPasswordRequestModel request,
  });

  Future<NetworkResponse<SignUpResponseModel?>> signUpWithEmail({
    required SignUpRequestModel request,
  });

  Future<NetworkResponse<UserDataModel?>> saveProfile({
    required EditProfileRequestModel request,
  });

  Future<NetworkResponse<GeneralResponseModel?>> changePassword({
    required ChangePasswordRequestModel request,
  });
}
