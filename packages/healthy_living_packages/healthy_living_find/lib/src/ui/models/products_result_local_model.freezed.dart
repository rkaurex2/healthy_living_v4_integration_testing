// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_result_local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsResultLocalModel {

 List<SearchProductModel>? get foodSearchResultsList; SearchPaginationModel? get foodSearchPaginationModel; List<SearchProductModel>? get cleanersSearchResultsList; SearchPaginationModel? get cleanersSearchPaginationModel; List<SearchProductModel>? get personalCareSearchResultsList; SearchPaginationModel? get personalCareSearchPaginationModel; SearchType? get selectedCategoryType; Map<String, int>? get productTypeCount; Map<ProductCategory, ProductFiltersModel>? get appliedFilters; Map<ProductCategory, List<CategoryAggregationModel>>? get categoryAggregationsProductCategoryMap; Map<ProductCategory, List<BrandAggregationModel>>? get brandAggregationsProductCategoryMap;
/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsResultLocalModelCopyWith<ProductsResultLocalModel> get copyWith => _$ProductsResultLocalModelCopyWithImpl<ProductsResultLocalModel>(this as ProductsResultLocalModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsResultLocalModel&&const DeepCollectionEquality().equals(other.foodSearchResultsList, foodSearchResultsList)&&(identical(other.foodSearchPaginationModel, foodSearchPaginationModel) || other.foodSearchPaginationModel == foodSearchPaginationModel)&&const DeepCollectionEquality().equals(other.cleanersSearchResultsList, cleanersSearchResultsList)&&(identical(other.cleanersSearchPaginationModel, cleanersSearchPaginationModel) || other.cleanersSearchPaginationModel == cleanersSearchPaginationModel)&&const DeepCollectionEquality().equals(other.personalCareSearchResultsList, personalCareSearchResultsList)&&(identical(other.personalCareSearchPaginationModel, personalCareSearchPaginationModel) || other.personalCareSearchPaginationModel == personalCareSearchPaginationModel)&&(identical(other.selectedCategoryType, selectedCategoryType) || other.selectedCategoryType == selectedCategoryType)&&const DeepCollectionEquality().equals(other.productTypeCount, productTypeCount)&&const DeepCollectionEquality().equals(other.appliedFilters, appliedFilters)&&const DeepCollectionEquality().equals(other.categoryAggregationsProductCategoryMap, categoryAggregationsProductCategoryMap)&&const DeepCollectionEquality().equals(other.brandAggregationsProductCategoryMap, brandAggregationsProductCategoryMap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(foodSearchResultsList),foodSearchPaginationModel,const DeepCollectionEquality().hash(cleanersSearchResultsList),cleanersSearchPaginationModel,const DeepCollectionEquality().hash(personalCareSearchResultsList),personalCareSearchPaginationModel,selectedCategoryType,const DeepCollectionEquality().hash(productTypeCount),const DeepCollectionEquality().hash(appliedFilters),const DeepCollectionEquality().hash(categoryAggregationsProductCategoryMap),const DeepCollectionEquality().hash(brandAggregationsProductCategoryMap));

@override
String toString() {
  return 'ProductsResultLocalModel(foodSearchResultsList: $foodSearchResultsList, foodSearchPaginationModel: $foodSearchPaginationModel, cleanersSearchResultsList: $cleanersSearchResultsList, cleanersSearchPaginationModel: $cleanersSearchPaginationModel, personalCareSearchResultsList: $personalCareSearchResultsList, personalCareSearchPaginationModel: $personalCareSearchPaginationModel, selectedCategoryType: $selectedCategoryType, productTypeCount: $productTypeCount, appliedFilters: $appliedFilters, categoryAggregationsProductCategoryMap: $categoryAggregationsProductCategoryMap, brandAggregationsProductCategoryMap: $brandAggregationsProductCategoryMap)';
}


}

/// @nodoc
abstract mixin class $ProductsResultLocalModelCopyWith<$Res>  {
  factory $ProductsResultLocalModelCopyWith(ProductsResultLocalModel value, $Res Function(ProductsResultLocalModel) _then) = _$ProductsResultLocalModelCopyWithImpl;
@useResult
$Res call({
 List<SearchProductModel>? foodSearchResultsList, SearchPaginationModel? foodSearchPaginationModel, List<SearchProductModel>? cleanersSearchResultsList, SearchPaginationModel? cleanersSearchPaginationModel, List<SearchProductModel>? personalCareSearchResultsList, SearchPaginationModel? personalCareSearchPaginationModel, SearchType? selectedCategoryType, Map<String, int>? productTypeCount, Map<ProductCategory, ProductFiltersModel>? appliedFilters, Map<ProductCategory, List<CategoryAggregationModel>>? categoryAggregationsProductCategoryMap, Map<ProductCategory, List<BrandAggregationModel>>? brandAggregationsProductCategoryMap
});


$SearchPaginationModelCopyWith<$Res>? get foodSearchPaginationModel;$SearchPaginationModelCopyWith<$Res>? get cleanersSearchPaginationModel;$SearchPaginationModelCopyWith<$Res>? get personalCareSearchPaginationModel;

}
/// @nodoc
class _$ProductsResultLocalModelCopyWithImpl<$Res>
    implements $ProductsResultLocalModelCopyWith<$Res> {
  _$ProductsResultLocalModelCopyWithImpl(this._self, this._then);

  final ProductsResultLocalModel _self;
  final $Res Function(ProductsResultLocalModel) _then;

/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodSearchResultsList = freezed,Object? foodSearchPaginationModel = freezed,Object? cleanersSearchResultsList = freezed,Object? cleanersSearchPaginationModel = freezed,Object? personalCareSearchResultsList = freezed,Object? personalCareSearchPaginationModel = freezed,Object? selectedCategoryType = freezed,Object? productTypeCount = freezed,Object? appliedFilters = freezed,Object? categoryAggregationsProductCategoryMap = freezed,Object? brandAggregationsProductCategoryMap = freezed,}) {
  return _then(_self.copyWith(
foodSearchResultsList: freezed == foodSearchResultsList ? _self.foodSearchResultsList : foodSearchResultsList // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>?,foodSearchPaginationModel: freezed == foodSearchPaginationModel ? _self.foodSearchPaginationModel : foodSearchPaginationModel // ignore: cast_nullable_to_non_nullable
as SearchPaginationModel?,cleanersSearchResultsList: freezed == cleanersSearchResultsList ? _self.cleanersSearchResultsList : cleanersSearchResultsList // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>?,cleanersSearchPaginationModel: freezed == cleanersSearchPaginationModel ? _self.cleanersSearchPaginationModel : cleanersSearchPaginationModel // ignore: cast_nullable_to_non_nullable
as SearchPaginationModel?,personalCareSearchResultsList: freezed == personalCareSearchResultsList ? _self.personalCareSearchResultsList : personalCareSearchResultsList // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>?,personalCareSearchPaginationModel: freezed == personalCareSearchPaginationModel ? _self.personalCareSearchPaginationModel : personalCareSearchPaginationModel // ignore: cast_nullable_to_non_nullable
as SearchPaginationModel?,selectedCategoryType: freezed == selectedCategoryType ? _self.selectedCategoryType : selectedCategoryType // ignore: cast_nullable_to_non_nullable
as SearchType?,productTypeCount: freezed == productTypeCount ? _self.productTypeCount : productTypeCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,appliedFilters: freezed == appliedFilters ? _self.appliedFilters : appliedFilters // ignore: cast_nullable_to_non_nullable
as Map<ProductCategory, ProductFiltersModel>?,categoryAggregationsProductCategoryMap: freezed == categoryAggregationsProductCategoryMap ? _self.categoryAggregationsProductCategoryMap : categoryAggregationsProductCategoryMap // ignore: cast_nullable_to_non_nullable
as Map<ProductCategory, List<CategoryAggregationModel>>?,brandAggregationsProductCategoryMap: freezed == brandAggregationsProductCategoryMap ? _self.brandAggregationsProductCategoryMap : brandAggregationsProductCategoryMap // ignore: cast_nullable_to_non_nullable
as Map<ProductCategory, List<BrandAggregationModel>>?,
  ));
}
/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<$Res>? get foodSearchPaginationModel {
    if (_self.foodSearchPaginationModel == null) {
    return null;
  }

  return $SearchPaginationModelCopyWith<$Res>(_self.foodSearchPaginationModel!, (value) {
    return _then(_self.copyWith(foodSearchPaginationModel: value));
  });
}/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<$Res>? get cleanersSearchPaginationModel {
    if (_self.cleanersSearchPaginationModel == null) {
    return null;
  }

  return $SearchPaginationModelCopyWith<$Res>(_self.cleanersSearchPaginationModel!, (value) {
    return _then(_self.copyWith(cleanersSearchPaginationModel: value));
  });
}/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<$Res>? get personalCareSearchPaginationModel {
    if (_self.personalCareSearchPaginationModel == null) {
    return null;
  }

  return $SearchPaginationModelCopyWith<$Res>(_self.personalCareSearchPaginationModel!, (value) {
    return _then(_self.copyWith(personalCareSearchPaginationModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductsResultLocalModel].
extension ProductsResultLocalModelPatterns on ProductsResultLocalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsResultLocalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsResultLocalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsResultLocalModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductsResultLocalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsResultLocalModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsResultLocalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchProductModel>? foodSearchResultsList,  SearchPaginationModel? foodSearchPaginationModel,  List<SearchProductModel>? cleanersSearchResultsList,  SearchPaginationModel? cleanersSearchPaginationModel,  List<SearchProductModel>? personalCareSearchResultsList,  SearchPaginationModel? personalCareSearchPaginationModel,  SearchType? selectedCategoryType,  Map<String, int>? productTypeCount,  Map<ProductCategory, ProductFiltersModel>? appliedFilters,  Map<ProductCategory, List<CategoryAggregationModel>>? categoryAggregationsProductCategoryMap,  Map<ProductCategory, List<BrandAggregationModel>>? brandAggregationsProductCategoryMap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsResultLocalModel() when $default != null:
return $default(_that.foodSearchResultsList,_that.foodSearchPaginationModel,_that.cleanersSearchResultsList,_that.cleanersSearchPaginationModel,_that.personalCareSearchResultsList,_that.personalCareSearchPaginationModel,_that.selectedCategoryType,_that.productTypeCount,_that.appliedFilters,_that.categoryAggregationsProductCategoryMap,_that.brandAggregationsProductCategoryMap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchProductModel>? foodSearchResultsList,  SearchPaginationModel? foodSearchPaginationModel,  List<SearchProductModel>? cleanersSearchResultsList,  SearchPaginationModel? cleanersSearchPaginationModel,  List<SearchProductModel>? personalCareSearchResultsList,  SearchPaginationModel? personalCareSearchPaginationModel,  SearchType? selectedCategoryType,  Map<String, int>? productTypeCount,  Map<ProductCategory, ProductFiltersModel>? appliedFilters,  Map<ProductCategory, List<CategoryAggregationModel>>? categoryAggregationsProductCategoryMap,  Map<ProductCategory, List<BrandAggregationModel>>? brandAggregationsProductCategoryMap)  $default,) {final _that = this;
switch (_that) {
case _ProductsResultLocalModel():
return $default(_that.foodSearchResultsList,_that.foodSearchPaginationModel,_that.cleanersSearchResultsList,_that.cleanersSearchPaginationModel,_that.personalCareSearchResultsList,_that.personalCareSearchPaginationModel,_that.selectedCategoryType,_that.productTypeCount,_that.appliedFilters,_that.categoryAggregationsProductCategoryMap,_that.brandAggregationsProductCategoryMap);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchProductModel>? foodSearchResultsList,  SearchPaginationModel? foodSearchPaginationModel,  List<SearchProductModel>? cleanersSearchResultsList,  SearchPaginationModel? cleanersSearchPaginationModel,  List<SearchProductModel>? personalCareSearchResultsList,  SearchPaginationModel? personalCareSearchPaginationModel,  SearchType? selectedCategoryType,  Map<String, int>? productTypeCount,  Map<ProductCategory, ProductFiltersModel>? appliedFilters,  Map<ProductCategory, List<CategoryAggregationModel>>? categoryAggregationsProductCategoryMap,  Map<ProductCategory, List<BrandAggregationModel>>? brandAggregationsProductCategoryMap)?  $default,) {final _that = this;
switch (_that) {
case _ProductsResultLocalModel() when $default != null:
return $default(_that.foodSearchResultsList,_that.foodSearchPaginationModel,_that.cleanersSearchResultsList,_that.cleanersSearchPaginationModel,_that.personalCareSearchResultsList,_that.personalCareSearchPaginationModel,_that.selectedCategoryType,_that.productTypeCount,_that.appliedFilters,_that.categoryAggregationsProductCategoryMap,_that.brandAggregationsProductCategoryMap);case _:
  return null;

}
}

}

/// @nodoc


class _ProductsResultLocalModel implements ProductsResultLocalModel {
  const _ProductsResultLocalModel({required final  List<SearchProductModel>? foodSearchResultsList, required this.foodSearchPaginationModel, required final  List<SearchProductModel>? cleanersSearchResultsList, required this.cleanersSearchPaginationModel, required final  List<SearchProductModel>? personalCareSearchResultsList, required this.personalCareSearchPaginationModel, required this.selectedCategoryType, required final  Map<String, int>? productTypeCount, final  Map<ProductCategory, ProductFiltersModel>? appliedFilters, final  Map<ProductCategory, List<CategoryAggregationModel>>? categoryAggregationsProductCategoryMap, final  Map<ProductCategory, List<BrandAggregationModel>>? brandAggregationsProductCategoryMap}): _foodSearchResultsList = foodSearchResultsList,_cleanersSearchResultsList = cleanersSearchResultsList,_personalCareSearchResultsList = personalCareSearchResultsList,_productTypeCount = productTypeCount,_appliedFilters = appliedFilters,_categoryAggregationsProductCategoryMap = categoryAggregationsProductCategoryMap,_brandAggregationsProductCategoryMap = brandAggregationsProductCategoryMap;
  

 final  List<SearchProductModel>? _foodSearchResultsList;
@override List<SearchProductModel>? get foodSearchResultsList {
  final value = _foodSearchResultsList;
  if (value == null) return null;
  if (_foodSearchResultsList is EqualUnmodifiableListView) return _foodSearchResultsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  SearchPaginationModel? foodSearchPaginationModel;
 final  List<SearchProductModel>? _cleanersSearchResultsList;
@override List<SearchProductModel>? get cleanersSearchResultsList {
  final value = _cleanersSearchResultsList;
  if (value == null) return null;
  if (_cleanersSearchResultsList is EqualUnmodifiableListView) return _cleanersSearchResultsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  SearchPaginationModel? cleanersSearchPaginationModel;
 final  List<SearchProductModel>? _personalCareSearchResultsList;
@override List<SearchProductModel>? get personalCareSearchResultsList {
  final value = _personalCareSearchResultsList;
  if (value == null) return null;
  if (_personalCareSearchResultsList is EqualUnmodifiableListView) return _personalCareSearchResultsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  SearchPaginationModel? personalCareSearchPaginationModel;
@override final  SearchType? selectedCategoryType;
 final  Map<String, int>? _productTypeCount;
@override Map<String, int>? get productTypeCount {
  final value = _productTypeCount;
  if (value == null) return null;
  if (_productTypeCount is EqualUnmodifiableMapView) return _productTypeCount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<ProductCategory, ProductFiltersModel>? _appliedFilters;
@override Map<ProductCategory, ProductFiltersModel>? get appliedFilters {
  final value = _appliedFilters;
  if (value == null) return null;
  if (_appliedFilters is EqualUnmodifiableMapView) return _appliedFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<ProductCategory, List<CategoryAggregationModel>>? _categoryAggregationsProductCategoryMap;
@override Map<ProductCategory, List<CategoryAggregationModel>>? get categoryAggregationsProductCategoryMap {
  final value = _categoryAggregationsProductCategoryMap;
  if (value == null) return null;
  if (_categoryAggregationsProductCategoryMap is EqualUnmodifiableMapView) return _categoryAggregationsProductCategoryMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<ProductCategory, List<BrandAggregationModel>>? _brandAggregationsProductCategoryMap;
@override Map<ProductCategory, List<BrandAggregationModel>>? get brandAggregationsProductCategoryMap {
  final value = _brandAggregationsProductCategoryMap;
  if (value == null) return null;
  if (_brandAggregationsProductCategoryMap is EqualUnmodifiableMapView) return _brandAggregationsProductCategoryMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsResultLocalModelCopyWith<_ProductsResultLocalModel> get copyWith => __$ProductsResultLocalModelCopyWithImpl<_ProductsResultLocalModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsResultLocalModel&&const DeepCollectionEquality().equals(other._foodSearchResultsList, _foodSearchResultsList)&&(identical(other.foodSearchPaginationModel, foodSearchPaginationModel) || other.foodSearchPaginationModel == foodSearchPaginationModel)&&const DeepCollectionEquality().equals(other._cleanersSearchResultsList, _cleanersSearchResultsList)&&(identical(other.cleanersSearchPaginationModel, cleanersSearchPaginationModel) || other.cleanersSearchPaginationModel == cleanersSearchPaginationModel)&&const DeepCollectionEquality().equals(other._personalCareSearchResultsList, _personalCareSearchResultsList)&&(identical(other.personalCareSearchPaginationModel, personalCareSearchPaginationModel) || other.personalCareSearchPaginationModel == personalCareSearchPaginationModel)&&(identical(other.selectedCategoryType, selectedCategoryType) || other.selectedCategoryType == selectedCategoryType)&&const DeepCollectionEquality().equals(other._productTypeCount, _productTypeCount)&&const DeepCollectionEquality().equals(other._appliedFilters, _appliedFilters)&&const DeepCollectionEquality().equals(other._categoryAggregationsProductCategoryMap, _categoryAggregationsProductCategoryMap)&&const DeepCollectionEquality().equals(other._brandAggregationsProductCategoryMap, _brandAggregationsProductCategoryMap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_foodSearchResultsList),foodSearchPaginationModel,const DeepCollectionEquality().hash(_cleanersSearchResultsList),cleanersSearchPaginationModel,const DeepCollectionEquality().hash(_personalCareSearchResultsList),personalCareSearchPaginationModel,selectedCategoryType,const DeepCollectionEquality().hash(_productTypeCount),const DeepCollectionEquality().hash(_appliedFilters),const DeepCollectionEquality().hash(_categoryAggregationsProductCategoryMap),const DeepCollectionEquality().hash(_brandAggregationsProductCategoryMap));

@override
String toString() {
  return 'ProductsResultLocalModel(foodSearchResultsList: $foodSearchResultsList, foodSearchPaginationModel: $foodSearchPaginationModel, cleanersSearchResultsList: $cleanersSearchResultsList, cleanersSearchPaginationModel: $cleanersSearchPaginationModel, personalCareSearchResultsList: $personalCareSearchResultsList, personalCareSearchPaginationModel: $personalCareSearchPaginationModel, selectedCategoryType: $selectedCategoryType, productTypeCount: $productTypeCount, appliedFilters: $appliedFilters, categoryAggregationsProductCategoryMap: $categoryAggregationsProductCategoryMap, brandAggregationsProductCategoryMap: $brandAggregationsProductCategoryMap)';
}


}

/// @nodoc
abstract mixin class _$ProductsResultLocalModelCopyWith<$Res> implements $ProductsResultLocalModelCopyWith<$Res> {
  factory _$ProductsResultLocalModelCopyWith(_ProductsResultLocalModel value, $Res Function(_ProductsResultLocalModel) _then) = __$ProductsResultLocalModelCopyWithImpl;
@override @useResult
$Res call({
 List<SearchProductModel>? foodSearchResultsList, SearchPaginationModel? foodSearchPaginationModel, List<SearchProductModel>? cleanersSearchResultsList, SearchPaginationModel? cleanersSearchPaginationModel, List<SearchProductModel>? personalCareSearchResultsList, SearchPaginationModel? personalCareSearchPaginationModel, SearchType? selectedCategoryType, Map<String, int>? productTypeCount, Map<ProductCategory, ProductFiltersModel>? appliedFilters, Map<ProductCategory, List<CategoryAggregationModel>>? categoryAggregationsProductCategoryMap, Map<ProductCategory, List<BrandAggregationModel>>? brandAggregationsProductCategoryMap
});


@override $SearchPaginationModelCopyWith<$Res>? get foodSearchPaginationModel;@override $SearchPaginationModelCopyWith<$Res>? get cleanersSearchPaginationModel;@override $SearchPaginationModelCopyWith<$Res>? get personalCareSearchPaginationModel;

}
/// @nodoc
class __$ProductsResultLocalModelCopyWithImpl<$Res>
    implements _$ProductsResultLocalModelCopyWith<$Res> {
  __$ProductsResultLocalModelCopyWithImpl(this._self, this._then);

  final _ProductsResultLocalModel _self;
  final $Res Function(_ProductsResultLocalModel) _then;

/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodSearchResultsList = freezed,Object? foodSearchPaginationModel = freezed,Object? cleanersSearchResultsList = freezed,Object? cleanersSearchPaginationModel = freezed,Object? personalCareSearchResultsList = freezed,Object? personalCareSearchPaginationModel = freezed,Object? selectedCategoryType = freezed,Object? productTypeCount = freezed,Object? appliedFilters = freezed,Object? categoryAggregationsProductCategoryMap = freezed,Object? brandAggregationsProductCategoryMap = freezed,}) {
  return _then(_ProductsResultLocalModel(
foodSearchResultsList: freezed == foodSearchResultsList ? _self._foodSearchResultsList : foodSearchResultsList // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>?,foodSearchPaginationModel: freezed == foodSearchPaginationModel ? _self.foodSearchPaginationModel : foodSearchPaginationModel // ignore: cast_nullable_to_non_nullable
as SearchPaginationModel?,cleanersSearchResultsList: freezed == cleanersSearchResultsList ? _self._cleanersSearchResultsList : cleanersSearchResultsList // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>?,cleanersSearchPaginationModel: freezed == cleanersSearchPaginationModel ? _self.cleanersSearchPaginationModel : cleanersSearchPaginationModel // ignore: cast_nullable_to_non_nullable
as SearchPaginationModel?,personalCareSearchResultsList: freezed == personalCareSearchResultsList ? _self._personalCareSearchResultsList : personalCareSearchResultsList // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>?,personalCareSearchPaginationModel: freezed == personalCareSearchPaginationModel ? _self.personalCareSearchPaginationModel : personalCareSearchPaginationModel // ignore: cast_nullable_to_non_nullable
as SearchPaginationModel?,selectedCategoryType: freezed == selectedCategoryType ? _self.selectedCategoryType : selectedCategoryType // ignore: cast_nullable_to_non_nullable
as SearchType?,productTypeCount: freezed == productTypeCount ? _self._productTypeCount : productTypeCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,appliedFilters: freezed == appliedFilters ? _self._appliedFilters : appliedFilters // ignore: cast_nullable_to_non_nullable
as Map<ProductCategory, ProductFiltersModel>?,categoryAggregationsProductCategoryMap: freezed == categoryAggregationsProductCategoryMap ? _self._categoryAggregationsProductCategoryMap : categoryAggregationsProductCategoryMap // ignore: cast_nullable_to_non_nullable
as Map<ProductCategory, List<CategoryAggregationModel>>?,brandAggregationsProductCategoryMap: freezed == brandAggregationsProductCategoryMap ? _self._brandAggregationsProductCategoryMap : brandAggregationsProductCategoryMap // ignore: cast_nullable_to_non_nullable
as Map<ProductCategory, List<BrandAggregationModel>>?,
  ));
}

/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<$Res>? get foodSearchPaginationModel {
    if (_self.foodSearchPaginationModel == null) {
    return null;
  }

  return $SearchPaginationModelCopyWith<$Res>(_self.foodSearchPaginationModel!, (value) {
    return _then(_self.copyWith(foodSearchPaginationModel: value));
  });
}/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<$Res>? get cleanersSearchPaginationModel {
    if (_self.cleanersSearchPaginationModel == null) {
    return null;
  }

  return $SearchPaginationModelCopyWith<$Res>(_self.cleanersSearchPaginationModel!, (value) {
    return _then(_self.copyWith(cleanersSearchPaginationModel: value));
  });
}/// Create a copy of ProductsResultLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<$Res>? get personalCareSearchPaginationModel {
    if (_self.personalCareSearchPaginationModel == null) {
    return null;
  }

  return $SearchPaginationModelCopyWith<$Res>(_self.personalCareSearchPaginationModel!, (value) {
    return _then(_self.copyWith(personalCareSearchPaginationModel: value));
  });
}
}

// dart format on
