import 'package:freezed_annotation/freezed_annotation.dart';

part 'certifications_dto.freezed.dart';
part 'certifications_dto.g.dart';

@freezed
sealed class CertificationsDTO with _$CertificationsDTO {
  const factory CertificationsDTO({
    required int? id,
    @JsonKey(name: 'as_param') required String? asParam,
    required String? name,
    @JsonKey(name: 'logo_url') required String? logoUrl,
    required String? website,
    required String? description,
  }) = _CertificationsDTO;

  factory CertificationsDTO.fromJson(Map<String, dynamic> json) =>
      _$CertificationsDTOFromJson(json);
}
