import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';

part 'brand_filter_state.freezed.dart';

@freezed
sealed class BrandFilterState with _$BrandFilterState {
  const factory BrandFilterState.initial({
    required List<BrandUiItem> brands,
    @Default('') String searchQuery,
    @Default([]) List<BrandUiItem> filteredBrands,
  }) = BrandFilterInitial;

  const factory BrandFilterState.brandToggleSuccess({
    required List<BrandUiItem> brands,
    @Default('') String searchQuery,
    @Default([]) List<BrandUiItem> filteredBrands,
  }) = BrandToggledSuccess;

  const factory BrandFilterState.clearAllFiltersSuccess({
    required List<BrandUiItem> brands,
    @Default('') String searchQuery,
    @Default([]) List<BrandUiItem> filteredBrands,
  }) = ClearAllFiltersSuccess;

  const factory BrandFilterState.allBrandsToggleSuccess({
    required List<BrandUiItem> brands,
    @Default('') String searchQuery,
    @Default([]) List<BrandUiItem> filteredBrands,
  }) = AllBrandsToggleSuccess;
  
  const factory BrandFilterState.searchQueryChangedSuccess({
    required List<BrandUiItem> brands,
    required String searchQuery,
    required List<BrandUiItem> filteredBrands,
  }) = BrandSearchQueryChangedSuccess;
}