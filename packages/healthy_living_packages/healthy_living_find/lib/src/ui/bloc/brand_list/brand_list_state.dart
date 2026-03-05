import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';

part 'brand_list_state.freezed.dart';

@freezed
sealed class BrandListState with _$BrandListState {
  const factory BrandListState.brandsInitial() = BrandsInitial;

  const factory BrandListState.brandsLoadInProgress() = BrandsLoadInProgress;

  const factory BrandListState.brandsLoadSuccess({
    required List<SearchBrandModel> brands,
    required SearchPaginationItemModel? pagination,
  }) = BrandsLoadSuccess;

  const factory BrandListState.brandsLoadFailure(Exception exception) =
      BrandsLoadFailure;

  const factory BrandListState.brandsLoadFromCacheSuccess({
    required List<SearchBrandModel> brands,
    required SearchPaginationItemModel? pagination,
  }) = BrandsLoadFromCacheSuccess;
}
