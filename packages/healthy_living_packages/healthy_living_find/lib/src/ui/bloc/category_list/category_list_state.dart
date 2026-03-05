import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';

part 'category_list_state.freezed.dart';

@freezed
sealed class CategoryListState with _$CategoryListState {
  const factory CategoryListState.categoriesInitial() = CategoriesInitial;

  const factory CategoryListState.categoriesLoadInProgress() =
      CategoriesLoadInProgress;

  const factory CategoryListState.categoriesLoadSuccess({
    required List<SearchCategoryItemModel> categoryList,
    required SearchPaginationItemModel? pagination,
  }) = CategoriesLoadSuccess;

  const factory CategoryListState.categoriesLoadFailure(Exception exception) =
      CategoriesLoadFailure;

  const factory CategoryListState.categoriesLoadFromCacheSuccess({
    required List<SearchCategoryItemModel> categories,
    required SearchPaginationItemModel? pagination,
  }) = CategoriesLoadFromCacheSuccess;
}
