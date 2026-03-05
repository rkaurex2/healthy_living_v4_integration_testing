import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/history/history_item_dto.dart';

part 'get_history_response_dto.freezed.dart';
part 'get_history_response_dto.g.dart';

@freezed
sealed class GetHistoryResponseDTO with _$GetHistoryResponseDTO {
  const factory GetHistoryResponseDTO({
    int? id,
    @JsonKey(name: 'list_name') String? listName,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    int? page,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_entries') int? totalEntries,
    List<HistoryItemDTO>? items,
  }) = _GetHistoryResponseDTO;

  factory GetHistoryResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$GetHistoryResponseDTOFromJson(json);
}
