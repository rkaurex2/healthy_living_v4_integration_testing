import 'package:freezed_annotation/freezed_annotation.dart';

part 'certifications_model.freezed.dart';

@freezed
sealed class CertificationsModel with _$CertificationsModel {
  const factory CertificationsModel({
    required int id,
    @JsonKey(name: 'as_param') required String asParam,
    required String name,
    @JsonKey(name: 'logo_url') required String logoUrl,
    required String website,
    required String description,
  }) = _CertificationsModel;
}
