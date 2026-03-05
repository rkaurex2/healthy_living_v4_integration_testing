import 'package:freezed_annotation/freezed_annotation.dart';
part 'recent_activity_product_response_dto.freezed.dart';
part 'recent_activity_product_response_dto.g.dart';

@freezed
sealed class RecentActivityProductResponseDTO
    with _$RecentActivityProductResponseDTO {
  const factory RecentActivityProductResponseDTO({
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'brand_id') int? brandId,
    @JsonKey(name: 'company_name') String? companyName,
    String? name,
    dynamic upcs,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'browse_image_url') String? browseImageUrl,
    @JsonKey(name: 'medium_image_url') String? mediumImageUrl,
    @JsonKey(name: 'mobile_image_url') String? mobileImageUrl,
    String? score,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    @JsonKey(name: 'verified_date') String? verifiedDate,
    @JsonKey(name: 'web_url') String? webUrl,
  }) = _RecentActivityProductResponseDTO;

  factory RecentActivityProductResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$RecentActivityProductResponseDTOFromJson(json);
}
