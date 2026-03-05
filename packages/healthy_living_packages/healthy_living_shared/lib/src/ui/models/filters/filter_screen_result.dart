import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'filter_screen_result.freezed.dart';

@freezed
sealed class FilterScreenResult with _$FilterScreenResult {
  const factory FilterScreenResult({
    @Default(false) bool openPaywall,
    PaywallSource? paywallSource,
  }) = _FilterScreenResult;
}
