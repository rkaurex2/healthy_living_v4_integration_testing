import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';

part 'brand_filter_event.freezed.dart';

@freezed
class BrandFilterEvent with _$BrandFilterEvent {
  const factory BrandFilterEvent.initialised({
    required List<BrandUiItem> brands,
    @Default(<String>{}) Set<String> initiallySelected,
  }) = BrandFiltersInitialised;

  const factory BrandFilterEvent.brandToggled(String brandName) = BrandToggled;

  const factory BrandFilterEvent.filtersCleared() = BrandFiltersCleared;

  const factory BrandFilterEvent.allBrandsToggled() = AllBrandsToggled;
  
  const factory BrandFilterEvent.searchQueryChanged(String query) = BrandSearchQueryChanged;
}