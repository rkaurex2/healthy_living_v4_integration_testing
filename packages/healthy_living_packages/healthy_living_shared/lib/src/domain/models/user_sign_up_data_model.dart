import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_up_data_model.freezed.dart';
part 'user_sign_up_data_model.g.dart';
@freezed
sealed class UserSignUpDataModel with _$UserSignUpDataModel {
  const factory UserSignUpDataModel({
    required String email,
    required String country,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'subscribe_newsletter') required bool subscribeNewsletter,
    @JsonKey(name: 'intial_login') bool? initialLogin,
  }) = _UserSignUpDataModel;

  factory UserSignUpDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserSignUpDataModelFromJson(json);
}
