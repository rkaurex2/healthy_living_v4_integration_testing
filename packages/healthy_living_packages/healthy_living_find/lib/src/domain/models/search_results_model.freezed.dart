// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchResultsModel {

 List<SearchListsModel> get lists; List<BrandAggregationModel> get brandAggs; List<SearchProductModel> get products; List<SearchIngredientModel> get ingredients; List<SearchCategoryItemModel> get categories; List<SearchBrandModel> get brands; CategoryAggregationsModel? get categoryAggs;
/// Create a copy of SearchResultsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultsModelCopyWith<SearchResultsModel> get copyWith => _$SearchResultsModelCopyWithImpl<SearchResultsModel>(this as SearchResultsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultsModel&&const DeepCollectionEquality().equals(other.lists, lists)&&const DeepCollectionEquality().equals(other.brandAggs, brandAggs)&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.brands, brands)&&(identical(other.categoryAggs, categoryAggs) || other.categoryAggs == categoryAggs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lists),const DeepCollectionEquality().hash(brandAggs),const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(brands),categoryAggs);

@override
String toString() {
  return 'SearchResultsModel(lists: $lists, brandAggs: $brandAggs, products: $products, ingredients: $ingredients, categories: $categories, brands: $brands, categoryAggs: $categoryAggs)';
}


}

/// @nodoc
abstract mixin class $SearchResultsModelCopyWith<$Res>  {
  factory $SearchResultsModelCopyWith(SearchResultsModel value, $Res Function(SearchResultsModel) _then) = _$SearchResultsModelCopyWithImpl;
@useResult
$Res call({
 List<SearchListsModel> lists, List<BrandAggregationModel> brandAggs, List<SearchProductModel> products, List<SearchIngredientModel> ingredients, List<SearchCategoryItemModel> categories, List<SearchBrandModel> brands, CategoryAggregationsModel? categoryAggs
});


$CategoryAggregationsModelCopyWith<$Res>? get categoryAggs;

}
/// @nodoc
class _$SearchResultsModelCopyWithImpl<$Res>
    implements $SearchResultsModelCopyWith<$Res> {
  _$SearchResultsModelCopyWithImpl(this._self, this._then);

  final SearchResultsModel _self;
  final $Res Function(SearchResultsModel) _then;

/// Create a copy of SearchResultsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lists = null,Object? brandAggs = null,Object? products = null,Object? ingredients = null,Object? categories = null,Object? brands = null,Object? categoryAggs = freezed,}) {
  return _then(_self.copyWith(
lists: null == lists ? _self.lists : lists // ignore: cast_nullable_to_non_nullable
as List<SearchListsModel>,brandAggs: null == brandAggs ? _self.brandAggs : brandAggs // ignore: cast_nullable_to_non_nullable
as List<BrandAggregationModel>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<SearchIngredientModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryItemModel>,brands: null == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as List<SearchBrandModel>,categoryAggs: freezed == categoryAggs ? _self.categoryAggs : categoryAggs // ignore: cast_nullable_to_non_nullable
as CategoryAggregationsModel?,
  ));
}
/// Create a copy of SearchResultsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryAggregationsModelCopyWith<$Res>? get categoryAggs {
    if (_self.categoryAggs == null) {
    return null;
  }

  return $CategoryAggregationsModelCopyWith<$Res>(_self.categoryAggs!, (value) {
    return _then(_self.copyWith(categoryAggs: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResultsModel].
extension SearchResultsModelPatterns on SearchResultsModel {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchListsModel> lists,  List<BrandAggregationModel> brandAggs,  List<SearchProductModel> products,  List<SearchIngredientModel> ingredients,  List<SearchCategoryItemModel> categories,  List<SearchBrandModel> brands,  CategoryAggregationsModel? categoryAggs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResultsModel() when $default != null:
return $default(_that.lists,_that.brandAggs,_that.products,_that.ingredients,_that.categories,_that.brands,_that.categoryAggs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchListsModel> lists,  List<BrandAggregationModel> brandAggs,  List<SearchProductModel> products,  List<SearchIngredientModel> ingredients,  List<SearchCategoryItemModel> categories,  List<SearchBrandModel> brands,  CategoryAggregationsModel? categoryAggs)  $default,) {final _that = this;
switch (_that) {
case _SearchResultsModel():
return $default(_that.lists,_that.brandAggs,_that.products,_that.ingredients,_that.categories,_that.brands,_that.categoryAggs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchListsModel> lists,  List<BrandAggregationModel> brandAggs,  List<SearchProductModel> products,  List<SearchIngredientModel> ingredients,  List<SearchCategoryItemModel> categories,  List<SearchBrandModel> brands,  CategoryAggregationsModel? categoryAggs)?  $default,) {final _that = this;
switch (_that) {
case _SearchResultsModel() when $default != null:
return $default(_that.lists,_that.brandAggs,_that.products,_that.ingredients,_that.categories,_that.brands,_that.categoryAggs);case _:
  return null;

}
}

}

/// @nodoc


class _SearchResultsModel implements SearchResultsModel {
  const _SearchResultsModel({required final  List<SearchListsModel> lists, required final  List<BrandAggregationModel> brandAggs, final  List<SearchProductModel> products = const <SearchProductModel>[], final  List<SearchIngredientModel> ingredients = const <SearchIngredientModel>[], final  List<SearchCategoryItemModel> categories = const <SearchCategoryItemModel>[], final  List<SearchBrandModel> brands = const <SearchBrandModel>[], this.categoryAggs}): _lists = lists,_brandAggs = brandAggs,_products = products,_ingredients = ingredients,_categories = categories,_brands = brands;
  

 final  List<SearchListsModel> _lists;
@override List<SearchListsModel> get lists {
  if (_lists is EqualUnmodifiableListView) return _lists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lists);
}

 final  List<BrandAggregationModel> _brandAggs;
@override List<BrandAggregationModel> get brandAggs {
  if (_brandAggs is EqualUnmodifiableListView) return _brandAggs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brandAggs);
}

 final  List<SearchProductModel> _products;
@override@JsonKey() List<SearchProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<SearchIngredientModel> _ingredients;
@override@JsonKey() List<SearchIngredientModel> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<SearchCategoryItemModel> _categories;
@override@JsonKey() List<SearchCategoryItemModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<SearchBrandModel> _brands;
@override@JsonKey() List<SearchBrandModel> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

@override final  CategoryAggregationsModel? categoryAggs;

/// Create a copy of SearchResultsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultsModelCopyWith<_SearchResultsModel> get copyWith => __$SearchResultsModelCopyWithImpl<_SearchResultsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResultsModel&&const DeepCollectionEquality().equals(other._lists, _lists)&&const DeepCollectionEquality().equals(other._brandAggs, _brandAggs)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.categoryAggs, categoryAggs) || other.categoryAggs == categoryAggs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lists),const DeepCollectionEquality().hash(_brandAggs),const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_brands),categoryAggs);

@override
String toString() {
  return 'SearchResultsModel(lists: $lists, brandAggs: $brandAggs, products: $products, ingredients: $ingredients, categories: $categories, brands: $brands, categoryAggs: $categoryAggs)';
}


}

/// @nodoc
abstract mixin class _$SearchResultsModelCopyWith<$Res> implements $SearchResultsModelCopyWith<$Res> {
  factory _$SearchResultsModelCopyWith(_SearchResultsModel value, $Res Function(_SearchResultsModel) _then) = __$SearchResultsModelCopyWithImpl;
@override @useResult
$Res call({
 List<SearchListsModel> lists, List<BrandAggregationModel> brandAggs, List<SearchProductModel> products, List<SearchIngredientModel> ingredients, List<SearchCategoryItemModel> categories, List<SearchBrandModel> brands, CategoryAggregationsModel? categoryAggs
});


@override $CategoryAggregationsModelCopyWith<$Res>? get categoryAggs;

}
/// @nodoc
class __$SearchResultsModelCopyWithImpl<$Res>
    implements _$SearchResultsModelCopyWith<$Res> {
  __$SearchResultsModelCopyWithImpl(this._self, this._then);

  final _SearchResultsModel _self;
  final $Res Function(_SearchResultsModel) _then;

/// Create a copy of SearchResultsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lists = null,Object? brandAggs = null,Object? products = null,Object? ingredients = null,Object? categories = null,Object? brands = null,Object? categoryAggs = freezed,}) {
  return _then(_SearchResultsModel(
lists: null == lists ? _self._lists : lists // ignore: cast_nullable_to_non_nullable
as List<SearchListsModel>,brandAggs: null == brandAggs ? _self._brandAggs : brandAggs // ignore: cast_nullable_to_non_nullable
as List<BrandAggregationModel>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<SearchIngredientModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryItemModel>,brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<SearchBrandModel>,categoryAggs: freezed == categoryAggs ? _self.categoryAggs : categoryAggs // ignore: cast_nullable_to_non_nullable
as CategoryAggregationsModel?,
  ));
}

/// Create a copy of SearchResultsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryAggregationsModelCopyWith<$Res>? get categoryAggs {
    if (_self.categoryAggs == null) {
    return null;
  }

  return $CategoryAggregationsModelCopyWith<$Res>(_self.categoryAggs!, (value) {
    return _then(_self.copyWith(categoryAggs: value));
  });
}
}

// dart format on
