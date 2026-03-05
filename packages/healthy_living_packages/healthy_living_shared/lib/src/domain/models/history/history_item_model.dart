import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/history/history_item_product_model.dart';

part 'history_item_model.freezed.dart';

@freezed
sealed class HistoryItemModel with _$HistoryItemModel {
  const factory HistoryItemModel({
    required int id,
    required int productId,
    required String listType,
    HistoryItemProductModel? product,
  }) = _HistoryItemModel;
}
