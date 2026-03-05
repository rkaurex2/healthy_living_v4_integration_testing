// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_results_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SearchResultsDTO _$SearchResultsDTOFromJson(
  Map<String, dynamic> json
) {
    return _SearchResultsModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$SearchResultsDTO {

 List<SearchProductDTO> get products; List<SearchIngredientDTO> get ingredients; List<SearchCategoryItemDTO> get categories; List<SearchBrandDTO> get brands; List<SearchListsDTO> get lists;@JsonKey(name: 'category_aggs') CategoryAggregationsDTO? get categoryAggs;@JsonKey(name: 'brand_aggs') List<BrandAggregationDTO> get brandAggs;
/// Create a copy of SearchResultsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultsDTOCopyWith<SearchResultsDTO> get copyWith => _$SearchResultsDTOCopyWithImpl<SearchResultsDTO>(this as SearchResultsDTO, _$identity);

  /// Serializes this SearchResultsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultsDTO&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.brands, brands)&&const DeepCollectionEquality().equals(other.lists, lists)&&(identical(other.categoryAggs, categoryAggs) || other.categoryAggs == categoryAggs)&&const DeepCollectionEquality().equals(other.brandAggs, brandAggs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(brands),const DeepCollectionEquality().hash(lists),categoryAggs,const DeepCollectionEquality().hash(brandAggs));

@override
String toString() {
  return 'SearchResultsDTO(products: $products, ingredients: $ingredients, categories: $categories, brands: $brands, lists: $lists, categoryAggs: $categoryAggs, brandAggs: $brandAggs)';
}


}

/// @nodoc
abstract mixin class $SearchResultsDTOCopyWith<$Res>  {
  factory $SearchResultsDTOCopyWith(SearchResultsDTO value, $Res Function(SearchResultsDTO) _then) = _$SearchResultsDTOCopyWithImpl;
@useResult
$Res call({
 List<SearchProductDTO> products, List<SearchIngredientDTO> ingredients, List<SearchCategoryItemDTO> categories, List<SearchBrandDTO> brands, List<SearchListsDTO> lists,@JsonKey(name: 'category_aggs') CategoryAggregationsDTO? categoryAggs,@JsonKey(name: 'brand_aggs') List<BrandAggregationDTO> brandAggs
});


$CategoryAggregationsDTOCopyWith<$Res>? get categoryAggs;

}
/// @nodoc
class _$SearchResultsDTOCopyWithImpl<$Res>
    implements $SearchResultsDTOCopyWith<$Res> {
  _$SearchResultsDTOCopyWithImpl(this._self, this._then);

  final SearchResultsDTO _self;
  final $Res Function(SearchResultsDTO) _then;

/// Create a copy of SearchResultsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? ingredients = null,Object? categories = null,Object? brands = null,Object? lists = null,Object? categoryAggs = freezed,Object? brandAggs = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<SearchProductDTO>,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<SearchIngredientDTO>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryItemDTO>,brands: null == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as List<SearchBrandDTO>,lists: null == lists ? _self.lists : lists // ignore: cast_nullable_to_non_nullable
as List<SearchListsDTO>,categoryAggs: freezed == categoryAggs ? _self.categoryAggs : categoryAggs // ignore: cast_nullable_to_non_nullable
as CategoryAggregationsDTO?,brandAggs: null == brandAggs ? _self.brandAggs : brandAggs // ignore: cast_nullable_to_non_nullable
as List<BrandAggregationDTO>,
  ));
}
/// Create a copy of SearchResultsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryAggregationsDTOCopyWith<$Res>? get categoryAggs {
    if (_self.categoryAggs == null) {
    return null;
  }

  return $CategoryAggregationsDTOCopyWith<$Res>(_self.categoryAggs!, (value) {
    return _then(_self.copyWith(categoryAggs: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResultsDTO].
extension SearchResultsDTOPatterns on SearchResultsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResultsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResultsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResultsModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchResultsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResultsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResultsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchProductDTO> products,  List<SearchIngredientDTO> ingredients,  List<SearchCategoryItemDTO> categories,  List<SearchBrandDTO> brands,  List<SearchListsDTO> lists, @JsonKey(name: 'category_aggs')  CategoryAggregationsDTO? categoryAggs, @JsonKey(name: 'brand_aggs')  List<BrandAggregationDTO> brandAggs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResultsModel() when $default != null:
return $default(_that.products,_that.ingredients,_that.categories,_that.brands,_that.lists,_that.categoryAggs,_that.brandAggs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchProductDTO> products,  List<SearchIngredientDTO> ingredients,  List<SearchCategoryItemDTO> categories,  List<SearchBrandDTO> brands,  List<SearchListsDTO> lists, @JsonKey(name: 'category_aggs')  CategoryAggregationsDTO? categoryAggs, @JsonKey(name: 'brand_aggs')  List<BrandAggregationDTO> brandAggs)  $default,) {final _that = this;
switch (_that) {
case _SearchResultsModel():
return $default(_that.products,_that.ingredients,_that.categories,_that.brands,_that.lists,_that.categoryAggs,_that.brandAggs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchProductDTO> products,  List<SearchIngredientDTO> ingredients,  List<SearchCategoryItemDTO> categories,  List<SearchBrandDTO> brands,  List<SearchListsDTO> lists, @JsonKey(name: 'category_aggs')  CategoryAggregationsDTO? categoryAggs, @JsonKey(name: 'brand_aggs')  List<BrandAggregationDTO> brandAggs)?  $default,) {final _that = this;
switch (_that) {
case _SearchResultsModel() when $default != null:
return $default(_that.products,_that.ingredients,_that.categories,_that.brands,_that.lists,_that.categoryAggs,_that.brandAggs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResultsModel implements SearchResultsDTO {
  const _SearchResultsModel({final  List<SearchProductDTO> products = const <SearchProductDTO>[], final  List<SearchIngredientDTO> ingredients = const <SearchIngredientDTO>[], final  List<SearchCategoryItemDTO> categories = const <SearchCategoryItemDTO>[], final  List<SearchBrandDTO> brands = const <SearchBrandDTO>[], final  List<SearchListsDTO> lists = const <SearchListsDTO>[], @JsonKey(name: 'category_aggs') this.categoryAggs, @JsonKey(name: 'brand_aggs') final  List<BrandAggregationDTO> brandAggs = const <BrandAggregationDTO>[]}): _products = products,_ingredients = ingredients,_categories = categories,_brands = brands,_lists = lists,_brandAggs = brandAggs;
  factory _SearchResultsModel.fromJson(Map<String, dynamic> json) => _$SearchResultsModelFromJson(json);

 final  List<SearchProductDTO> _products;
@override@JsonKey() List<SearchProductDTO> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<SearchIngredientDTO> _ingredients;
@override@JsonKey() List<SearchIngredientDTO> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<SearchCategoryItemDTO> _categories;
@override@JsonKey() List<SearchCategoryItemDTO> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<SearchBrandDTO> _brands;
@override@JsonKey() List<SearchBrandDTO> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

 final  List<SearchListsDTO> _lists;
@override@JsonKey() List<SearchListsDTO> get lists {
  if (_lists is EqualUnmodifiableListView) return _lists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lists);
}

@override@JsonKey(name: 'category_aggs') final  CategoryAggregationsDTO? categoryAggs;
 final  List<BrandAggregationDTO> _brandAggs;
@override@JsonKey(name: 'brand_aggs') List<BrandAggregationDTO> get brandAggs {
  if (_brandAggs is EqualUnmodifiableListView) return _brandAggs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brandAggs);
}


/// Create a copy of SearchResultsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultsModelCopyWith<_SearchResultsModel> get copyWith => __$SearchResultsModelCopyWithImpl<_SearchResultsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResultsModel&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._brands, _brands)&&const DeepCollectionEquality().equals(other._lists, _lists)&&(identical(other.categoryAggs, categoryAggs) || other.categoryAggs == categoryAggs)&&const DeepCollectionEquality().equals(other._brandAggs, _brandAggs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_brands),const DeepCollectionEquality().hash(_lists),categoryAggs,const DeepCollectionEquality().hash(_brandAggs));

@override
String toString() {
  return 'SearchResultsDTO(products: $products, ingredients: $ingredients, categories: $categories, brands: $brands, lists: $lists, categoryAggs: $categoryAggs, brandAggs: $brandAggs)';
}


}

/// @nodoc
abstract mixin class _$SearchResultsModelCopyWith<$Res> implements $SearchResultsDTOCopyWith<$Res> {
  factory _$SearchResultsModelCopyWith(_SearchResultsModel value, $Res Function(_SearchResultsModel) _then) = __$SearchResultsModelCopyWithImpl;
@override @useResult
$Res call({
 List<SearchProductDTO> products, List<SearchIngredientDTO> ingredients, List<SearchCategoryItemDTO> categories, List<SearchBrandDTO> brands, List<SearchListsDTO> lists,@JsonKey(name: 'category_aggs') CategoryAggregationsDTO? categoryAggs,@JsonKey(name: 'brand_aggs') List<BrandAggregationDTO> brandAggs
});


@override $CategoryAggregationsDTOCopyWith<$Res>? get categoryAggs;

}
/// @nodoc
class __$SearchResultsModelCopyWithImpl<$Res>
    implements _$SearchResultsModelCopyWith<$Res> {
  __$SearchResultsModelCopyWithImpl(this._self, this._then);

  final _SearchResultsModel _self;
  final $Res Function(_SearchResultsModel) _then;

/// Create a copy of SearchResultsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? ingredients = null,Object? categories = null,Object? brands = null,Object? lists = null,Object? categoryAggs = freezed,Object? brandAggs = null,}) {
  return _then(_SearchResultsModel(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<SearchProductDTO>,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<SearchIngredientDTO>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryItemDTO>,brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<SearchBrandDTO>,lists: null == lists ? _self._lists : lists // ignore: cast_nullable_to_non_nullable
as List<SearchListsDTO>,categoryAggs: freezed == categoryAggs ? _self.categoryAggs : categoryAggs // ignore: cast_nullable_to_non_nullable
as CategoryAggregationsDTO?,brandAggs: null == brandAggs ? _self._brandAggs : brandAggs // ignore: cast_nullable_to_non_nullable
as List<BrandAggregationDTO>,
  ));
}

/// Create a copy of SearchResultsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryAggregationsDTOCopyWith<$Res>? get categoryAggs {
    if (_self.categoryAggs == null) {
    return null;
  }

  return $CategoryAggregationsDTOCopyWith<$Res>(_self.categoryAggs!, (value) {
    return _then(_self.copyWith(categoryAggs: value));
  });
}
}

// dart format on
