import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_state.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CategoryFilterBloc
    extends Bloc<CategoryFilterEvent, CategoryFilterState> {
  List<CategoryUiItem> _categories = [];
  List<CategoryUiItem> _updatedCategories = [];
  Set<String> _selected = {};
  int? _initialSelectedCategoryId;
  int? _initialSelectedSubCategoryId;
  ProductCategory? _productCategory;

  List<CategoryUiItem> get categories => _categories;
  List<CategoryUiItem> get updatedCategories => _updatedCategories;
  Set<String> get selectedCategories => _selected;
  bool get canApply => hasChanges;
  int? get initialSelectedCategoryId => _initialSelectedCategoryId;
  int? get initialSelectedSubCategoryId => _initialSelectedSubCategoryId;
  ProductCategory? get productCategory => _productCategory;

  CategoryFilterBloc() : super(CategoryFilterState.initial(categories: [])) {
    on<CategoryFiltersInitialised>(_onInitialised);
    on<CategoryToggled>(_onToggleCategory);
    on<SubCategoryToggled>(_onToggleSubCategory);
    on<ExpandToggled>(_onToggleExpand);
    on<CategoryFiltersCleared>(_onClearAll);
  }

  void _onInitialised(
    CategoryFiltersInitialised event,
    Emitter<CategoryFilterState> emit,
  ) {
    _categories = event.categories;
    _updatedCategories = event.categories;
    _updateSelectedSet();
    _initialSelectedCategoryId = event.initialSelectedCategoryId;
    _initialSelectedSubCategoryId = event.initialSelectedSubCategoryId;
    _productCategory = event.productCategory;
    emit(CategoryFilterState.initial(categories: categories));
  }

  void _updateSelectedSet() {
    _selected = {};
    for (final category in _updatedCategories) {
      for (final subCategory in category.subCategories) {
        if (subCategory.isSelected) {
          _selected.add(subCategory.name);
        }
      }
    }
  }

  void _onToggleCategory(
    CategoryToggled event,
    Emitter<CategoryFilterState> emit,
  ) {
    final updatedCategories = [..._updatedCategories];
    final index = updatedCategories.indexWhere(
      (category) => category.id == event.categoryId,
    );
    if (index == -1) return;
    final item = updatedCategories[index];

    if (item.subCategories.isEmpty) {
      final newSelected = Set<String>.from(_selected);
      if (newSelected.contains(item.name)) {
        newSelected.remove(item.name);
        updatedCategories[index] = item.copyWith(isExpanded: false);
      } else {
        newSelected.add(item.name);
        updatedCategories[index] = item.copyWith(isExpanded: true);
      }
      _updatedCategories = updatedCategories;
      _selected = newSelected;
      emit(
        CategoryFilterState.categoryToggleSuccess(
          categories: updatedCategories,
        ),
      );
    } else {
      final allSelected = item.isFullySelected;
      final newSelected = Set<String>.from(_selected);

      final updatedSubCategories =
          item.subCategories.map((subCategory) {
            if (allSelected) {
              newSelected.remove(subCategory.name);
              return subCategory.copyWith(isSelected: false);
            } else {
              newSelected.add(subCategory.name);
              return subCategory.copyWith(isSelected: true);
            }
          }).toList();

      updatedCategories[index] = item.copyWith(
        isExpanded: !allSelected,
        subCategories: updatedSubCategories,
      );

      _updatedCategories = updatedCategories;
      _selected = newSelected;
      emit(
        CategoryFilterState.categoryToggleSuccess(
          categories: updatedCategories,
        ),
      );
    }
  }

  void _onToggleSubCategory(
    SubCategoryToggled event,
    Emitter<CategoryFilterState> emit,
  ) {
    final updatedCategories = [..._updatedCategories];
    final index = updatedCategories.indexWhere(
      (category) => category.id == event.categoryId,
    );
    if (index == -1) return;
    final item = updatedCategories[index];

    final global = Set<String>.from(_selected);
    final updatedSubCategories = [...item.subCategories];

    // Find the subcategory to toggle
    final subCategoryIndex = updatedSubCategories.indexWhere(
      (subCategory) => subCategory.id == event.subcategoryId,
    );
    if (subCategoryIndex == -1) return;

    final subCategory = updatedSubCategories[subCategoryIndex];
    final newIsSelected = !subCategory.isSelected;

    if (subCategory.id == -1 && subCategory.name == "All") {
      for (int i = 0; i < updatedSubCategories.length; i++) {
        final subCategory = updatedSubCategories[i];
        updatedSubCategories[i] = subCategory.copyWith(
          isSelected: newIsSelected,
        );

        if (newIsSelected) {
          global.add(subCategory.name);
        } else {
          global.remove(subCategory.name);
        }
      }
    } else {
      updatedSubCategories[subCategoryIndex] = subCategory.copyWith(
        isSelected: newIsSelected,
      );

      if (newIsSelected) {
        global.add(subCategory.name);
      } else {
        global.remove(subCategory.name);
      }

      final allItemIndex = updatedSubCategories.indexWhere(
        (subCategory) =>
            subCategory.id == -1 &&
            subCategory.name.toLowerCase() ==
                StringConstants.filterAllSubcategoryName.toLowerCase(),
      );
      if (allItemIndex != -1) {
        final allSelected = updatedSubCategories
            .where((subCategory) => subCategory.id != -1)
            .every((subCategory) => subCategory.isSelected);
        updatedSubCategories[allItemIndex] = updatedSubCategories[allItemIndex]
            .copyWith(isSelected: allSelected);
      }
    }

    updatedCategories[index] = item.copyWith(
      isExpanded: true,
      subCategories: updatedSubCategories,
    );

    _updatedCategories = updatedCategories;
    _selected = global;

    emit(
      CategoryFilterState.subCategoryToggleSuccess(
        categories: updatedCategories,
      ),
    );
  }

  void _onToggleExpand(ExpandToggled event, Emitter<CategoryFilterState> emit) {
    final updatedCategories = [..._updatedCategories];
    final index = updatedCategories.indexWhere(
      (category) => category.id == event.categoryId,
    );
    if (index == -1) return;
    final item = updatedCategories[index];
    updatedCategories[index] = item.copyWith(isExpanded: !item.isExpanded);
    _updatedCategories = updatedCategories;
    emit(
      CategoryFilterState.toggleCategoryExpandSuccess(
        categories: updatedCategories,
      ),
    );
  }

  void _onClearAll(
    CategoryFiltersCleared event,
    Emitter<CategoryFilterState> emit,
  ) {
    final cleared =
        _updatedCategories.map((category) {
          List<SubCategoryUiItem> clearedSubCategories = [];
          if (_productCategory == ProductCategory.cleaner) {
            clearedSubCategories =
                category.subCategories
                    .map(
                      (subCategory) => subCategory.copyWith(
                        isSelected:
                            subCategory.id == _initialSelectedCategoryId,
                      ),
                    )
                    .toList();

            // If there's only one subcategory and it's selected, then keep All checkbox selected
            if (clearedSubCategories.length == 2 &&
                clearedSubCategories[1].isSelected &&
                _initialSelectedCategoryId != null) {
              clearedSubCategories[0] = clearedSubCategories[0].copyWith(
                isSelected: true,
              );
            }
          } else {
            clearedSubCategories =
                category.subCategories
                    .map(
                      (subCategory) => subCategory.copyWith(
                        isSelected:
                            category.id == _initialSelectedCategoryId ||
                            subCategory.id == _initialSelectedSubCategoryId,
                      ),
                    )
                    .toList();

            // If there's only one subcategory and it's selected, then keep All checkbox selected
            if (clearedSubCategories.length == 2 &&
                clearedSubCategories[1].isSelected &&
                (_initialSelectedCategoryId != null ||
                    _initialSelectedSubCategoryId != null)) {
              clearedSubCategories[0] = clearedSubCategories[0].copyWith(
                isSelected: true,
              );
            }
          }

          return category.copyWith(
            isExpanded: false,
            subCategories: clearedSubCategories,
          );
        }).toList();

    _categories = cleared;
    _updatedCategories = cleared;
    _selected = <String>{};
    emit(CategoryFilterState.clearAllFiltersSuccess(categories: cleared));
  }

  bool get hasChanges {
    if (categories.length != updatedCategories.length) return true;

    for (int i = 0; i < categories.length; i++) {
      final original = categories[i];
      final updated = updatedCategories[i];

      if (original.isExpanded != updated.isExpanded) return true;

      if (original.subCategories.length != updated.subCategories.length) {
        return true;
      }
      for (int j = 0; j < original.subCategories.length; j++) {
        final originalSub = original.subCategories[j];
        final updatedSub = updated.subCategories[j];

        if (originalSub.isSelected != updatedSub.isSelected) return true;
      }
    }

    return false;
  }
}
