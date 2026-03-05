// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_filters_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductFiltersModel {

 SortOption get sortOption; HazardLevel? get hazardLevel; List<CategoryUiItem>? get categories; List<BrandUiItem>? get brands; IngredientPreferencesFilterModel? get ingredientPreferences;
/// Create a copy of ProductFiltersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFiltersModelCopyWith<ProductFiltersModel> get copyWith => _$ProductFiltersModelCopyWithImpl<ProductFiltersModel>(this as ProductFiltersModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFiltersModel&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption)&&(identical(other.hazardLevel, hazardLevel) || other.hazardLevel == hazardLevel)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.brands, brands)&&(identical(other.ingredientPreferences, ingredientPreferences) || other.ingredientPreferences == ingredientPreferences));
}


@override
int get hashCode => Object.hash(runtimeType,sortOption,hazardLevel,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(brands),ingredientPreferences);

@override
String toString() {
  return 'ProductFiltersModel(sortOption: $sortOption, hazardLevel: $hazardLevel, categories: $categories, brands: $brands, ingredientPreferences: $ingredientPreferences)';
}


}

/// @nodoc
abstract mixin class $ProductFiltersModelCopyWith<$Res>  {
  factory $ProductFiltersModelCopyWith(ProductFiltersModel value, $Res Function(ProductFiltersModel) _then) = _$ProductFiltersModelCopyWithImpl;
@useResult
$Res call({
 SortOption sortOption, HazardLevel? hazardLevel, List<CategoryUiItem>? categories, List<BrandUiItem>? brands, IngredientPreferencesFilterModel? ingredientPreferences
});


$SortOptionCopyWith<$Res> get sortOption;$IngredientPreferencesFilterModelCopyWith<$Res>? get ingredientPreferences;

}
/// @nodoc
class _$ProductFiltersModelCopyWithImpl<$Res>
    implements $ProductFiltersModelCopyWith<$Res> {
  _$ProductFiltersModelCopyWithImpl(this._self, this._then);

  final ProductFiltersModel _self;
  final $Res Function(ProductFiltersModel) _then;

/// Create a copy of ProductFiltersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sortOption = null,Object? hazardLevel = freezed,Object? categories = freezed,Object? brands = freezed,Object? ingredientPreferences = freezed,}) {
  return _then(_self.copyWith(
sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as SortOption,hazardLevel: freezed == hazardLevel ? _self.hazardLevel : hazardLevel // ignore: cast_nullable_to_non_nullable
as HazardLevel?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>?,brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>?,ingredientPreferences: freezed == ingredientPreferences ? _self.ingredientPreferences : ingredientPreferences // ignore: cast_nullable_to_non_nullable
as IngredientPreferencesFilterModel?,
  ));
}
/// Create a copy of ProductFiltersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SortOptionCopyWith<$Res> get sortOption {
  
  return $SortOptionCopyWith<$Res>(_self.sortOption, (value) {
    return _then(_self.copyWith(sortOption: value));
  });
}/// Create a copy of ProductFiltersModel
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


/// Adds pattern-matching-related methods to [ProductFiltersModel].
extension ProductFiltersModelPatterns on ProductFiltersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFiltersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFiltersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFiltersModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductFiltersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFiltersModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFiltersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SortOption sortOption,  HazardLevel? hazardLevel,  List<CategoryUiItem>? categories,  List<BrandUiItem>? brands,  IngredientPreferencesFilterModel? ingredientPreferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFiltersModel() when $default != null:
return $default(_that.sortOption,_that.hazardLevel,_that.categories,_that.brands,_that.ingredientPreferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SortOption sortOption,  HazardLevel? hazardLevel,  List<CategoryUiItem>? categories,  List<BrandUiItem>? brands,  IngredientPreferencesFilterModel? ingredientPreferences)  $default,) {final _that = this;
switch (_that) {
case _ProductFiltersModel():
return $default(_that.sortOption,_that.hazardLevel,_that.categories,_that.brands,_that.ingredientPreferences);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SortOption sortOption,  HazardLevel? hazardLevel,  List<CategoryUiItem>? categories,  List<BrandUiItem>? brands,  IngredientPreferencesFilterModel? ingredientPreferences)?  $default,) {final _that = this;
switch (_that) {
case _ProductFiltersModel() when $default != null:
return $default(_that.sortOption,_that.hazardLevel,_that.categories,_that.brands,_that.ingredientPreferences);case _:
  return null;

}
}

}

/// @nodoc


class _ProductFiltersModel implements ProductFiltersModel {
  const _ProductFiltersModel({required this.sortOption, required this.hazardLevel, final  List<CategoryUiItem>? categories, final  List<BrandUiItem>? brands, this.ingredientPreferences}): _categories = categories,_brands = brands;
  

@override final  SortOption sortOption;
@override final  HazardLevel? hazardLevel;
 final  List<CategoryUiItem>? _categories;
@override List<CategoryUiItem>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BrandUiItem>? _brands;
@override List<BrandUiItem>? get brands {
  final value = _brands;
  if (value == null) return null;
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  IngredientPreferencesFilterModel? ingredientPreferences;

/// Create a copy of ProductFiltersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFiltersModelCopyWith<_ProductFiltersModel> get copyWith => __$ProductFiltersModelCopyWithImpl<_ProductFiltersModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFiltersModel&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption)&&(identical(other.hazardLevel, hazardLevel) || other.hazardLevel == hazardLevel)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.ingredientPreferences, ingredientPreferences) || other.ingredientPreferences == ingredientPreferences));
}


@override
int get hashCode => Object.hash(runtimeType,sortOption,hazardLevel,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_brands),ingredientPreferences);

@override
String toString() {
  return 'ProductFiltersModel(sortOption: $sortOption, hazardLevel: $hazardLevel, categories: $categories, brands: $brands, ingredientPreferences: $ingredientPreferences)';
}


}

/// @nodoc
abstract mixin class _$ProductFiltersModelCopyWith<$Res> implements $ProductFiltersModelCopyWith<$Res> {
  factory _$ProductFiltersModelCopyWith(_ProductFiltersModel value, $Res Function(_ProductFiltersModel) _then) = __$ProductFiltersModelCopyWithImpl;
@override @useResult
$Res call({
 SortOption sortOption, HazardLevel? hazardLevel, List<CategoryUiItem>? categories, List<BrandUiItem>? brands, IngredientPreferencesFilterModel? ingredientPreferences
});


@override $SortOptionCopyWith<$Res> get sortOption;@override $IngredientPreferencesFilterModelCopyWith<$Res>? get ingredientPreferences;

}
/// @nodoc
class __$ProductFiltersModelCopyWithImpl<$Res>
    implements _$ProductFiltersModelCopyWith<$Res> {
  __$ProductFiltersModelCopyWithImpl(this._self, this._then);

  final _ProductFiltersModel _self;
  final $Res Function(_ProductFiltersModel) _then;

/// Create a copy of ProductFiltersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sortOption = null,Object? hazardLevel = freezed,Object? categories = freezed,Object? brands = freezed,Object? ingredientPreferences = freezed,}) {
  return _then(_ProductFiltersModel(
sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as SortOption,hazardLevel: freezed == hazardLevel ? _self.hazardLevel : hazardLevel // ignore: cast_nullable_to_non_nullable
as HazardLevel?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>?,brands: freezed == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>?,ingredientPreferences: freezed == ingredientPreferences ? _self.ingredientPreferences : ingredientPreferences // ignore: cast_nullable_to_non_nullable
as IngredientPreferencesFilterModel?,
  ));
}

/// Create a copy of ProductFiltersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SortOptionCopyWith<$Res> get sortOption {
  
  return $SortOptionCopyWith<$Res>(_self.sortOption, (value) {
    return _then(_self.copyWith(sortOption: value));
  });
}/// Create a copy of ProductFiltersModel
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
