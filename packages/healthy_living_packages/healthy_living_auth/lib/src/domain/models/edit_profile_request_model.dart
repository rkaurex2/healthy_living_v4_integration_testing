import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_auth/src/domain/models/edit_profile_mobile_user_request_model.dart';

part 'edit_profile_request_model.freezed.dart';
part 'edit_profile_request_model.g.dart';

@freezed
sealed class EditProfileRequestModel with _$EditProfileRequestModel {
  const factory EditProfileRequestModel({
    @JsonKey(name: 'mobile_user') required EditProfileMobileUserRequestModel mobileUser,
  }) = _EditProfileRequestModel;

  factory EditProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestModelFromJson(json);
}