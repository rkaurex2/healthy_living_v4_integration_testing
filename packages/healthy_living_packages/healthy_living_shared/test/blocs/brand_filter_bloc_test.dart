import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_state.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';

// ---------------------------------------------------------------------------
// Fixtures
// ---------------------------------------------------------------------------

const _brandA = BrandUiItem(name: 'Acme', id: 1, isSelected: false);
const _brandB = BrandUiItem(name: 'Beta Corp', id: 2, isSelected: false);
const _brandC = BrandUiItem(name: 'Gamma Inc', id: 3, isSelected: true);
const _brandD = BrandUiItem(name: 'Delta Ltd', id: 4, isSelected: false);

final _threeUnselected = [_brandA, _brandB, _brandD];
final _mixedSelection = [_brandA, _brandB, _brandC];
final _allSelected = [
  const BrandUiItem(name: 'Acme', id: 1, isSelected: true),
  const BrandUiItem(name: 'Beta Corp', id: 2, isSelected: true),
];

BrandFilterBloc _makeBloc() => BrandFilterBloc();

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('BrandFilterBloc – initial state', () {
    test('starts with BrandFilterInitial with empty brands', () {
      final bloc = _makeBloc();
      expect(bloc.state, isA<BrandFilterInitial>());
      bloc.close();
    });

    test('brands list is empty before Initialised event', () {
      final bloc = _makeBloc();
      expect(bloc.brands, isEmpty);
      bloc.close();
    });

    test('allSelected is false before Initialised event', () {
      final bloc = _makeBloc();
      expect(bloc.allSelected, isFalse);
      bloc.close();
    });

    test('hasChanges is false before Initialised event', () {
      final bloc = _makeBloc();
      expect(bloc.hasChanges, isFalse);
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // BrandFiltersInitialised
  // -------------------------------------------------------------------------
  group('BrandFiltersInitialised event', () {
    blocTest<BrandFilterBloc, BrandFilterState>(
      'emits BrandFilterInitial with provided brands',
      build: _makeBloc,
      act: (bloc) => bloc.add(
        BrandFilterEvent.initialised(brands: _threeUnselected),
      ),
      expect: () => [
        isA<BrandFilterInitial>().having(
          (s) => s.brands.length,
          'brands.length',
          _threeUnselected.length,
        ),
      ],
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'allSelected is false when not all brands are selected',
      build: _makeBloc,
      act: (bloc) =>
          bloc.add(BrandFilterEvent.initialised(brands: _mixedSelection)),
      verify: (bloc) => expect(bloc.allSelected, isFalse),
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'allSelected is true when all brands are initially selected',
      build: _makeBloc,
      act: (bloc) =>
          bloc.add(BrandFilterEvent.initialised(brands: _allSelected)),
      verify: (bloc) => expect(bloc.allSelected, isTrue),
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'hasChanges is false immediately after initialisation',
      build: _makeBloc,
      act: (bloc) =>
          bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected)),
      verify: (bloc) => expect(bloc.hasChanges, isFalse),
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'updatedBrands mirrors brands immediately after initialisation',
      build: _makeBloc,
      act: (bloc) =>
          bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected)),
      verify: (bloc) {
        expect(bloc.updatedBrands.length, _threeUnselected.length);
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'emits BrandFilterInitial with empty brands when given empty list',
      build: _makeBloc,
      act: (bloc) => bloc.add(BrandFilterEvent.initialised(brands: [])),
      expect: () => [
        isA<BrandFilterInitial>().having(
          (s) => s.brands,
          'brands',
          isEmpty,
        ),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // BrandToggled
  // -------------------------------------------------------------------------
  group('BrandToggled event', () {
    blocTest<BrandFilterBloc, BrandFilterState>(
      'emits BrandToggledSuccess when a brand is toggled',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.brandToggled('Acme'));
      },
      expect: () => [
        isA<BrandFilterInitial>(),  // from Initialised
        isA<BrandToggledSuccess>(), // from Toggle
      ],
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'toggling unselected brand makes it selected',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.brandToggled('Acme'));
      },
      verify: (bloc) {
        final updated =
            bloc.updatedBrands.firstWhere((b) => b.name == 'Acme');
        expect(updated.isSelected, isTrue);
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'toggling selected brand makes it unselected',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _mixedSelection));
        // _brandC (Gamma Inc) starts as selected
        bloc.add(BrandFilterEvent.brandToggled('Gamma Inc'));
      },
      verify: (bloc) {
        final updated =
            bloc.updatedBrands.firstWhere((b) => b.name == 'Gamma Inc');
        expect(updated.isSelected, isFalse);
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'hasChanges is true after toggling a brand',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.brandToggled('Acme'));
      },
      verify: (bloc) => expect(bloc.hasChanges, isTrue),
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'ignores toggle for unknown brand name (no state change after Initialised)',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.brandToggled('Unknown Brand'));
      },
      // Only the Initialised emit should occur; toggle for unknown brand
      // returns early without emitting.
      expect: () => [isA<BrandFilterInitial>()],
    );
  });

  // -------------------------------------------------------------------------
  // BrandFiltersCleared
  // -------------------------------------------------------------------------
  group('BrandFiltersCleared event', () {
    blocTest<BrandFilterBloc, BrandFilterState>(
      'emits ClearAllFiltersSuccess',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _mixedSelection));
        bloc.add(BrandFilterEvent.filtersCleared());
      },
      expect: () => [isA<BrandFilterInitial>(), isA<ClearAllFiltersSuccess>()],
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'all brands become unselected after clear',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _mixedSelection));
        bloc.add(BrandFilterEvent.filtersCleared());
      },
      verify: (bloc) {
        for (final brand in bloc.updatedBrands) {
          expect(brand.isSelected, isFalse,
              reason: '${brand.name} should be unselected after clear');
        }
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'allSelected is false after clear',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _allSelected));
        bloc.add(BrandFilterEvent.filtersCleared());
      },
      verify: (bloc) => expect(bloc.allSelected, isFalse),
    );
  });

  // -------------------------------------------------------------------------
  // AllBrandsToggled
  // -------------------------------------------------------------------------
  group('AllBrandsToggled event', () {
    blocTest<BrandFilterBloc, BrandFilterState>(
      'emits AllBrandsToggleSuccess',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.allBrandsToggled());
      },
      expect: () => [isA<BrandFilterInitial>(), isA<AllBrandsToggleSuccess>()],
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'selects all brands when none were selected',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.allBrandsToggled());
      },
      verify: (bloc) {
        for (final brand in bloc.updatedBrands) {
          expect(brand.isSelected, isTrue,
              reason: '${brand.name} should be selected after allBrandsToggled');
        }
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'deselects all brands when all were selected',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _allSelected));
        // allSelected becomes true after init since all are selected
        bloc.add(BrandFilterEvent.allBrandsToggled());
      },
      verify: (bloc) {
        for (final brand in bloc.updatedBrands) {
          expect(brand.isSelected, isFalse,
              reason: '${brand.name} should be unselected after allBrandsToggled');
        }
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'toggling all twice brings back original state',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.allBrandsToggled()); // select all
        bloc.add(BrandFilterEvent.allBrandsToggled()); // deselect all
      },
      verify: (bloc) {
        for (final brand in bloc.updatedBrands) {
          expect(brand.isSelected, isFalse);
        }
      },
    );
  });

  // -------------------------------------------------------------------------
  // BrandSearchQueryChanged
  // -------------------------------------------------------------------------
  group('BrandSearchQueryChanged event', () {
    blocTest<BrandFilterBloc, BrandFilterState>(
      'emits BrandSearchQueryChangedSuccess',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.searchQueryChanged('Acme'));
      },
      expect: () => [
        isA<BrandFilterInitial>(),
        isA<BrandSearchQueryChangedSuccess>(),
      ],
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'filters brands by search query (case-insensitive)',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.searchQueryChanged('acme'));
      },
      verify: (bloc) {
        expect(bloc.filteredBrands.length, 1);
        expect(bloc.filteredBrands.first.name, 'Acme');
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'returns all brands when query is cleared',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.searchQueryChanged('Acme'));
        bloc.add(BrandFilterEvent.searchQueryChanged(''));
      },
      verify: (bloc) {
        // When query is empty, filteredBrands getter falls back to updatedBrands
        expect(bloc.filteredBrands.length, _threeUnselected.length);
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'returns empty filtered list when query matches nothing',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.searchQueryChanged('ZZZ no match'));
      },
      verify: (bloc) {
        expect(bloc.filteredBrands, isEmpty);
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'partial match returns multiple brands',
      build: _makeBloc,
      act: (bloc) {
        // _brandA = 'Acme', _brandB = 'Beta Corp', _brandD = 'Delta Ltd'
        // All contain 'a' in their name when lowercased:
        //   'acme', 'beta corp', 'delta ltd'
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.searchQueryChanged('a'));
      },
      verify: (bloc) {
        // 'acme', 'beta corp', 'delta ltd' all contain 'a'
        expect(bloc.filteredBrands.length, greaterThan(1));
      },
    );

    blocTest<BrandFilterBloc, BrandFilterState>(
      'stores search query on bloc accessor',
      build: _makeBloc,
      act: (bloc) {
        bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
        bloc.add(BrandFilterEvent.searchQueryChanged('beta'));
      },
      verify: (bloc) => expect(bloc.searchQuery, 'beta'),
    );
  });

  // -------------------------------------------------------------------------
  // isApplyCtaEnabled helper
  // -------------------------------------------------------------------------
  group('isApplyCtaEnabled', () {
    test('is false before any event', () {
      final bloc = _makeBloc();
      expect(bloc.isApplyCtaEnabled, isFalse);
      bloc.close();
    });

    test('is false immediately after initialisation (no changes yet)', () async {
      final bloc = _makeBloc();
      bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
      await bloc.stream.first; // wait for Initialised state
      expect(bloc.isApplyCtaEnabled, isFalse);
      bloc.close();
    });

    test('is true after toggling a brand', () async {
      final bloc = _makeBloc();
      bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
      await bloc.stream.first;
      bloc.add(BrandFilterEvent.brandToggled('Acme'));
      await bloc.stream.first;
      expect(bloc.isApplyCtaEnabled, isTrue);
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // canApply (alias for hasChanges)
  // -------------------------------------------------------------------------
  group('canApply', () {
    test('is false initially', () {
      final bloc = _makeBloc();
      expect(bloc.canApply, isFalse);
      bloc.close();
    });

    test('is true after a toggle', () async {
      final bloc = _makeBloc();
      bloc.add(BrandFilterEvent.initialised(brands: _threeUnselected));
      await bloc.stream.first;
      bloc.add(BrandFilterEvent.brandToggled('Acme'));
      await bloc.stream.first;
      expect(bloc.canApply, isTrue);
      bloc.close();
    });
  });
}
