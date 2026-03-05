import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request_model.freezed.dart';

part 'sign_up_request_model.g.dart';

@freezed
sealed class SignUpRequestModel with _$SignUpRequestModel {
  const factory SignUpRequestModel({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String password,
    @JsonKey(name: 'password_confirmation') required String confirmPassword,
    required String country,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'subscribe_newsletter') required bool subscribeNewsletter,
  }) = _SignUpRequestModel;

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);
}