// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchRequestModel {

 String get search; String get page;@JsonKey(name: 'per_page') String get perPage;@JsonKey(name: 'hazard_score_ranges', includeIfNull: false, includeToJson: false) List<HazardLevel>? get hazardScoreRanges;@JsonKey(name: 'search_type', includeIfNull: false) String? get searchType;@JsonKey(name: 'sort_by', includeIfNull: false) String? get sortBy;@JsonKey(name: 'sort_order', includeIfNull: false) String? get sortOrder;@JsonKey(includeIfNull: false, includeToJson: false) List<CategoryFilterItemRequestModel>? get categories;@JsonKey(includeIfNull: false, includeToJson: false) List<BrandFilterItemRequestModel>? get brands;@JsonKey(includeIfNull: false, includeToJson: false) IngredientPreferencesFilterModel? get ingredientPreferences;@JsonKey(name: 'category_group_id[]', includeIfNull: false) String? get categoryGroupId;@JsonKey(name: 'category_id[]', includeIfNull: false) String? get categoryId;@JsonKey(name: 'sub_category_id[]', includeIfNull: false) String? get subCategoryId;@JsonKey(name: 'ewg_verified', includeIfNull: false) String? get ewgVerified;@JsonKey(includeToJson: false) bool get isBrowseFilter;@JsonKey(name: 'brand_id[]', includeIfNull: false) String? get brandId;
/// Create a copy of SearchRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchRequestModelCopyWith<SearchRequestModel> get copyWith => _$SearchRequestModelCopyWithImpl<SearchRequestModel>(this as SearchRequestModel, _$identity);

  /// Serializes this SearchRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchRequestModel&&(identical(other.search, search) || other.search == search)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.hazardScoreRanges, hazardScoreRanges)&&(identical(other.searchType, searchType) || other.searchType == searchType)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.brands, brands)&&(identical(other.ingredientPreferences, ingredientPreferences) || other.ingredientPreferences == ingredientPreferences)&&(identical(other.categoryGroupId, categoryGroupId) || other.categoryGroupId == categoryGroupId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.isBrowseFilter, isBrowseFilter) || other.isBrowseFilter == isBrowseFilter)&&(identical(other.brandId, brandId) || other.brandId == brandId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,search,page,perPage,const DeepCollectionEquality().hash(hazardScoreRanges),searchType,sortBy,sortOrder,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(brands),ingredientPreferences,categoryGroupId,categoryId,subCategoryId,ewgVerified,isBrowseFilter,brandId);

@override
String toString() {
  return 'SearchRequestModel(search: $search, page: $page, perPage: $perPage, hazardScoreRanges: $hazardScoreRanges, searchType: $searchType, sortBy: $sortBy, sortOrder: $sortOrder, categories: $categories, brands: $brands, ingredientPreferences: $ingredientPreferences, categoryGroupId: $categoryGroupId, categoryId: $categoryId, subCategoryId: $subCategoryId, ewgVerified: $ewgVerified, isBrowseFilter: $isBrowseFilter, brandId: $brandId)';
}


}

/// @nodoc
abstract mixin class $SearchRequestModelCopyWith<$Res>  {
  factory $SearchRequestModelCopyWith(SearchRequestModel value, $Res Function(SearchRequestModel) _then) = _$SearchRequestModelCopyWithImpl;
@useResult
$Res call({
 String search, String page,@JsonKey(name: 'per_page') String perPage,@JsonKey(name: 'hazard_score_ranges', includeIfNull: false, includeToJson: false) List<HazardLevel>? hazardScoreRanges,@JsonKey(name: 'search_type', includeIfNull: false) String? searchType,@JsonKey(name: 'sort_by', includeIfNull: false) String? sortBy,@JsonKey(name: 'sort_order', includeIfNull: false) String? sortOrder,@JsonKey(includeIfNull: false, includeToJson: false) List<CategoryFilterItemRequestModel>? categories,@JsonKey(includeIfNull: false, includeToJson: false) List<BrandFilterItemRequestModel>? brands,@JsonKey(includeIfNull: false, includeToJson: false) IngredientPreferencesFilterModel? ingredientPreferences,@JsonKey(name: 'category_group_id[]', includeIfNull: false) String? categoryGroupId,@JsonKey(name: 'category_id[]', includeIfNull: false) String? categoryId,@JsonKey(name: 'sub_category_id[]', includeIfNull: false) String? subCategoryId,@JsonKey(name: 'ewg_verified', includeIfNull: false) String? ewgVerified,@JsonKey(includeToJson: false) bool isBrowseFilter,@JsonKey(name: 'brand_id[]', includeIfNull: false) String? brandId
});


$IngredientPreferencesFilterModelCopyWith<$Res>? get ingredientPreferences;

}
/// @nodoc
class _$SearchRequestModelCopyWithImpl<$Res>
    implements $SearchRequestModelCopyWith<$Res> {
  _$SearchRequestModelCopyWithImpl(this._self, this._then);

  final SearchRequestModel _self;
  final $Res Function(SearchRequestModel) _then;

/// Create a copy of SearchRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? search = null,Object? page = null,Object? perPage = null,Object? hazardScoreRanges = freezed,Object? searchType = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,Object? categories = freezed,Object? brands = freezed,Object? ingredientPreferences = freezed,Object? categoryGroupId = freezed,Object? categoryId = freezed,Object? subCategoryId = freezed,Object? ewgVerified = freezed,Object? isBrowseFilter = null,Object? brandId = freezed,}) {
  return _then(_self.copyWith(
search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as String,hazardScoreRanges: freezed == hazardScoreRanges ? _self.hazardScoreRanges : hazardScoreRanges // ignore: cast_nullable_to_non_nullable
as List<HazardLevel>?,searchType: freezed == searchType ? _self.searchType : searchType // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryFilterItemRequestModel>?,brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandFilterItemRequestModel>?,ingredientPreferences: freezed == ingredientPreferences ? _self.ingredientPreferences : ingredientPreferences // ignore: cast_nullable_to_non_nullable
as IngredientPreferencesFilterModel?,categoryGroupId: freezed == categoryGroupId ? _self.categoryGroupId : categoryGroupId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,subCategoryId: freezed == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as String?,isBrowseFilter: null == isBrowseFilter ? _self.isBrowseFilter : isBrowseFilter // ignore: cast_nullable_to_non_nullable
as bool,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SearchRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferencesFilterModelCopyWith<$Res>? get ingredientPreferences {
    if (_self.ingredientPreferences == null) {
    return null;
  }

  return $IngredientPreferencesFilterModelCopyWith<$Res>(_self.ingredientPreferences!, (value) {
    return _then(_self.copyWith(ingredientPreferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchRequestModel].
extension SearchRequestModelPatterns on SearchRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchRequestModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchRequestModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchRequestModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String search,  String page, @JsonKey(name: 'per_page')  String perPage, @JsonKey(name: 'hazard_score_ranges', includeIfNull: false, includeToJson: false)  List<HazardLevel>? hazardScoreRanges, @JsonKey(name: 'search_type', includeIfNull: false)  String? searchType, @JsonKey(name: 'sort_by', includeIfNull: false)  String? sortBy, @JsonKey(name: 'sort_order', includeIfNull: false)  String? sortOrder, @JsonKey(includeIfNull: false, includeToJson: false)  List<CategoryFilterItemRequestModel>? categories, @JsonKey(includeIfNull: false, includeToJson: false)  List<BrandFilterItemRequestModel>? brands, @JsonKey(includeIfNull: false, includeToJson: false)  IngredientPreferencesFilterModel? ingredientPreferences, @JsonKey(name: 'category_group_id[]', includeIfNull: false)  String? categoryGroupId, @JsonKey(name: 'category_id[]', includeIfNull: false)  String? categoryId, @JsonKey(name: 'sub_category_id[]', includeIfNull: false)  String? subCategoryId, @JsonKey(name: 'ewg_verified', includeIfNull: false)  String? ewgVerified, @JsonKey(includeToJson: false)  bool isBrowseFilter, @JsonKey(name: 'brand_id[]', includeIfNull: false)  String? brandId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchRequestModel() when $default != null:
return $default(_that.search,_that.page,_that.perPage,_that.hazardScoreRanges,_that.searchType,_that.sortBy,_that.sortOrder,_that.categories,_that.brands,_that.ingredientPreferences,_that.categoryGroupId,_that.categoryId,_that.subCategoryId,_that.ewgVerified,_that.isBrowseFilter,_that.brandId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String search,  String page, @JsonKey(name: 'per_page')  String perPage, @JsonKey(name: 'hazard_score_ranges', includeIfNull: false, includeToJson: false)  List<HazardLevel>? hazardScoreRanges, @JsonKey(name: 'search_type', includeIfNull: false)  String? searchType, @JsonKey(name: 'sort_by', includeIfNull: false)  String? sortBy, @JsonKey(name: 'sort_order', includeIfNull: false)  String? sortOrder, @JsonKey(includeIfNull: false, includeToJson: false)  List<CategoryFilterItemRequestModel>? categories, @JsonKey(includeIfNull: false, includeToJson: false)  List<BrandFilterItemRequestModel>? brands, @JsonKey(includeIfNull: false, includeToJson: false)  IngredientPreferencesFilterModel? ingredientPreferences, @JsonKey(name: 'category_group_id[]', includeIfNull: false)  String? categoryGroupId, @JsonKey(name: 'category_id[]', includeIfNull: false)  String? categoryId, @JsonKey(name: 'sub_category_id[]', includeIfNull: false)  String? subCategoryId, @JsonKey(name: 'ewg_verified', includeIfNull: false)  String? ewgVerified, @JsonKey(includeToJson: false)  bool isBrowseFilter, @JsonKey(name: 'brand_id[]', includeIfNull: false)  String? brandId)  $default,) {final _that = this;
switch (_that) {
case _SearchRequestModel():
return $default(_that.search,_that.page,_that.perPage,_that.hazardScoreRanges,_that.searchType,_that.sortBy,_that.sortOrder,_that.categories,_that.brands,_that.ingredientPreferences,_that.categoryGroupId,_that.categoryId,_that.subCategoryId,_that.ewgVerified,_that.isBrowseFilter,_that.brandId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String search,  String page, @JsonKey(name: 'per_page')  String perPage, @JsonKey(name: 'hazard_score_ranges', includeIfNull: false, includeToJson: false)  List<HazardLevel>? hazardScoreRanges, @JsonKey(name: 'search_type', includeIfNull: false)  String? searchType, @JsonKey(name: 'sort_by', includeIfNull: false)  String? sortBy, @JsonKey(name: 'sort_order', includeIfNull: false)  String? sortOrder, @JsonKey(includeIfNull: false, includeToJson: false)  List<CategoryFilterItemRequestModel>? categories, @JsonKey(includeIfNull: false, includeToJson: false)  List<BrandFilterItemRequestModel>? brands, @JsonKey(includeIfNull: false, includeToJson: false)  IngredientPreferencesFilterModel? ingredientPreferences, @JsonKey(name: 'category_group_id[]', includeIfNull: false)  String? categoryGroupId, @JsonKey(name: 'category_id[]', includeIfNull: false)  String? categoryId, @JsonKey(name: 'sub_category_id[]', includeIfNull: false)  String? subCategoryId, @JsonKey(name: 'ewg_verified', includeIfNull: false)  String? ewgVerified, @JsonKey(includeToJson: false)  bool isBrowseFilter, @JsonKey(name: 'brand_id[]', includeIfNull: false)  String? brandId)?  $default,) {final _that = this;
switch (_that) {
case _SearchRequestModel() when $default != null:
return $default(_that.search,_that.page,_that.perPage,_that.hazardScoreRanges,_that.searchType,_that.sortBy,_that.sortOrder,_that.categories,_that.brands,_that.ingredientPreferences,_that.categoryGroupId,_that.categoryId,_that.subCategoryId,_that.ewgVerified,_that.isBrowseFilter,_that.brandId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchRequestModel implements SearchRequestModel {
  const _SearchRequestModel({required this.search, required this.page, @JsonKey(name: 'per_page') required this.perPage, @JsonKey(name: 'hazard_score_ranges', includeIfNull: false, includeToJson: false) final  List<HazardLevel>? hazardScoreRanges, @JsonKey(name: 'search_type', includeIfNull: false) this.searchType, @JsonKey(name: 'sort_by', includeIfNull: false) this.sortBy, @JsonKey(name: 'sort_order', includeIfNull: false) this.sortOrder, @JsonKey(includeIfNull: false, includeToJson: false) final  List<CategoryFilterItemRequestModel>? categories, @JsonKey(includeIfNull: false, includeToJson: false) final  List<BrandFilterItemRequestModel>? brands, @JsonKey(includeIfNull: false, includeToJson: false) this.ingredientPreferences, @JsonKey(name: 'category_group_id[]', includeIfNull: false) this.categoryGroupId, @JsonKey(name: 'category_id[]', includeIfNull: false) this.categoryId, @JsonKey(name: 'sub_category_id[]', includeIfNull: false) this.subCategoryId, @JsonKey(name: 'ewg_verified', includeIfNull: false) this.ewgVerified, @JsonKey(includeToJson: false) this.isBrowseFilter = false, @JsonKey(name: 'brand_id[]', includeIfNull: false) this.brandId}): _hazardScoreRanges = hazardScoreRanges,_categories = categories,_brands = brands;
  factory _SearchRequestModel.fromJson(Map<String, dynamic> json) => _$SearchRequestModelFromJson(json);

@override final  String search;
@override final  String page;
@override@JsonKey(name: 'per_page') final  String perPage;
 final  List<HazardLevel>? _hazardScoreRanges;
@override@JsonKey(name: 'hazard_score_ranges', includeIfNull: false, includeToJson: false) List<HazardLevel>? get hazardScoreRanges {
  final value = _hazardScoreRanges;
  if (value == null) return null;
  if (_hazardScoreRanges is EqualUnmodifiableListView) return _hazardScoreRanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'search_type', includeIfNull: false) final  String? searchType;
@override@JsonKey(name: 'sort_by', includeIfNull: false) final  String? sortBy;
@override@JsonKey(name: 'sort_order', includeIfNull: false) final  String? sortOrder;
 final  List<CategoryFilterItemRequestModel>? _categories;
@override@JsonKey(includeIfNull: false, includeToJson: false) List<CategoryFilterItemRequestModel>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BrandFilterItemRequestModel>? _brands;
@override@JsonKey(includeIfNull: false, includeToJson: false) List<BrandFilterItemRequestModel>? get brands {
  final value = _brands;
  if (value == null) return null;
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(includeIfNull: false, includeToJson: false) final  IngredientPreferencesFilterModel? ingredientPreferences;
@override@JsonKey(name: 'category_group_id[]', includeIfNull: false) final  String? categoryGroupId;
@override@JsonKey(name: 'category_id[]', includeIfNull: false) final  String? categoryId;
@override@JsonKey(name: 'sub_category_id[]', includeIfNull: false) final  String? subCategoryId;
@override@JsonKey(name: 'ewg_verified', includeIfNull: false) final  String? ewgVerified;
@override@JsonKey(includeToJson: false) final  bool isBrowseFilter;
@override@JsonKey(name: 'brand_id[]', includeIfNull: false) final  String? brandId;

/// Create a copy of SearchRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchRequestModelCopyWith<_SearchRequestModel> get copyWith => __$SearchRequestModelCopyWithImpl<_SearchRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchRequestModel&&(identical(other.search, search) || other.search == search)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._hazardScoreRanges, _hazardScoreRanges)&&(identical(other.searchType, searchType) || other.searchType == searchType)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.ingredientPreferences, ingredientPreferences) || other.ingredientPreferences == ingredientPreferences)&&(identical(other.categoryGroupId, categoryGroupId) || other.categoryGroupId == categoryGroupId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.isBrowseFilter, isBrowseFilter) || other.isBrowseFilter == isBrowseFilter)&&(identical(other.brandId, brandId) || other.brandId == brandId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,search,page,perPage,const DeepCollectionEquality().hash(_hazardScoreRanges),searchType,sortBy,sortOrder,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_brands),ingredientPreferences,categoryGroupId,categoryId,subCategoryId,ewgVerified,isBrowseFilter,brandId);

@override
String toString() {
  return 'SearchRequestModel(search: $search, page: $page, perPage: $perPage, hazardScoreRanges: $hazardScoreRanges, searchType: $searchType, sortBy: $sortBy, sortOrder: $sortOrder, categories: $categories, brands: $brands, ingredientPreferences: $ingredientPreferences, categoryGroupId: $categoryGroupId, categoryId: $categoryId, subCategoryId: $subCategoryId, ewgVerified: $ewgVerified, isBrowseFilter: $isBrowseFilter, brandId: $brandId)';
}


}

/// @nodoc
abstract mixin class _$SearchRequestModelCopyWith<$Res> implements $SearchRequestModelCopyWith<$Res> {
  factory _$SearchRequestModelCopyWith(_SearchRequestModel value, $Res Function(_SearchRequestModel) _then) = __$SearchRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String search, String page,@JsonKey(name: 'per_page') String perPage,@JsonKey(name: 'hazard_score_ranges', includeIfNull: false, includeToJson: false) List<HazardLevel>? hazardScoreRanges,@JsonKey(name: 'search_type', includeIfNull: false) String? searchType,@JsonKey(name: 'sort_by', includeIfNull: false) String? sortBy,@JsonKey(name: 'sort_order', includeIfNull: false) String? sortOrder,@JsonKey(includeIfNull: false, includeToJson: false) List<CategoryFilterItemRequestModel>? categories,@JsonKey(includeIfNull: false, includeToJson: false) List<BrandFilterItemRequestModel>? brands,@JsonKey(includeIfNull: false, includeToJson: false) IngredientPreferencesFilterModel? ingredientPreferences,@JsonKey(name: 'category_group_id[]', includeIfNull: false) String? categoryGroupId,@JsonKey(name: 'category_id[]', includeIfNull: false) String? categoryId,@JsonKey(name: 'sub_category_id[]', includeIfNull: false) String? subCategoryId,@JsonKey(name: 'ewg_verified', includeIfNull: false) String? ewgVerified,@JsonKey(includeToJson: false) bool isBrowseFilter,@JsonKey(name: 'brand_id[]', includeIfNull: false) String? brandId
});


@override $IngredientPreferencesFilterModelCopyWith<$Res>? get ingredientPreferences;

}
/// @nodoc
class __$SearchRequestModelCopyWithImpl<$Res>
    implements _$SearchRequestModelCopyWith<$Res> {
  __$SearchRequestModelCopyWithImpl(this._self, this._then);

  final _SearchRequestModel _self;
  final $Res Function(_SearchRequestModel) _then;

/// Create a copy of SearchRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? search = null,Object? page = null,Object? perPage = null,Object? hazardScoreRanges = freezed,Object? searchType = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,Object? categories = freezed,Object? brands = freezed,Object? ingredientPreferences = freezed,Object? categoryGroupId = freezed,Object? categoryId = freezed,Object? subCategoryId = freezed,Object? ewgVerified = freezed,Object? isBrowseFilter = null,Object? brandId = freezed,}) {
  return _then(_SearchRequestModel(
search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as String,hazardScoreRanges: freezed == hazardScoreRanges ? _self._hazardScoreRanges : hazardScoreRanges // ignore: cast_nullable_to_non_nullable
as List<HazardLevel>?,searchType: freezed == searchType ? _self.searchType : searchType // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryFilterItemRequestModel>?,brands: freezed == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandFilterItemRequestModel>?,ingredientPreferences: freezed == ingredientPreferences ? _self.ingredientPreferences : ingredientPreferences // ignore: cast_nullable_to_non_nullable
as IngredientPreferencesFilterModel?,categoryGroupId: freezed == categoryGroupId ? _self.categoryGroupId : categoryGroupId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,subCategoryId: freezed == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as String?,isBrowseFilter: null == isBrowseFilter ? _self.isBrowseFilter : isBrowseFilter // ignore: cast_nullable_to_non_nullable
as bool,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SearchRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferencesFilterModelCopyWith<$Res>? get ingredientPreferences {
    if (_self.ingredientPreferences == null) {
    return null;
  }

  return $IngredientPreferencesFilterModelCopyWith<$Res>(_self.ingredientPreferences!, (value) {
    return _then(_self.copyWith(ingredientPreferences: value));
  });
}
}

// dart format on
