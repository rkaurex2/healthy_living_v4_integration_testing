// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_product_list_item_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeneralProductListItemUIModel {

 int get productId; String get imageUrl; String get brandName; String get productName; String get productType; bool get isEWGVerified; String get score; String get categoryType; IngredientPreferenceIndicatorModel? get ingredientPreferenceIndicator;
/// Create a copy of GeneralProductListItemUIModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralProductListItemUIModelCopyWith<GeneralProductListItemUIModel> get copyWith => _$GeneralProductListItemUIModelCopyWithImpl<GeneralProductListItemUIModel>(this as GeneralProductListItemUIModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralProductListItemUIModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.isEWGVerified, isEWGVerified) || other.isEWGVerified == isEWGVerified)&&(identical(other.score, score) || other.score == score)&&(identical(other.categoryType, categoryType) || other.categoryType == categoryType)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}


@override
int get hashCode => Object.hash(runtimeType,productId,imageUrl,brandName,productName,productType,isEWGVerified,score,categoryType,ingredientPreferenceIndicator);

@override
String toString() {
  return 'GeneralProductListItemUIModel(productId: $productId, imageUrl: $imageUrl, brandName: $brandName, productName: $productName, productType: $productType, isEWGVerified: $isEWGVerified, score: $score, categoryType: $categoryType, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $GeneralProductListItemUIModelCopyWith<$Res>  {
  factory $GeneralProductListItemUIModelCopyWith(GeneralProductListItemUIModel value, $Res Function(GeneralProductListItemUIModel) _then) = _$GeneralProductListItemUIModelCopyWithImpl;
@useResult
$Res call({
 int productId, String imageUrl, String brandName, String productName, String productType, bool isEWGVerified, String score, String categoryType, IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator
});


$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$GeneralProductListItemUIModelCopyWithImpl<$Res>
    implements $GeneralProductListItemUIModelCopyWith<$Res> {
  _$GeneralProductListItemUIModelCopyWithImpl(this._self, this._then);

  final GeneralProductListItemUIModel _self;
  final $Res Function(GeneralProductListItemUIModel) _then;

/// Create a copy of GeneralProductListItemUIModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? imageUrl = null,Object? brandName = null,Object? productName = null,Object? productType = null,Object? isEWGVerified = null,Object? score = null,Object? categoryType = null,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,isEWGVerified: null == isEWGVerified ? _self.isEWGVerified : isEWGVerified // ignore: cast_nullable_to_non_nullable
as bool,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,categoryType: null == categoryType ? _self.categoryType : categoryType // ignore: cast_nullable_to_non_nullable
as String,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,
  ));
}
/// Create a copy of GeneralProductListItemUIModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeneralProductListItemUIModel].
extension GeneralProductListItemUIModelPatterns on GeneralProductListItemUIModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralProductListItemUIModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralProductListItemUIModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralProductListItemUIModel value)  $default,){
final _that = this;
switch (_that) {
case _GeneralProductListItemUIModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralProductListItemUIModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralProductListItemUIModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productId,  String imageUrl,  String brandName,  String productName,  String productType,  bool isEWGVerified,  String score,  String categoryType,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralProductListItemUIModel() when $default != null:
return $default(_that.productId,_that.imageUrl,_that.brandName,_that.productName,_that.productType,_that.isEWGVerified,_that.score,_that.categoryType,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productId,  String imageUrl,  String brandName,  String productName,  String productType,  bool isEWGVerified,  String score,  String categoryType,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _GeneralProductListItemUIModel():
return $default(_that.productId,_that.imageUrl,_that.brandName,_that.productName,_that.productType,_that.isEWGVerified,_that.score,_that.categoryType,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productId,  String imageUrl,  String brandName,  String productName,  String productType,  bool isEWGVerified,  String score,  String categoryType,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _GeneralProductListItemUIModel() when $default != null:
return $default(_that.productId,_that.imageUrl,_that.brandName,_that.productName,_that.productType,_that.isEWGVerified,_that.score,_that.categoryType,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc


class _GeneralProductListItemUIModel implements GeneralProductListItemUIModel {
  const _GeneralProductListItemUIModel({required this.productId, required this.imageUrl, required this.brandName, required this.productName, required this.productType, required this.isEWGVerified, required this.score, required this.categoryType, this.ingredientPreferenceIndicator});
  

@override final  int productId;
@override final  String imageUrl;
@override final  String brandName;
@override final  String productName;
@override final  String productType;
@override final  bool isEWGVerified;
@override final  String score;
@override final  String categoryType;
@override final  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator;

/// Create a copy of GeneralProductListItemUIModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralProductListItemUIModelCopyWith<_GeneralProductListItemUIModel> get copyWith => __$GeneralProductListItemUIModelCopyWithImpl<_GeneralProductListItemUIModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralProductListItemUIModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.isEWGVerified, isEWGVerified) || other.isEWGVerified == isEWGVerified)&&(identical(other.score, score) || other.score == score)&&(identical(other.categoryType, categoryType) || other.categoryType == categoryType)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}


@override
int get hashCode => Object.hash(runtimeType,productId,imageUrl,brandName,productName,productType,isEWGVerified,score,categoryType,ingredientPreferenceIndicator);

@override
String toString() {
  return 'GeneralProductListItemUIModel(productId: $productId, imageUrl: $imageUrl, brandName: $brandName, productName: $productName, productType: $productType, isEWGVerified: $isEWGVerified, score: $score, categoryType: $categoryType, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$GeneralProductListItemUIModelCopyWith<$Res> implements $GeneralProductListItemUIModelCopyWith<$Res> {
  factory _$GeneralProductListItemUIModelCopyWith(_GeneralProductListItemUIModel value, $Res Function(_GeneralProductListItemUIModel) _then) = __$GeneralProductListItemUIModelCopyWithImpl;
@override @useResult
$Res call({
 int productId, String imageUrl, String brandName, String productName, String productType, bool isEWGVerified, String score, String categoryType, IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator
});


@override $IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$GeneralProductListItemUIModelCopyWithImpl<$Res>
    implements _$GeneralProductListItemUIModelCopyWith<$Res> {
  __$GeneralProductListItemUIModelCopyWithImpl(this._self, this._then);

  final _GeneralProductListItemUIModel _self;
  final $Res Function(_GeneralProductListItemUIModel) _then;

/// Create a copy of GeneralProductListItemUIModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? imageUrl = null,Object? brandName = null,Object? productName = null,Object? productType = null,Object? isEWGVerified = null,Object? score = null,Object? categoryType = null,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_GeneralProductListItemUIModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,isEWGVerified: null == isEWGVerified ? _self.isEWGVerified : isEWGVerified // ignore: cast_nullable_to_non_nullable
as bool,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,categoryType: null == categoryType ? _self.categoryType : categoryType // ignore: cast_nullable_to_non_nullable
as String,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,
  ));
}

/// Create a copy of GeneralProductListItemUIModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}

// dart format on
