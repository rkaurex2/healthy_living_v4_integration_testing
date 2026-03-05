import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/history/history_item_product_dto.dart';

part 'history_item_dto.freezed.dart';
part 'history_item_dto.g.dart';

@freezed
sealed class HistoryItemDTO with _$HistoryItemDTO {
  const factory HistoryItemDTO({
    int? id,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'list_type') String? listType,
    HistoryItemProductDTO? product,
  }) = _HistoryItemDTO;

  factory HistoryItemDTO.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemDTOFromJson(json);
}