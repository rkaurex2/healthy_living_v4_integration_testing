import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/sort_filter/sort_by.dart';
import 'package:healthy_living_shared/src/ui/models/sort_filter/sort_order.dart';
import 'package:healthy_living_shared/src/ui/models/sort_filter/sort_type.dart';

part 'sort_option.freezed.dart';

@freezed
sealed class SortOption with _$SortOption {
  factory SortOption({
    required int index,
    required SortType type,
    required SortBy sortBy,
    required SortOrder sortOrder,
  }) = _SortOption;
}
