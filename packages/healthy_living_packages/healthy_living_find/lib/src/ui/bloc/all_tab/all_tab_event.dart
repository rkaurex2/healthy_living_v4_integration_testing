import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/healthy_living_find.dart';

part 'all_tab_event.freezed.dart';

@freezed
sealed class AllTabEvent with _$AllTabEvent {
  const factory AllTabEvent.allTabInitialised({
    required SearchResponseModel? initialAllTabData,
    required String searchQuery,
  }) = AllTabInitialised;

  const factory AllTabEvent.allTabSearched({
    required String searchQuery,
    required bool isAuthenticated,
  }) = AllTabSearched;
}
