class ResetPasswordRequestModel {
  final String newPassword;
  final String code;

  ResetPasswordRequestModel({
    required this.newPassword,
    required this.code,
  });

  Map<String, dynamic> toJson() {
    return {
      "reset_password_token": code,
      "password": newPassword,
      "password_confirmation": newPassword,
    };
  }
}