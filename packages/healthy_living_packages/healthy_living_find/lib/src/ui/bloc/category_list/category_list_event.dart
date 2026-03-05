import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_category_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

part 'category_list_event.freezed.dart';

@freezed
sealed class CategoryListEvent with _$CategoryListEvent {
  const factory CategoryListEvent.categoryListInitialised({
    required List<SearchCategoryItemModel> initialCategoryList,
    required SearchPaginationItemModel? pagination,
  }) = CategoryListInitialised;

  const factory CategoryListEvent.categoriesSearched({
    required String searchQuery,
  }) = CategoriesSearched;
}
