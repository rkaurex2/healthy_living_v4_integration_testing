// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterEvent()';
}


}

/// @nodoc
class $FilterEventCopyWith<$Res>  {
$FilterEventCopyWith(FilterEvent _, $Res Function(FilterEvent) __);
}


/// Adds pattern-matching-related methods to [FilterEvent].
extension FilterEventPatterns on FilterEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FilterInitialized value)?  initialized,TResult Function( SetSortFilter value)?  setSortFilter,TResult Function( SetHazardScoreFilter value)?  setHazardScoreFilter,TResult Function( SetCategoryFilter value)?  setCategoryFilter,TResult Function( SetBrandFilter value)?  setBrandFilter,TResult Function( AllFiltersCleared value)?  allFiltersCleared,TResult Function( SetIngredientPreferencesFilter value)?  setIngredientPreferencesFilter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FilterInitialized() when initialized != null:
return initialized(_that);case SetSortFilter() when setSortFilter != null:
return setSortFilter(_that);case SetHazardScoreFilter() when setHazardScoreFilter != null:
return setHazardScoreFilter(_that);case SetCategoryFilter() when setCategoryFilter != null:
return setCategoryFilter(_that);case SetBrandFilter() when setBrandFilter != null:
return setBrandFilter(_that);case AllFiltersCleared() when allFiltersCleared != null:
return allFiltersCleared(_that);case SetIngredientPreferencesFilter() when setIngredientPreferencesFilter != null:
return setIngredientPreferencesFilter(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FilterInitialized value)  initialized,required TResult Function( SetSortFilter value)  setSortFilter,required TResult Function( SetHazardScoreFilter value)  setHazardScoreFilter,required TResult Function( SetCategoryFilter value)  setCategoryFilter,required TResult Function( SetBrandFilter value)  setBrandFilter,required TResult Function( AllFiltersCleared value)  allFiltersCleared,required TResult Function( SetIngredientPreferencesFilter value)  setIngredientPreferencesFilter,}){
final _that = this;
switch (_that) {
case FilterInitialized():
return initialized(_that);case SetSortFilter():
return setSortFilter(_that);case SetHazardScoreFilter():
return setHazardScoreFilter(_that);case SetCategoryFilter():
return setCategoryFilter(_that);case SetBrandFilter():
return setBrandFilter(_that);case AllFiltersCleared():
return allFiltersCleared(_that);case SetIngredientPreferencesFilter():
return setIngredientPreferencesFilter(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FilterInitialized value)?  initialized,TResult? Function( SetSortFilter value)?  setSortFilter,TResult? Function( SetHazardScoreFilter value)?  setHazardScoreFilter,TResult? Function( SetCategoryFilter value)?  setCategoryFilter,TResult? Function( SetBrandFilter value)?  setBrandFilter,TResult? Function( AllFiltersCleared value)?  allFiltersCleared,TResult? Function( SetIngredientPreferencesFilter value)?  setIngredientPreferencesFilter,}){
final _that = this;
switch (_that) {
case FilterInitialized() when initialized != null:
return initialized(_that);case SetSortFilter() when setSortFilter != null:
return setSortFilter(_that);case SetHazardScoreFilter() when setHazardScoreFilter != null:
return setHazardScoreFilter(_that);case SetCategoryFilter() when setCategoryFilter != null:
return setCategoryFilter(_that);case SetBrandFilter() when setBrandFilter != null:
return setBrandFilter(_that);case AllFiltersCleared() when allFiltersCleared != null:
return allFiltersCleared(_that);case SetIngredientPreferencesFilter() when setIngredientPreferencesFilter != null:
return setIngredientPreferencesFilter(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ProductCategory productCategory,  ProductFiltersModel? initialFilters,  List<CategoryAggregationModel> categoryAggregations,  List<BrandAggregationModel> brandAggregations,  bool isPremiumUser,  int? initialSelectedCategoryId,  int? initialSelectedSubCategoryId,  int? initialSelectedBrandId,  bool? isEWGVerifiedSearch)?  initialized,TResult Function( SortOption sortOption)?  setSortFilter,TResult Function( HazardLevel hazardLevel)?  setHazardScoreFilter,TResult Function( List<CategoryUiItem> selectedCategories)?  setCategoryFilter,TResult Function( List<BrandUiItem> selectedBrands)?  setBrandFilter,TResult Function()?  allFiltersCleared,TResult Function( IngredientPreferencesFilterModel ingredientPreferencesFilter)?  setIngredientPreferencesFilter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FilterInitialized() when initialized != null:
return initialized(_that.productCategory,_that.initialFilters,_that.categoryAggregations,_that.brandAggregations,_that.isPremiumUser,_that.initialSelectedCategoryId,_that.initialSelectedSubCategoryId,_that.initialSelectedBrandId,_that.isEWGVerifiedSearch);case SetSortFilter() when setSortFilter != null:
return setSortFilter(_that.sortOption);case SetHazardScoreFilter() when setHazardScoreFilter != null:
return setHazardScoreFilter(_that.hazardLevel);case SetCategoryFilter() when setCategoryFilter != null:
return setCategoryFilter(_that.selectedCategories);case SetBrandFilter() when setBrandFilter != null:
return setBrandFilter(_that.selectedBrands);case AllFiltersCleared() when allFiltersCleared != null:
return allFiltersCleared();case SetIngredientPreferencesFilter() when setIngredientPreferencesFilter != null:
return setIngredientPreferencesFilter(_that.ingredientPreferencesFilter);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ProductCategory productCategory,  ProductFiltersModel? initialFilters,  List<CategoryAggregationModel> categoryAggregations,  List<BrandAggregationModel> brandAggregations,  bool isPremiumUser,  int? initialSelectedCategoryId,  int? initialSelectedSubCategoryId,  int? initialSelectedBrandId,  bool? isEWGVerifiedSearch)  initialized,required TResult Function( SortOption sortOption)  setSortFilter,required TResult Function( HazardLevel hazardLevel)  setHazardScoreFilter,required TResult Function( List<CategoryUiItem> selectedCategories)  setCategoryFilter,required TResult Function( List<BrandUiItem> selectedBrands)  setBrandFilter,required TResult Function()  allFiltersCleared,required TResult Function( IngredientPreferencesFilterModel ingredientPreferencesFilter)  setIngredientPreferencesFilter,}) {final _that = this;
switch (_that) {
case FilterInitialized():
return initialized(_that.productCategory,_that.initialFilters,_that.categoryAggregations,_that.brandAggregations,_that.isPremiumUser,_that.initialSelectedCategoryId,_that.initialSelectedSubCategoryId,_that.initialSelectedBrandId,_that.isEWGVerifiedSearch);case SetSortFilter():
return setSortFilter(_that.sortOption);case SetHazardScoreFilter():
return setHazardScoreFilter(_that.hazardLevel);case SetCategoryFilter():
return setCategoryFilter(_that.selectedCategories);case SetBrandFilter():
return setBrandFilter(_that.selectedBrands);case AllFiltersCleared():
return allFiltersCleared();case SetIngredientPreferencesFilter():
return setIngredientPreferencesFilter(_that.ingredientPreferencesFilter);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ProductCategory productCategory,  ProductFiltersModel? initialFilters,  List<CategoryAggregationModel> categoryAggregations,  List<BrandAggregationModel> brandAggregations,  bool isPremiumUser,  int? initialSelectedCategoryId,  int? initialSelectedSubCategoryId,  int? initialSelectedBrandId,  bool? isEWGVerifiedSearch)?  initialized,TResult? Function( SortOption sortOption)?  setSortFilter,TResult? Function( HazardLevel hazardLevel)?  setHazardScoreFilter,TResult? Function( List<CategoryUiItem> selectedCategories)?  setCategoryFilter,TResult? Function( List<BrandUiItem> selectedBrands)?  setBrandFilter,TResult? Function()?  allFiltersCleared,TResult? Function( IngredientPreferencesFilterModel ingredientPreferencesFilter)?  setIngredientPreferencesFilter,}) {final _that = this;
switch (_that) {
case FilterInitialized() when initialized != null:
return initialized(_that.productCategory,_that.initialFilters,_that.categoryAggregations,_that.brandAggregations,_that.isPremiumUser,_that.initialSelectedCategoryId,_that.initialSelectedSubCategoryId,_that.initialSelectedBrandId,_that.isEWGVerifiedSearch);case SetSortFilter() when setSortFilter != null:
return setSortFilter(_that.sortOption);case SetHazardScoreFilter() when setHazardScoreFilter != null:
return setHazardScoreFilter(_that.hazardLevel);case SetCategoryFilter() when setCategoryFilter != null:
return setCategoryFilter(_that.selectedCategories);case SetBrandFilter() when setBrandFilter != null:
return setBrandFilter(_that.selectedBrands);case AllFiltersCleared() when allFiltersCleared != null:
return allFiltersCleared();case SetIngredientPreferencesFilter() when setIngredientPreferencesFilter != null:
return setIngredientPreferencesFilter(_that.ingredientPreferencesFilter);case _:
  return null;

}
}

}

/// @nodoc


class FilterInitialized implements FilterEvent {
  const FilterInitialized({required this.productCategory, required this.initialFilters, required final  List<CategoryAggregationModel> categoryAggregations, required final  List<BrandAggregationModel> brandAggregations, required this.isPremiumUser, this.initialSelectedCategoryId, this.initialSelectedSubCategoryId, this.initialSelectedBrandId, this.isEWGVerifiedSearch}): _categoryAggregations = categoryAggregations,_brandAggregations = brandAggregations;
  

 final  ProductCategory productCategory;
 final  ProductFiltersModel? initialFilters;
 final  List<CategoryAggregationModel> _categoryAggregations;
 List<CategoryAggregationModel> get categoryAggregations {
  if (_categoryAggregations is EqualUnmodifiableListView) return _categoryAggregations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryAggregations);
}

 final  List<BrandAggregationModel> _brandAggregations;
 List<BrandAggregationModel> get brandAggregations {
  if (_brandAggregations is EqualUnmodifiableListView) return _brandAggregations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brandAggregations);
}

 final  bool isPremiumUser;
 final  int? initialSelectedCategoryId;
 final  int? initialSelectedSubCategoryId;
 final  int? initialSelectedBrandId;
 final  bool? isEWGVerifiedSearch;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterInitializedCopyWith<FilterInitialized> get copyWith => _$FilterInitializedCopyWithImpl<FilterInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterInitialized&&(identical(other.productCategory, productCategory) || other.productCategory == productCategory)&&(identical(other.initialFilters, initialFilters) || other.initialFilters == initialFilters)&&const DeepCollectionEquality().equals(other._categoryAggregations, _categoryAggregations)&&const DeepCollectionEquality().equals(other._brandAggregations, _brandAggregations)&&(identical(other.isPremiumUser, isPremiumUser) || other.isPremiumUser == isPremiumUser)&&(identical(other.initialSelectedCategoryId, initialSelectedCategoryId) || other.initialSelectedCategoryId == initialSelectedCategoryId)&&(identical(other.initialSelectedSubCategoryId, initialSelectedSubCategoryId) || other.initialSelectedSubCategoryId == initialSelectedSubCategoryId)&&(identical(other.initialSelectedBrandId, initialSelectedBrandId) || other.initialSelectedBrandId == initialSelectedBrandId)&&(identical(other.isEWGVerifiedSearch, isEWGVerifiedSearch) || other.isEWGVerifiedSearch == isEWGVerifiedSearch));
}


@override
int get hashCode => Object.hash(runtimeType,productCategory,initialFilters,const DeepCollectionEquality().hash(_categoryAggregations),const DeepCollectionEquality().hash(_brandAggregations),isPremiumUser,initialSelectedCategoryId,initialSelectedSubCategoryId,initialSelectedBrandId,isEWGVerifiedSearch);

@override
String toString() {
  return 'FilterEvent.initialized(productCategory: $productCategory, initialFilters: $initialFilters, categoryAggregations: $categoryAggregations, brandAggregations: $brandAggregations, isPremiumUser: $isPremiumUser, initialSelectedCategoryId: $initialSelectedCategoryId, initialSelectedSubCategoryId: $initialSelectedSubCategoryId, initialSelectedBrandId: $initialSelectedBrandId, isEWGVerifiedSearch: $isEWGVerifiedSearch)';
}


}

/// @nodoc
abstract mixin class $FilterInitializedCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory $FilterInitializedCopyWith(FilterInitialized value, $Res Function(FilterInitialized) _then) = _$FilterInitializedCopyWithImpl;
@useResult
$Res call({
 ProductCategory productCategory, ProductFiltersModel? initialFilters, List<CategoryAggregationModel> categoryAggregations, List<BrandAggregationModel> brandAggregations, bool isPremiumUser, int? initialSelectedCategoryId, int? initialSelectedSubCategoryId, int? initialSelectedBrandId, bool? isEWGVerifiedSearch
});


$ProductFiltersModelCopyWith<$Res>? get initialFilters;

}
/// @nodoc
class _$FilterInitializedCopyWithImpl<$Res>
    implements $FilterInitializedCopyWith<$Res> {
  _$FilterInitializedCopyWithImpl(this._self, this._then);

  final FilterInitialized _self;
  final $Res Function(FilterInitialized) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productCategory = null,Object? initialFilters = freezed,Object? categoryAggregations = null,Object? brandAggregations = null,Object? isPremiumUser = null,Object? initialSelectedCategoryId = freezed,Object? initialSelectedSubCategoryId = freezed,Object? initialSelectedBrandId = freezed,Object? isEWGVerifiedSearch = freezed,}) {
  return _then(FilterInitialized(
productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,initialFilters: freezed == initialFilters ? _self.initialFilters : initialFilters // ignore: cast_nullable_to_non_nullable
as ProductFiltersModel?,categoryAggregations: null == categoryAggregations ? _self._categoryAggregations : categoryAggregations // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationModel>,brandAggregations: null == brandAggregations ? _self._brandAggregations : brandAggregations // ignore: cast_nullable_to_non_nullable
as List<BrandAggregationModel>,isPremiumUser: null == isPremiumUser ? _self.isPremiumUser : isPremiumUser // ignore: cast_nullable_to_non_nullable
as bool,initialSelectedCategoryId: freezed == initialSelectedCategoryId ? _self.initialSelectedCategoryId : initialSelectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,initialSelectedSubCategoryId: freezed == initialSelectedSubCategoryId ? _self.initialSelectedSubCategoryId : initialSelectedSubCategoryId // ignore: cast_nullable_to_non_nullable
as int?,initialSelectedBrandId: freezed == initialSelectedBrandId ? _self.initialSelectedBrandId : initialSelectedBrandId // ignore: cast_nullable_to_non_nullable
as int?,isEWGVerifiedSearch: freezed == isEWGVerifiedSearch ? _self.isEWGVerifiedSearch : isEWGVerifiedSearch // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductFiltersModelCopyWith<$Res>? get initialFilters {
    if (_self.initialFilters == null) {
    return null;
  }

  return $ProductFiltersModelCopyWith<$Res>(_self.initialFilters!, (value) {
    return _then(_self.copyWith(initialFilters: value));
  });
}
}

/// @nodoc


class SetSortFilter implements FilterEvent {
  const SetSortFilter({required this.sortOption});
  

 final  SortOption sortOption;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetSortFilterCopyWith<SetSortFilter> get copyWith => _$SetSortFilterCopyWithImpl<SetSortFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetSortFilter&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption));
}


@override
int get hashCode => Object.hash(runtimeType,sortOption);

@override
String toString() {
  return 'FilterEvent.setSortFilter(sortOption: $sortOption)';
}


}

/// @nodoc
abstract mixin class $SetSortFilterCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory $SetSortFilterCopyWith(SetSortFilter value, $Res Function(SetSortFilter) _then) = _$SetSortFilterCopyWithImpl;
@useResult
$Res call({
 SortOption sortOption
});


$SortOptionCopyWith<$Res> get sortOption;

}
/// @nodoc
class _$SetSortFilterCopyWithImpl<$Res>
    implements $SetSortFilterCopyWith<$Res> {
  _$SetSortFilterCopyWithImpl(this._self, this._then);

  final SetSortFilter _self;
  final $Res Function(SetSortFilter) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sortOption = null,}) {
  return _then(SetSortFilter(
sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as SortOption,
  ));
}

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SortOptionCopyWith<$Res> get sortOption {
  
  return $SortOptionCopyWith<$Res>(_self.sortOption, (value) {
    return _then(_self.copyWith(sortOption: value));
  });
}
}

/// @nodoc


class SetHazardScoreFilter implements FilterEvent {
  const SetHazardScoreFilter({required this.hazardLevel});
  

 final  HazardLevel hazardLevel;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetHazardScoreFilterCopyWith<SetHazardScoreFilter> get copyWith => _$SetHazardScoreFilterCopyWithImpl<SetHazardScoreFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetHazardScoreFilter&&(identical(other.hazardLevel, hazardLevel) || other.hazardLevel == hazardLevel));
}


@override
int get hashCode => Object.hash(runtimeType,hazardLevel);

@override
String toString() {
  return 'FilterEvent.setHazardScoreFilter(hazardLevel: $hazardLevel)';
}


}

/// @nodoc
abstract mixin class $SetHazardScoreFilterCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory $SetHazardScoreFilterCopyWith(SetHazardScoreFilter value, $Res Function(SetHazardScoreFilter) _then) = _$SetHazardScoreFilterCopyWithImpl;
@useResult
$Res call({
 HazardLevel hazardLevel
});




}
/// @nodoc
class _$SetHazardScoreFilterCopyWithImpl<$Res>
    implements $SetHazardScoreFilterCopyWith<$Res> {
  _$SetHazardScoreFilterCopyWithImpl(this._self, this._then);

  final SetHazardScoreFilter _self;
  final $Res Function(SetHazardScoreFilter) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hazardLevel = null,}) {
  return _then(SetHazardScoreFilter(
hazardLevel: null == hazardLevel ? _self.hazardLevel : hazardLevel // ignore: cast_nullable_to_non_nullable
as HazardLevel,
  ));
}


}

/// @nodoc


class SetCategoryFilter implements FilterEvent {
  const SetCategoryFilter({required final  List<CategoryUiItem> selectedCategories}): _selectedCategories = selectedCategories;
  

 final  List<CategoryUiItem> _selectedCategories;
 List<CategoryUiItem> get selectedCategories {
  if (_selectedCategories is EqualUnmodifiableListView) return _selectedCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedCategories);
}


/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetCategoryFilterCopyWith<SetCategoryFilter> get copyWith => _$SetCategoryFilterCopyWithImpl<SetCategoryFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetCategoryFilter&&const DeepCollectionEquality().equals(other._selectedCategories, _selectedCategories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedCategories));

@override
String toString() {
  return 'FilterEvent.setCategoryFilter(selectedCategories: $selectedCategories)';
}


}

/// @nodoc
abstract mixin class $SetCategoryFilterCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory $SetCategoryFilterCopyWith(SetCategoryFilter value, $Res Function(SetCategoryFilter) _then) = _$SetCategoryFilterCopyWithImpl;
@useResult
$Res call({
 List<CategoryUiItem> selectedCategories
});




}
/// @nodoc
class _$SetCategoryFilterCopyWithImpl<$Res>
    implements $SetCategoryFilterCopyWith<$Res> {
  _$SetCategoryFilterCopyWithImpl(this._self, this._then);

  final SetCategoryFilter _self;
  final $Res Function(SetCategoryFilter) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedCategories = null,}) {
  return _then(SetCategoryFilter(
selectedCategories: null == selectedCategories ? _self._selectedCategories : selectedCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>,
  ));
}


}

/// @nodoc


class SetBrandFilter implements FilterEvent {
  const SetBrandFilter({required final  List<BrandUiItem> selectedBrands}): _selectedBrands = selectedBrands;
  

 final  List<BrandUiItem> _selectedBrands;
 List<BrandUiItem> get selectedBrands {
  if (_selectedBrands is EqualUnmodifiableListView) return _selectedBrands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedBrands);
}


/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetBrandFilterCopyWith<SetBrandFilter> get copyWith => _$SetBrandFilterCopyWithImpl<SetBrandFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBrandFilter&&const DeepCollectionEquality().equals(other._selectedBrands, _selectedBrands));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedBrands));

@override
String toString() {
  return 'FilterEvent.setBrandFilter(selectedBrands: $selectedBrands)';
}


}

/// @nodoc
abstract mixin class $SetBrandFilterCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory $SetBrandFilterCopyWith(SetBrandFilter value, $Res Function(SetBrandFilter) _then) = _$SetBrandFilterCopyWithImpl;
@useResult
$Res call({
 List<BrandUiItem> selectedBrands
});




}
/// @nodoc
class _$SetBrandFilterCopyWithImpl<$Res>
    implements $SetBrandFilterCopyWith<$Res> {
  _$SetBrandFilterCopyWithImpl(this._self, this._then);

  final SetBrandFilter _self;
  final $Res Function(SetBrandFilter) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedBrands = null,}) {
  return _then(SetBrandFilter(
selectedBrands: null == selectedBrands ? _self._selectedBrands : selectedBrands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,
  ));
}


}

/// @nodoc


class AllFiltersCleared implements FilterEvent {
  const AllFiltersCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllFiltersCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterEvent.allFiltersCleared()';
}


}




/// @nodoc


class SetIngredientPreferencesFilter implements FilterEvent {
  const SetIngredientPreferencesFilter({required this.ingredientPreferencesFilter});
  

 final  IngredientPreferencesFilterModel ingredientPreferencesFilter;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetIngredientPreferencesFilterCopyWith<SetIngredientPreferencesFilter> get copyWith => _$SetIngredientPreferencesFilterCopyWithImpl<SetIngredientPreferencesFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetIngredientPreferencesFilter&&(identical(other.ingredientPreferencesFilter, ingredientPreferencesFilter) || other.ingredientPreferencesFilter == ingredientPreferencesFilter));
}


@override
int get hashCode => Object.hash(runtimeType,ingredientPreferencesFilter);

@override
String toString() {
  return 'FilterEvent.setIngredientPreferencesFilter(ingredientPreferencesFilter: $ingredientPreferencesFilter)';
}


}

/// @nodoc
abstract mixin class $SetIngredientPreferencesFilterCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory $SetIngredientPreferencesFilterCopyWith(SetIngredientPreferencesFilter value, $Res Function(SetIngredientPreferencesFilter) _then) = _$SetIngredientPreferencesFilterCopyWithImpl;
@useResult
$Res call({
 IngredientPreferencesFilterModel ingredientPreferencesFilter
});


$IngredientPreferencesFilterModelCopyWith<$Res> get ingredientPreferencesFilter;

}
/// @nodoc
class _$SetIngredientPreferencesFilterCopyWithImpl<$Res>
    implements $SetIngredientPreferencesFilterCopyWith<$Res> {
  _$SetIngredientPreferencesFilterCopyWithImpl(this._self, this._then);

  final SetIngredientPreferencesFilter _self;
  final $Res Function(SetIngredientPreferencesFilter) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ingredientPreferencesFilter = null,}) {
  return _then(SetIngredientPreferencesFilter(
ingredientPreferencesFilter: null == ingredientPreferencesFilter ? _self.ingredientPreferencesFilter : ingredientPreferencesFilter // ignore: cast_nullable_to_non_nullable
as IngredientPreferencesFilterModel,
  ));
}

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferencesFilterModelCopyWith<$Res> get ingredientPreferencesFilter {
  
  return $IngredientPreferencesFilterModelCopyWith<$Res>(_self.ingredientPreferencesFilter, (value) {
    return _then(_self.copyWith(ingredientPreferencesFilter: value));
  });
}
}

// dart format on
