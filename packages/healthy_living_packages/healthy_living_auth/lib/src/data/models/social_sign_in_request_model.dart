import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_sign_in_request_model.freezed.dart';
part 'social_sign_in_request_model.g.dart';

@freezed
sealed class SocialSignInRequestModel with _$SocialSignInRequestModel {
  const factory SocialSignInRequestModel({
    required String token,
    required String provider,
  }) = _SocialSignInRequestModel;

  factory SocialSignInRequestModel.fromJson(Map<String, dynamic> json) => _$SocialSignInRequestModelFromJson(json);
}
