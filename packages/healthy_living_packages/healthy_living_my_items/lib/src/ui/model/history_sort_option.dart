import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_my_items/src/ui/model/history_sort_type.dart';

part 'history_sort_option.freezed.dart';

@freezed
sealed class HistorySortOption with _$HistorySortOption {
  factory HistorySortOption({
    required String name,
    required HistorySortType type,
    required int index,
  }) = _HistorySortOption;
}
