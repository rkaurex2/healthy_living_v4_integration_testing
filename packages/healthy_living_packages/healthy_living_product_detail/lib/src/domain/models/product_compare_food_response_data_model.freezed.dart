// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_food_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompareFoodResponseDataModel {

@JsonKey(name: 'product_type') String? get productType; List<FoodDetailResponseModel> get products;
/// Create a copy of ProductCompareFoodResponseDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseDataModelCopyWith<ProductCompareFoodResponseDataModel> get copyWith => _$ProductCompareFoodResponseDataModelCopyWithImpl<ProductCompareFoodResponseDataModel>(this as ProductCompareFoodResponseDataModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareFoodResponseDataModel&&(identical(other.productType, productType) || other.productType == productType)&&const DeepCollectionEquality().equals(other.products, products));
}


@override
int get hashCode => Object.hash(runtimeType,productType,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ProductCompareFoodResponseDataModel(productType: $productType, products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductCompareFoodResponseDataModelCopyWith<$Res>  {
  factory $ProductCompareFoodResponseDataModelCopyWith(ProductCompareFoodResponseDataModel value, $Res Function(ProductCompareFoodResponseDataModel) _then) = _$ProductCompareFoodResponseDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, List<FoodDetailResponseModel> products
});




}
/// @nodoc
class _$ProductCompareFoodResponseDataModelCopyWithImpl<$Res>
    implements $ProductCompareFoodResponseDataModelCopyWith<$Res> {
  _$ProductCompareFoodResponseDataModelCopyWithImpl(this._self, this._then);

  final ProductCompareFoodResponseDataModel _self;
  final $Res Function(ProductCompareFoodResponseDataModel) _then;

/// Create a copy of ProductCompareFoodResponseDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? products = null,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<FoodDetailResponseModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCompareFoodResponseDataModel].
extension ProductCompareFoodResponseDataModelPatterns on ProductCompareFoodResponseDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareFoodResponseDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareFoodResponseDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareFoodResponseDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  List<FoodDetailResponseModel> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataModel() when $default != null:
return $default(_that.productType,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  List<FoodDetailResponseModel> products)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataModel():
return $default(_that.productType,_that.products);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType,  List<FoodDetailResponseModel> products)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataModel() when $default != null:
return $default(_that.productType,_that.products);case _:
  return null;

}
}

}

/// @nodoc


class _ProductCompareFoodResponseDataModel implements ProductCompareFoodResponseDataModel {
  const _ProductCompareFoodResponseDataModel({@JsonKey(name: 'product_type') this.productType, final  List<FoodDetailResponseModel> products = const []}): _products = products;
  

@override@JsonKey(name: 'product_type') final  String? productType;
 final  List<FoodDetailResponseModel> _products;
@override@JsonKey() List<FoodDetailResponseModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductCompareFoodResponseDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareFoodResponseDataModelCopyWith<_ProductCompareFoodResponseDataModel> get copyWith => __$ProductCompareFoodResponseDataModelCopyWithImpl<_ProductCompareFoodResponseDataModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareFoodResponseDataModel&&(identical(other.productType, productType) || other.productType == productType)&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,productType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductCompareFoodResponseDataModel(productType: $productType, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareFoodResponseDataModelCopyWith<$Res> implements $ProductCompareFoodResponseDataModelCopyWith<$Res> {
  factory _$ProductCompareFoodResponseDataModelCopyWith(_ProductCompareFoodResponseDataModel value, $Res Function(_ProductCompareFoodResponseDataModel) _then) = __$ProductCompareFoodResponseDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, List<FoodDetailResponseModel> products
});




}
/// @nodoc
class __$ProductCompareFoodResponseDataModelCopyWithImpl<$Res>
    implements _$ProductCompareFoodResponseDataModelCopyWith<$Res> {
  __$ProductCompareFoodResponseDataModelCopyWithImpl(this._self, this._then);

  final _ProductCompareFoodResponseDataModel _self;
  final $Res Function(_ProductCompareFoodResponseDataModel) _then;

/// Create a copy of ProductCompareFoodResponseDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? products = null,}) {
  return _then(_ProductCompareFoodResponseDataModel(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<FoodDetailResponseModel>,
  ));
}


}

// dart format on
