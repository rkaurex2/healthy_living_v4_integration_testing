import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_my_items/src/ui/model/history_sort_option.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'history_list_event.freezed.dart';

@freezed
sealed class HistoryListEvent with _$HistoryListEvent {

  const factory HistoryListEvent.initialized() = HistoryListInitialized;

  const factory HistoryListEvent.fetchHistory({
    required HistorySortOption sortOption,
    int? page,
  }) = HistoryListFetched;

  const factory HistoryListEvent.sortChanged(int selectedIndex) =
      HistoryListSortChanged;
}
