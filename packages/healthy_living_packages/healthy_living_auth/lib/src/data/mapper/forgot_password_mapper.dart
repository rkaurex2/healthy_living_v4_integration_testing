import 'package:healthy_living_auth/src/data/models/forgot_password_response_dto.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_response_model.dart';

extension ForgotPasswordMapper on ForgotPasswordResponseDTO {
  ForgotPasswordResponseModel toDomain() {
    return ForgotPasswordResponseModel(
      message: message ?? "",
    );
  }
}
