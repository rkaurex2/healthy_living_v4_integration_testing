import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_home/src/data/models/recent_activity/recent_activity_product_item_response_dto.dart';

part 'recent_activity_response_dto.freezed.dart';
part 'recent_activity_response_dto.g.dart';

@freezed
sealed class RecentActivityResponseDTO with _$RecentActivityResponseDTO {
  const factory RecentActivityResponseDTO({
    int? id,
    @JsonKey(name: 'list_name') String? listName,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    int? page,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_entries') int? totalEntries,
    List<RecentActivityProductItemResponseDTO>? items,
  }) = _RecentActivityResponseDTO;

  factory RecentActivityResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RecentActivityResponseDTOFromJson(json);
}
