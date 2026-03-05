import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_mobile_user_request_model.freezed.dart';

part 'edit_profile_mobile_user_request_model.g.dart';

@freezed
sealed class EditProfileMobileUserRequestModel with _$EditProfileMobileUserRequestModel {
  const factory EditProfileMobileUserRequestModel({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String country,
    @JsonKey(name: 'zip_code') required String zipCode,
  }) = _EditProfileMobileUserRequestModel;

  factory EditProfileMobileUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EditProfileMobileUserRequestModelFromJson(json);
}