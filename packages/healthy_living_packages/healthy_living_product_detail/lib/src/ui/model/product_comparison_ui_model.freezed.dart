// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_comparison_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductComparisonUiModel {

 String get productImage; String get productScore; String get productBrand; String get productName; String get productSize; bool get isVerified; IngredientPreferenceIndicatorModel? get ingredientPreferenceIndicatorModel; List<RetailerModel> get retailers; String get productId; ProductCategory get productCategory;
/// Create a copy of ProductComparisonUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductComparisonUiModelCopyWith<ProductComparisonUiModel> get copyWith => _$ProductComparisonUiModelCopyWithImpl<ProductComparisonUiModel>(this as ProductComparisonUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductComparisonUiModel&&(identical(other.productImage, productImage) || other.productImage == productImage)&&(identical(other.productScore, productScore) || other.productScore == productScore)&&(identical(other.productBrand, productBrand) || other.productBrand == productBrand)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.ingredientPreferenceIndicatorModel, ingredientPreferenceIndicatorModel) || other.ingredientPreferenceIndicatorModel == ingredientPreferenceIndicatorModel)&&const DeepCollectionEquality().equals(other.retailers, retailers)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productCategory, productCategory) || other.productCategory == productCategory));
}


@override
int get hashCode => Object.hash(runtimeType,productImage,productScore,productBrand,productName,productSize,isVerified,ingredientPreferenceIndicatorModel,const DeepCollectionEquality().hash(retailers),productId,productCategory);

@override
String toString() {
  return 'ProductComparisonUiModel(productImage: $productImage, productScore: $productScore, productBrand: $productBrand, productName: $productName, productSize: $productSize, isVerified: $isVerified, ingredientPreferenceIndicatorModel: $ingredientPreferenceIndicatorModel, retailers: $retailers, productId: $productId, productCategory: $productCategory)';
}


}

/// @nodoc
abstract mixin class $ProductComparisonUiModelCopyWith<$Res>  {
  factory $ProductComparisonUiModelCopyWith(ProductComparisonUiModel value, $Res Function(ProductComparisonUiModel) _then) = _$ProductComparisonUiModelCopyWithImpl;
@useResult
$Res call({
 String productImage, String productScore, String productBrand, String productName, String productSize, bool isVerified, IngredientPreferenceIndicatorModel? ingredientPreferenceIndicatorModel, List<RetailerModel> retailers, String productId, ProductCategory productCategory
});


$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicatorModel;

}
/// @nodoc
class _$ProductComparisonUiModelCopyWithImpl<$Res>
    implements $ProductComparisonUiModelCopyWith<$Res> {
  _$ProductComparisonUiModelCopyWithImpl(this._self, this._then);

  final ProductComparisonUiModel _self;
  final $Res Function(ProductComparisonUiModel) _then;

/// Create a copy of ProductComparisonUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productImage = null,Object? productScore = null,Object? productBrand = null,Object? productName = null,Object? productSize = null,Object? isVerified = null,Object? ingredientPreferenceIndicatorModel = freezed,Object? retailers = null,Object? productId = null,Object? productCategory = null,}) {
  return _then(_self.copyWith(
productImage: null == productImage ? _self.productImage : productImage // ignore: cast_nullable_to_non_nullable
as String,productScore: null == productScore ? _self.productScore : productScore // ignore: cast_nullable_to_non_nullable
as String,productBrand: null == productBrand ? _self.productBrand : productBrand // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productSize: null == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,ingredientPreferenceIndicatorModel: freezed == ingredientPreferenceIndicatorModel ? _self.ingredientPreferenceIndicatorModel : ingredientPreferenceIndicatorModel // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,retailers: null == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,
  ));
}
/// Create a copy of ProductComparisonUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicatorModel {
    if (_self.ingredientPreferenceIndicatorModel == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceIndicatorModel!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicatorModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductComparisonUiModel].
extension ProductComparisonUiModelPatterns on ProductComparisonUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductComparisonUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductComparisonUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductComparisonUiModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductComparisonUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductComparisonUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductComparisonUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productImage,  String productScore,  String productBrand,  String productName,  String productSize,  bool isVerified,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicatorModel,  List<RetailerModel> retailers,  String productId,  ProductCategory productCategory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductComparisonUiModel() when $default != null:
return $default(_that.productImage,_that.productScore,_that.productBrand,_that.productName,_that.productSize,_that.isVerified,_that.ingredientPreferenceIndicatorModel,_that.retailers,_that.productId,_that.productCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productImage,  String productScore,  String productBrand,  String productName,  String productSize,  bool isVerified,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicatorModel,  List<RetailerModel> retailers,  String productId,  ProductCategory productCategory)  $default,) {final _that = this;
switch (_that) {
case _ProductComparisonUiModel():
return $default(_that.productImage,_that.productScore,_that.productBrand,_that.productName,_that.productSize,_that.isVerified,_that.ingredientPreferenceIndicatorModel,_that.retailers,_that.productId,_that.productCategory);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productImage,  String productScore,  String productBrand,  String productName,  String productSize,  bool isVerified,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicatorModel,  List<RetailerModel> retailers,  String productId,  ProductCategory productCategory)?  $default,) {final _that = this;
switch (_that) {
case _ProductComparisonUiModel() when $default != null:
return $default(_that.productImage,_that.productScore,_that.productBrand,_that.productName,_that.productSize,_that.isVerified,_that.ingredientPreferenceIndicatorModel,_that.retailers,_that.productId,_that.productCategory);case _:
  return null;

}
}

}

/// @nodoc


class _ProductComparisonUiModel implements ProductComparisonUiModel {
  const _ProductComparisonUiModel({required this.productImage, required this.productScore, required this.productBrand, required this.productName, required this.productSize, required this.isVerified, required this.ingredientPreferenceIndicatorModel, required final  List<RetailerModel> retailers, required this.productId, required this.productCategory}): _retailers = retailers;
  

@override final  String productImage;
@override final  String productScore;
@override final  String productBrand;
@override final  String productName;
@override final  String productSize;
@override final  bool isVerified;
@override final  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicatorModel;
 final  List<RetailerModel> _retailers;
@override List<RetailerModel> get retailers {
  if (_retailers is EqualUnmodifiableListView) return _retailers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_retailers);
}

@override final  String productId;
@override final  ProductCategory productCategory;

/// Create a copy of ProductComparisonUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductComparisonUiModelCopyWith<_ProductComparisonUiModel> get copyWith => __$ProductComparisonUiModelCopyWithImpl<_ProductComparisonUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductComparisonUiModel&&(identical(other.productImage, productImage) || other.productImage == productImage)&&(identical(other.productScore, productScore) || other.productScore == productScore)&&(identical(other.productBrand, productBrand) || other.productBrand == productBrand)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.ingredientPreferenceIndicatorModel, ingredientPreferenceIndicatorModel) || other.ingredientPreferenceIndicatorModel == ingredientPreferenceIndicatorModel)&&const DeepCollectionEquality().equals(other._retailers, _retailers)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productCategory, productCategory) || other.productCategory == productCategory));
}


@override
int get hashCode => Object.hash(runtimeType,productImage,productScore,productBrand,productName,productSize,isVerified,ingredientPreferenceIndicatorModel,const DeepCollectionEquality().hash(_retailers),productId,productCategory);

@override
String toString() {
  return 'ProductComparisonUiModel(productImage: $productImage, productScore: $productScore, productBrand: $productBrand, productName: $productName, productSize: $productSize, isVerified: $isVerified, ingredientPreferenceIndicatorModel: $ingredientPreferenceIndicatorModel, retailers: $retailers, productId: $productId, productCategory: $productCategory)';
}


}

/// @nodoc
abstract mixin class _$ProductComparisonUiModelCopyWith<$Res> implements $ProductComparisonUiModelCopyWith<$Res> {
  factory _$ProductComparisonUiModelCopyWith(_ProductComparisonUiModel value, $Res Function(_ProductComparisonUiModel) _then) = __$ProductComparisonUiModelCopyWithImpl;
@override @useResult
$Res call({
 String productImage, String productScore, String productBrand, String productName, String productSize, bool isVerified, IngredientPreferenceIndicatorModel? ingredientPreferenceIndicatorModel, List<RetailerModel> retailers, String productId, ProductCategory productCategory
});


@override $IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicatorModel;

}
/// @nodoc
class __$ProductComparisonUiModelCopyWithImpl<$Res>
    implements _$ProductComparisonUiModelCopyWith<$Res> {
  __$ProductComparisonUiModelCopyWithImpl(this._self, this._then);

  final _ProductComparisonUiModel _self;
  final $Res Function(_ProductComparisonUiModel) _then;

/// Create a copy of ProductComparisonUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productImage = null,Object? productScore = null,Object? productBrand = null,Object? productName = null,Object? productSize = null,Object? isVerified = null,Object? ingredientPreferenceIndicatorModel = freezed,Object? retailers = null,Object? productId = null,Object? productCategory = null,}) {
  return _then(_ProductComparisonUiModel(
productImage: null == productImage ? _self.productImage : productImage // ignore: cast_nullable_to_non_nullable
as String,productScore: null == productScore ? _self.productScore : productScore // ignore: cast_nullable_to_non_nullable
as String,productBrand: null == productBrand ? _self.productBrand : productBrand // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productSize: null == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,ingredientPreferenceIndicatorModel: freezed == ingredientPreferenceIndicatorModel ? _self.ingredientPreferenceIndicatorModel : ingredientPreferenceIndicatorModel // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,retailers: null == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,
  ));
}

/// Create a copy of ProductComparisonUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicatorModel {
    if (_self.ingredientPreferenceIndicatorModel == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceIndicatorModel!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicatorModel: value));
  });
}
}

// dart format on
