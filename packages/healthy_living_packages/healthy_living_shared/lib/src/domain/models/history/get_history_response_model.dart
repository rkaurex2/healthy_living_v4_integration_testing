import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/history/history_item_model.dart';

part 'get_history_response_model.freezed.dart';

@freezed
sealed class GetHistoryResponseModel
    with _$GetHistoryResponseModel {
  const factory GetHistoryResponseModel({
    required int id,
    required String listName,
    required String createdAt,
    required String updatedAt,
    required int page,
    required int perPage,
    required int totalEntries,
    required List<HistoryItemModel> items,
  }) = _GetHistoryResponseModel;
}
