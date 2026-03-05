import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_state.dart';

// ---------------------------------------------------------------------------
// Test data
// ---------------------------------------------------------------------------

List<CategoryUiItem> _testCategories() => [
      CategoryUiItem(
        id: 1,
        name: 'Personal Care',
        count: 100,
        isExpanded: false,
        subCategories: [
          const SubCategoryUiItem(
            id: 10,
            name: 'Shampoo',
            count: 50,
            isSelected: false,
          ),
          const SubCategoryUiItem(
            id: 11,
            name: 'Soap',
            count: 50,
            isSelected: false,
          ),
        ],
      ),
      const CategoryUiItem(
        id: 2,
        name: 'Cleaners',
        count: 80,
        isExpanded: false,
        subCategories: [
          SubCategoryUiItem(
            id: 20,
            name: 'Kitchen',
            count: 40,
            isSelected: false,
          ),
          SubCategoryUiItem(
            id: 21,
            name: 'Bathroom',
            count: 40,
            isSelected: false,
          ),
        ],
      ),
    ];

/// A category without subcategories, to test the no-subcategory toggle path.
List<CategoryUiItem> _leafCategories() => [
      const CategoryUiItem(
        id: 5,
        name: 'Supplements',
        count: 30,
        isExpanded: false,
        subCategories: [],
      ),
    ];

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('CategoryFilterBloc - initial state', () {
    test('starts with CategoryFilterInitial', () {
      final bloc = CategoryFilterBloc();
      expect(bloc.state, isA<CategoryFilterInitial>());
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // CategoryFiltersInitialised
  // -------------------------------------------------------------------------
  group('CategoryFiltersInitialised', () {
    blocTest<CategoryFilterBloc, CategoryFilterState>(
      'emits CategoryFilterInitial with provided categories',
      build: CategoryFilterBloc.new,
      act: (bloc) => bloc.add(
        CategoryFilterEvent.initialised(
          categories: _testCategories(),
          productCategory: ProductCategory.personalCare,
        ),
      ),
      expect: () => [isA<CategoryFilterInitial>()],
      verify: (bloc) {
        expect(bloc.categories.length, 2);
      },
    );
  });

  // -------------------------------------------------------------------------
  // CategoryToggled - with subcategories (selects all)
  // -------------------------------------------------------------------------
  group('CategoryToggled', () {
    blocTest<CategoryFilterBloc, CategoryFilterState>(
      'toggling a category with subcategories selects all subcategories',
      build: CategoryFilterBloc.new,
      seed: () => CategoryFilterState.initial(categories: _testCategories()),
      setUp: () {},
      act: (bloc) {
        // First initialise, then toggle
        bloc.add(
          CategoryFilterEvent.initialised(
            categories: _testCategories(),
            productCategory: ProductCategory.personalCare,
          ),
        );
        bloc.add(const CategoryFilterEvent.categoryToggled(1));
      },
      expect: () => [
        isA<CategoryToggledSuccess>(),
      ],
    );

    blocTest<CategoryFilterBloc, CategoryFilterState>(
      'toggling a leaf category (no subcategories) emits CategoryToggledSuccess',
      build: CategoryFilterBloc.new,
      act: (bloc) {
        bloc.add(
          CategoryFilterEvent.initialised(
            categories: _leafCategories(),
            productCategory: ProductCategory.personalCare,
          ),
        );
        bloc.add(const CategoryFilterEvent.categoryToggled(5));
      },
      expect: () => [
        isA<CategoryFilterInitial>(),
        isA<CategoryToggledSuccess>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // SubCategoryToggled
  // -------------------------------------------------------------------------
  group('SubCategoryToggled', () {
    blocTest<CategoryFilterBloc, CategoryFilterState>(
      'toggling a subcategory emits SubCategoryToggledSuccess',
      build: CategoryFilterBloc.new,
      act: (bloc) {
        bloc.add(
          CategoryFilterEvent.initialised(
            categories: _testCategories(),
            productCategory: ProductCategory.personalCare,
          ),
        );
        bloc.add(
          const CategoryFilterEvent.subCategoryToggled(
            categoryId: 1,
            subcategoryId: 10,
          ),
        );
      },
      expect: () => [
        isA<CategoryFilterInitial>(),
        isA<SubCategoryToggledSuccess>(),
      ],
    );

    blocTest<CategoryFilterBloc, CategoryFilterState>(
      'toggling a subcategory that does not exist does nothing extra',
      build: CategoryFilterBloc.new,
      act: (bloc) {
        bloc.add(
          CategoryFilterEvent.initialised(
            categories: _testCategories(),
            productCategory: ProductCategory.personalCare,
          ),
        );
        bloc.add(
          const CategoryFilterEvent.subCategoryToggled(
            categoryId: 1,
            subcategoryId: 999,
          ),
        );
      },
      // Only the initialised event emits a state
      expect: () => [isA<CategoryFilterInitial>()],
    );
  });

  // -------------------------------------------------------------------------
  // ExpandToggled
  // -------------------------------------------------------------------------
  group('ExpandToggled', () {
    blocTest<CategoryFilterBloc, CategoryFilterState>(
      'toggling expand emits ToggledCategoryExpandSuccess',
      build: CategoryFilterBloc.new,
      act: (bloc) {
        bloc.add(
          CategoryFilterEvent.initialised(
            categories: _testCategories(),
            productCategory: ProductCategory.personalCare,
          ),
        );
        bloc.add(const CategoryFilterEvent.expandToggled(1));
      },
      expect: () => [
        isA<CategoryFilterInitial>(),
        isA<ToggledCategoryExpandSuccess>(),
      ],
    );

    blocTest<CategoryFilterBloc, CategoryFilterState>(
      'expand toggle on non-existent category does nothing',
      build: CategoryFilterBloc.new,
      act: (bloc) {
        bloc.add(
          CategoryFilterEvent.initialised(
            categories: _testCategories(),
            productCategory: ProductCategory.personalCare,
          ),
        );
        bloc.add(const CategoryFilterEvent.expandToggled(999));
      },
      expect: () => [isA<CategoryFilterInitial>()],
    );
  });

  // -------------------------------------------------------------------------
  // CategoryFiltersCleared
  // -------------------------------------------------------------------------
  group('CategoryFiltersCleared', () {
    blocTest<CategoryFilterBloc, CategoryFilterState>(
      'clearing filters emits ClearAllFiltersSuccess',
      build: CategoryFilterBloc.new,
      act: (bloc) {
        bloc.add(
          CategoryFilterEvent.initialised(
            categories: _testCategories(),
            productCategory: ProductCategory.personalCare,
          ),
        );
        // Toggle a category first to have dirty state
        bloc.add(const CategoryFilterEvent.categoryToggled(1));
        // Then clear
        bloc.add(const CategoryFilterEvent.filtersCleared());
      },
      expect: () => [
        isA<CategoryFilterInitial>(),
        isA<CategoryToggledSuccess>(),
        isA<ClearAllFiltersSuccess>(),
      ],
    );
  });
}
