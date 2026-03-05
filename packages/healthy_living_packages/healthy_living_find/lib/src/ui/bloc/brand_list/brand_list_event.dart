import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_brand_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

part 'brand_list_event.freezed.dart';

@freezed
sealed class BrandListEvent with _$BrandListEvent {
  const factory BrandListEvent.brandListInitialised({
    required List<SearchBrandModel> initialBrandList,
    required SearchPaginationItemModel? pagination,
  }) = BrandListInitialised;

  const factory BrandListEvent.brandsSearched({
    required String searchQuery,
  }) = BrandsSearched;
}
