import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_state.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class BrandFilterBloc extends Bloc<BrandFilterEvent, BrandFilterState> {
  List<BrandUiItem> _brands = [];
  List<BrandUiItem> _updatedBrands = [];
  bool _allSelected = false;
  String _searchQuery = '';
  List<BrandUiItem> _filteredBrands = [];

  List<BrandUiItem> get brands => _brands;
  List<BrandUiItem> get updatedBrands => _updatedBrands;
  List<BrandUiItem> get filteredBrands =>
      _filteredBrands.isEmpty && _searchQuery.isEmpty
          ? _updatedBrands
          : _filteredBrands;
  String get searchQuery => _searchQuery;
  bool get hasChanges => _brands.any((original) {
    final updated = _updatedBrands.firstWhere(
      (u) => u.name == original.name,
      orElse: () => original,
    );
    return original.isSelected != updated.isSelected;
  });
  bool get canApply => hasChanges;
  bool get allSelected => _allSelected;

  BrandFilterBloc() : super(BrandFilterState.initial(brands: [])) {
    on<BrandFiltersInitialised>(_onInitialised);
    on<BrandToggled>(_onToggleBrand);
    on<BrandFiltersCleared>(_onClearAll);
    on<AllBrandsToggled>(_onAllBrandsToggled);
    on<BrandSearchQueryChanged>(_onSearchQueryChanged);
  }

  void _onInitialised(
    BrandFiltersInitialised event,
    Emitter<BrandFilterState> emit,
  ) {
    _brands = [...event.brands];
    _updatedBrands = [...event.brands];
    _allSelected = !_updatedBrands.any((brand) => brand.isSelected == false);
    emit(BrandFilterState.initial(brands: _updatedBrands));
  }

  void _onToggleBrand(BrandToggled event, Emitter<BrandFilterState> emit) {
    final updatedBrands = [..._updatedBrands];
    final idx = updatedBrands.indexWhere((b) => b.name == event.brandName);
    if (idx == -1) return;

    final brand = updatedBrands[idx];

    if (brand.isSelected) {
      updatedBrands[idx] = brand.copyWith(isSelected: false);
    } else {
      updatedBrands[idx] = brand.copyWith(isSelected: true);
    }

    _updatedBrands = updatedBrands;
    _allSelected = !_updatedBrands.any((brand) => brand.isSelected == false);

    // Update filtered brands if search is active
    if (_searchQuery.isNotEmpty) {
      _filterBrands();
    }

    emit(
      BrandFilterState.brandToggleSuccess(
        brands: updatedBrands,
        searchQuery: _searchQuery,
        filteredBrands: _filteredBrands,
      ),
    );
  }

  void _onClearAll(BrandFiltersCleared event, Emitter<BrandFilterState> emit) {
    final clearedBrands =
        _updatedBrands
            .map((brand) => brand.copyWith(isSelected: false))
            .toList();

    _updatedBrands = clearedBrands;
    _allSelected = false;

    // Update filtered brands if search is active
    if (_searchQuery.isNotEmpty) {
      _filterBrands();
    }

    emit(
      BrandFilterState.clearAllFiltersSuccess(
        brands: clearedBrands,
        searchQuery: _searchQuery,
        filteredBrands: _filteredBrands,
      ),
    );
  }

  void _onAllBrandsToggled(
    AllBrandsToggled event,
    Emitter<BrandFilterState> emit,
  ) {
    _allSelected = !_allSelected;
    _updatedBrands =
        _updatedBrands
            .map((brand) => brand.copyWith(isSelected: _allSelected))
            .toList();

    // Update filtered brands if search is active
    if (_searchQuery.isNotEmpty) {
      _filterBrands();
    }

    emit(
      BrandFilterState.allBrandsToggleSuccess(
        brands: _updatedBrands,
        searchQuery: _searchQuery,
        filteredBrands: _filteredBrands,
      ),
    );
  }

  void _onSearchQueryChanged(
    BrandSearchQueryChanged event,
    Emitter<BrandFilterState> emit,
  ) {
    _searchQuery = event.query;
    _filterBrands();

    emit(
      BrandFilterState.searchQueryChangedSuccess(
        brands: _updatedBrands,
        searchQuery: _searchQuery,
        filteredBrands: _filteredBrands,
      ),
    );
  }

  void _filterBrands() {
    if (_searchQuery.isEmpty) {
      _filteredBrands = List.from(_updatedBrands);
    } else {
      final query = _searchQuery.toLowerCase();
      _filteredBrands =
          _updatedBrands
              .where((brand) => brand.name.toLowerCase().contains(query))
              .toList();
    }
  }

  bool get isApplyCtaEnabled {
    bool isEnabled = false;
    if (_brands.length == _updatedBrands.length) {
      for (int i = 0; i < _brands.length; i++) {
        if (_brands[i] != _updatedBrands[i]) {
          isEnabled = true;
          break;
        }
      }
    }
    return isEnabled;
  }
}
