import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_business_dto.freezed.dart';
part 'user_list_business_dto.g.dart';

@freezed
sealed class UserListBusinessDTO with _$UserListBusinessDTO {
  const factory UserListBusinessDTO({
    int? id,
    @JsonKey(name: 'as_param') String? asParam,
    String? name,
    @JsonKey(name: 'logo_url') String? logoUrl,
  }) = _UserListBusinessDTO;

  factory UserListBusinessDTO.fromJson(Map<String, dynamic> json) =>
      _$UserListBusinessDTOFromJson(json);
}
