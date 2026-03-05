import 'package:freezed_annotation/freezed_annotation.dart';

part 'recently_viewed_product_request_dto.freezed.dart';
part 'recently_viewed_product_request_dto.g.dart';

@freezed
sealed class RecentlyViewedProductRequestDTO with _$RecentlyViewedProductRequestDTO {
  const factory RecentlyViewedProductRequestDTO({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'product_type') required String productType,
  }) = _RecentlyViewedProductRequestDTO;

  factory RecentlyViewedProductRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$RecentlyViewedProductRequestDTOFromJson(json);
}
