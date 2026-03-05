import 'package:freezed_annotation/freezed_annotation.dart';

part 'extracted_field_dto.freezed.dart';
part 'extracted_field_dto.g.dart';

@freezed
sealed class ExtractedFieldDTO with _$ExtractedFieldDTO {
  const factory ExtractedFieldDTO({
    String? value,
    @JsonKey(name: 'ocr_value') String? ocrValue,
    double? confidence,
  }) = _ExtractedFieldDTO;

  factory ExtractedFieldDTO.fromJson(Map<String, dynamic> json) =>
      _$ExtractedFieldDTOFromJson(json);
}
