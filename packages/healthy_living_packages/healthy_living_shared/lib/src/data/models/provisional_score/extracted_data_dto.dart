import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/provisional_score/extracted_field_dto.dart';
part 'extracted_data_dto.freezed.dart';
part 'extracted_data_dto.g.dart';
@freezed
sealed class ExtractedDataDTO with _$ExtractedDataDTO {
  const factory ExtractedDataDTO({
    @JsonKey(name: 'product_name') ExtractedFieldDTO?  productName,
    @JsonKey(name: 'brand_name') ExtractedFieldDTO? brandName,
    ExtractedFieldDTO? ingredients,
  }) = _ExtractedDataDTO;

  factory ExtractedDataDTO.fromJson(Map<String, dynamic> json) =>
      _$ExtractedDataDTOFromJson(json);
}


