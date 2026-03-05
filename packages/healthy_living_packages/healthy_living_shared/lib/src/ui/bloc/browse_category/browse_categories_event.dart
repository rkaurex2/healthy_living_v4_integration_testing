import 'package:freezed_annotation/freezed_annotation.dart';

part 'browse_categories_event.freezed.dart';

@freezed
sealed class BrowseCategoriesEvent with _$BrowseCategoriesEvent {
  const factory BrowseCategoriesEvent.browseCategoriesInitialize({
    required bool isEwgVerified,
  }) = BrowseCategoriesInitialize;
}
