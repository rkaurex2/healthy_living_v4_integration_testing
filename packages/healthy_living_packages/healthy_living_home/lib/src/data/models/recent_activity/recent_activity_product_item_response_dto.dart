import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_home/src/data/models/recent_activity/recent_activity_product_response_dto.dart';
part 'recent_activity_product_item_response_dto.freezed.dart';
part 'recent_activity_product_item_response_dto.g.dart';

@freezed
sealed class RecentActivityProductItemResponseDTO
    with _$RecentActivityProductItemResponseDTO {
  const factory RecentActivityProductItemResponseDTO({
    int? id,
    int? position,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_type') String? productType,
    RecentActivityProductResponseDTO? product,
  }) = _RecentActivityProductItemResponseDTO;

  factory RecentActivityProductItemResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$RecentActivityProductItemResponseDTOFromJson(json);
}
