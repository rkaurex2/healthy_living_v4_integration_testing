// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_basic_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDetailBasicInformationModel {

 String get productId; String get imageUrl; String get brandName; String get name; List<String>? get category; String get size; bool get isEwgVerified; RatingDetailModel get rating; String get dataLevel; ProductCategory get productCategory; List<IngredientDetailModel> get ingredients; String get asin; String get addedSugarIngredients; String? get lastUpdated; IngredientPreferenceIndicatorModel? get ingredientPreferenceLabels;
/// Create a copy of ProductDetailBasicInformationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailBasicInformationModelCopyWith<ProductDetailBasicInformationModel> get copyWith => _$ProductDetailBasicInformationModelCopyWithImpl<ProductDetailBasicInformationModel>(this as ProductDetailBasicInformationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailBasicInformationModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.category, category)&&(identical(other.size, size) || other.size == size)&&(identical(other.isEwgVerified, isEwgVerified) || other.isEwgVerified == isEwgVerified)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.dataLevel, dataLevel) || other.dataLevel == dataLevel)&&(identical(other.productCategory, productCategory) || other.productCategory == productCategory)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.addedSugarIngredients, addedSugarIngredients) || other.addedSugarIngredients == addedSugarIngredients)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.ingredientPreferenceLabels, ingredientPreferenceLabels) || other.ingredientPreferenceLabels == ingredientPreferenceLabels));
}


@override
int get hashCode => Object.hash(runtimeType,productId,imageUrl,brandName,name,const DeepCollectionEquality().hash(category),size,isEwgVerified,rating,dataLevel,productCategory,const DeepCollectionEquality().hash(ingredients),asin,addedSugarIngredients,lastUpdated,ingredientPreferenceLabels);

@override
String toString() {
  return 'ProductDetailBasicInformationModel(productId: $productId, imageUrl: $imageUrl, brandName: $brandName, name: $name, category: $category, size: $size, isEwgVerified: $isEwgVerified, rating: $rating, dataLevel: $dataLevel, productCategory: $productCategory, ingredients: $ingredients, asin: $asin, addedSugarIngredients: $addedSugarIngredients, lastUpdated: $lastUpdated, ingredientPreferenceLabels: $ingredientPreferenceLabels)';
}


}

/// @nodoc
abstract mixin class $ProductDetailBasicInformationModelCopyWith<$Res>  {
  factory $ProductDetailBasicInformationModelCopyWith(ProductDetailBasicInformationModel value, $Res Function(ProductDetailBasicInformationModel) _then) = _$ProductDetailBasicInformationModelCopyWithImpl;
@useResult
$Res call({
 String productId, String imageUrl, String brandName, String name, List<String>? category, String size, bool isEwgVerified, RatingDetailModel rating, String dataLevel, ProductCategory productCategory, List<IngredientDetailModel> ingredients, String asin, String addedSugarIngredients, String? lastUpdated, IngredientPreferenceIndicatorModel? ingredientPreferenceLabels
});


$RatingDetailModelCopyWith<$Res> get rating;$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels;

}
/// @nodoc
class _$ProductDetailBasicInformationModelCopyWithImpl<$Res>
    implements $ProductDetailBasicInformationModelCopyWith<$Res> {
  _$ProductDetailBasicInformationModelCopyWithImpl(this._self, this._then);

  final ProductDetailBasicInformationModel _self;
  final $Res Function(ProductDetailBasicInformationModel) _then;

/// Create a copy of ProductDetailBasicInformationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? imageUrl = null,Object? brandName = null,Object? name = null,Object? category = freezed,Object? size = null,Object? isEwgVerified = null,Object? rating = null,Object? dataLevel = null,Object? productCategory = null,Object? ingredients = null,Object? asin = null,Object? addedSugarIngredients = null,Object? lastUpdated = freezed,Object? ingredientPreferenceLabels = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as List<String>?,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,isEwgVerified: null == isEwgVerified ? _self.isEwgVerified : isEwgVerified // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RatingDetailModel,dataLevel: null == dataLevel ? _self.dataLevel : dataLevel // ignore: cast_nullable_to_non_nullable
as String,productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<IngredientDetailModel>,asin: null == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String,addedSugarIngredients: null == addedSugarIngredients ? _self.addedSugarIngredients : addedSugarIngredients // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceLabels: freezed == ingredientPreferenceLabels ? _self.ingredientPreferenceLabels : ingredientPreferenceLabels // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,
  ));
}
/// Create a copy of ProductDetailBasicInformationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingDetailModelCopyWith<$Res> get rating {
  
  return $RatingDetailModelCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of ProductDetailBasicInformationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels {
    if (_self.ingredientPreferenceLabels == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceLabels!, (value) {
    return _then(_self.copyWith(ingredientPreferenceLabels: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailBasicInformationModel].
extension ProductDetailBasicInformationModelPatterns on ProductDetailBasicInformationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailBasicInformationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailBasicInformationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailBasicInformationModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailBasicInformationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailBasicInformationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailBasicInformationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String imageUrl,  String brandName,  String name,  List<String>? category,  String size,  bool isEwgVerified,  RatingDetailModel rating,  String dataLevel,  ProductCategory productCategory,  List<IngredientDetailModel> ingredients,  String asin,  String addedSugarIngredients,  String? lastUpdated,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailBasicInformationModel() when $default != null:
return $default(_that.productId,_that.imageUrl,_that.brandName,_that.name,_that.category,_that.size,_that.isEwgVerified,_that.rating,_that.dataLevel,_that.productCategory,_that.ingredients,_that.asin,_that.addedSugarIngredients,_that.lastUpdated,_that.ingredientPreferenceLabels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String imageUrl,  String brandName,  String name,  List<String>? category,  String size,  bool isEwgVerified,  RatingDetailModel rating,  String dataLevel,  ProductCategory productCategory,  List<IngredientDetailModel> ingredients,  String asin,  String addedSugarIngredients,  String? lastUpdated,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailBasicInformationModel():
return $default(_that.productId,_that.imageUrl,_that.brandName,_that.name,_that.category,_that.size,_that.isEwgVerified,_that.rating,_that.dataLevel,_that.productCategory,_that.ingredients,_that.asin,_that.addedSugarIngredients,_that.lastUpdated,_that.ingredientPreferenceLabels);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String imageUrl,  String brandName,  String name,  List<String>? category,  String size,  bool isEwgVerified,  RatingDetailModel rating,  String dataLevel,  ProductCategory productCategory,  List<IngredientDetailModel> ingredients,  String asin,  String addedSugarIngredients,  String? lastUpdated,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailBasicInformationModel() when $default != null:
return $default(_that.productId,_that.imageUrl,_that.brandName,_that.name,_that.category,_that.size,_that.isEwgVerified,_that.rating,_that.dataLevel,_that.productCategory,_that.ingredients,_that.asin,_that.addedSugarIngredients,_that.lastUpdated,_that.ingredientPreferenceLabels);case _:
  return null;

}
}

}

/// @nodoc


class _ProductDetailBasicInformationModel implements ProductDetailBasicInformationModel {
  const _ProductDetailBasicInformationModel({required this.productId, required this.imageUrl, required this.brandName, required this.name, required final  List<String>? category, required this.size, required this.isEwgVerified, required this.rating, required this.dataLevel, required this.productCategory, required final  List<IngredientDetailModel> ingredients, required this.asin, required this.addedSugarIngredients, this.lastUpdated, this.ingredientPreferenceLabels}): _category = category,_ingredients = ingredients;
  

@override final  String productId;
@override final  String imageUrl;
@override final  String brandName;
@override final  String name;
 final  List<String>? _category;
@override List<String>? get category {
  final value = _category;
  if (value == null) return null;
  if (_category is EqualUnmodifiableListView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String size;
@override final  bool isEwgVerified;
@override final  RatingDetailModel rating;
@override final  String dataLevel;
@override final  ProductCategory productCategory;
 final  List<IngredientDetailModel> _ingredients;
@override List<IngredientDetailModel> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

@override final  String asin;
@override final  String addedSugarIngredients;
@override final  String? lastUpdated;
@override final  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels;

/// Create a copy of ProductDetailBasicInformationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailBasicInformationModelCopyWith<_ProductDetailBasicInformationModel> get copyWith => __$ProductDetailBasicInformationModelCopyWithImpl<_ProductDetailBasicInformationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailBasicInformationModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._category, _category)&&(identical(other.size, size) || other.size == size)&&(identical(other.isEwgVerified, isEwgVerified) || other.isEwgVerified == isEwgVerified)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.dataLevel, dataLevel) || other.dataLevel == dataLevel)&&(identical(other.productCategory, productCategory) || other.productCategory == productCategory)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.addedSugarIngredients, addedSugarIngredients) || other.addedSugarIngredients == addedSugarIngredients)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.ingredientPreferenceLabels, ingredientPreferenceLabels) || other.ingredientPreferenceLabels == ingredientPreferenceLabels));
}


@override
int get hashCode => Object.hash(runtimeType,productId,imageUrl,brandName,name,const DeepCollectionEquality().hash(_category),size,isEwgVerified,rating,dataLevel,productCategory,const DeepCollectionEquality().hash(_ingredients),asin,addedSugarIngredients,lastUpdated,ingredientPreferenceLabels);

@override
String toString() {
  return 'ProductDetailBasicInformationModel(productId: $productId, imageUrl: $imageUrl, brandName: $brandName, name: $name, category: $category, size: $size, isEwgVerified: $isEwgVerified, rating: $rating, dataLevel: $dataLevel, productCategory: $productCategory, ingredients: $ingredients, asin: $asin, addedSugarIngredients: $addedSugarIngredients, lastUpdated: $lastUpdated, ingredientPreferenceLabels: $ingredientPreferenceLabels)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailBasicInformationModelCopyWith<$Res> implements $ProductDetailBasicInformationModelCopyWith<$Res> {
  factory _$ProductDetailBasicInformationModelCopyWith(_ProductDetailBasicInformationModel value, $Res Function(_ProductDetailBasicInformationModel) _then) = __$ProductDetailBasicInformationModelCopyWithImpl;
@override @useResult
$Res call({
 String productId, String imageUrl, String brandName, String name, List<String>? category, String size, bool isEwgVerified, RatingDetailModel rating, String dataLevel, ProductCategory productCategory, List<IngredientDetailModel> ingredients, String asin, String addedSugarIngredients, String? lastUpdated, IngredientPreferenceIndicatorModel? ingredientPreferenceLabels
});


@override $RatingDetailModelCopyWith<$Res> get rating;@override $IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels;

}
/// @nodoc
class __$ProductDetailBasicInformationModelCopyWithImpl<$Res>
    implements _$ProductDetailBasicInformationModelCopyWith<$Res> {
  __$ProductDetailBasicInformationModelCopyWithImpl(this._self, this._then);

  final _ProductDetailBasicInformationModel _self;
  final $Res Function(_ProductDetailBasicInformationModel) _then;

/// Create a copy of ProductDetailBasicInformationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? imageUrl = null,Object? brandName = null,Object? name = null,Object? category = freezed,Object? size = null,Object? isEwgVerified = null,Object? rating = null,Object? dataLevel = null,Object? productCategory = null,Object? ingredients = null,Object? asin = null,Object? addedSugarIngredients = null,Object? lastUpdated = freezed,Object? ingredientPreferenceLabels = freezed,}) {
  return _then(_ProductDetailBasicInformationModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as List<String>?,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,isEwgVerified: null == isEwgVerified ? _self.isEwgVerified : isEwgVerified // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RatingDetailModel,dataLevel: null == dataLevel ? _self.dataLevel : dataLevel // ignore: cast_nullable_to_non_nullable
as String,productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<IngredientDetailModel>,asin: null == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String,addedSugarIngredients: null == addedSugarIngredients ? _self.addedSugarIngredients : addedSugarIngredients // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceLabels: freezed == ingredientPreferenceLabels ? _self.ingredientPreferenceLabels : ingredientPreferenceLabels // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,
  ));
}

/// Create a copy of ProductDetailBasicInformationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingDetailModelCopyWith<$Res> get rating {
  
  return $RatingDetailModelCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of ProductDetailBasicInformationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels {
    if (_self.ingredientPreferenceLabels == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceLabels!, (value) {
    return _then(_self.copyWith(ingredientPreferenceLabels: value));
  });
}
}

// dart format on
