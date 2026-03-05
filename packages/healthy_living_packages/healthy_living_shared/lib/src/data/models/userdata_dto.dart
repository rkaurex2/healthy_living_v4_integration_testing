import 'package:freezed_annotation/freezed_annotation.dart';

part 'userdata_dto.freezed.dart';
part 'userdata_dto.g.dart';

@freezed
sealed class UserDataDTO with _$UserDataDTO {
  const factory UserDataDTO({
    String? email,
    String? country,
    @JsonKey(name: 'zip_code') String? zipCode,
    @JsonKey(name: 'subscribe_newsletter') bool? subscribeNewsletter,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'intial_login') bool? initialLogin,
  }) = _UserDataDTO;

  factory UserDataDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDataDTOFromJson(json);
}
