// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_cosmetic_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompareCosmeticResponseDataModel {

@JsonKey(name: 'product_type') String? get productType; List<CosmeticDetailResponseModel> get products;
/// Create a copy of ProductCompareCosmeticResponseDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareCosmeticResponseDataModelCopyWith<ProductCompareCosmeticResponseDataModel> get copyWith => _$ProductCompareCosmeticResponseDataModelCopyWithImpl<ProductCompareCosmeticResponseDataModel>(this as ProductCompareCosmeticResponseDataModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareCosmeticResponseDataModel&&(identical(other.productType, productType) || other.productType == productType)&&const DeepCollectionEquality().equals(other.products, products));
}


@override
int get hashCode => Object.hash(runtimeType,productType,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ProductCompareCosmeticResponseDataModel(productType: $productType, products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductCompareCosmeticResponseDataModelCopyWith<$Res>  {
  factory $ProductCompareCosmeticResponseDataModelCopyWith(ProductCompareCosmeticResponseDataModel value, $Res Function(ProductCompareCosmeticResponseDataModel) _then) = _$ProductCompareCosmeticResponseDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, List<CosmeticDetailResponseModel> products
});




}
/// @nodoc
class _$ProductCompareCosmeticResponseDataModelCopyWithImpl<$Res>
    implements $ProductCompareCosmeticResponseDataModelCopyWith<$Res> {
  _$ProductCompareCosmeticResponseDataModelCopyWithImpl(this._self, this._then);

  final ProductCompareCosmeticResponseDataModel _self;
  final $Res Function(ProductCompareCosmeticResponseDataModel) _then;

/// Create a copy of ProductCompareCosmeticResponseDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? products = null,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CosmeticDetailResponseModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCompareCosmeticResponseDataModel].
extension ProductCompareCosmeticResponseDataModelPatterns on ProductCompareCosmeticResponseDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareCosmeticResponseDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareCosmeticResponseDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareCosmeticResponseDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  List<CosmeticDetailResponseModel> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDataModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  List<CosmeticDetailResponseModel> products)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDataModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType,  List<CosmeticDetailResponseModel> products)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDataModel() when $default != null:
return $default(_that.productType,_that.products);case _:
  return null;

}
}

}

/// @nodoc


class _ProductCompareCosmeticResponseDataModel implements ProductCompareCosmeticResponseDataModel {
  const _ProductCompareCosmeticResponseDataModel({@JsonKey(name: 'product_type') this.productType, final  List<CosmeticDetailResponseModel> products = const []}): _products = products;
  

@override@JsonKey(name: 'product_type') final  String? productType;
 final  List<CosmeticDetailResponseModel> _products;
@override@JsonKey() List<CosmeticDetailResponseModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductCompareCosmeticResponseDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareCosmeticResponseDataModelCopyWith<_ProductCompareCosmeticResponseDataModel> get copyWith => __$ProductCompareCosmeticResponseDataModelCopyWithImpl<_ProductCompareCosmeticResponseDataModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareCosmeticResponseDataModel&&(identical(other.productType, productType) || other.productType == productType)&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,productType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductCompareCosmeticResponseDataModel(productType: $productType, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareCosmeticResponseDataModelCopyWith<$Res> implements $ProductCompareCosmeticResponseDataModelCopyWith<$Res> {
  factory _$ProductCompareCosmeticResponseDataModelCopyWith(_ProductCompareCosmeticResponseDataModel value, $Res Function(_ProductCompareCosmeticResponseDataModel) _then) = __$ProductCompareCosmeticResponseDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, List<CosmeticDetailResponseModel> products
});




}
/// @nodoc
class __$ProductCompareCosmeticResponseDataModelCopyWithImpl<$Res>
    implements _$ProductCompareCosmeticResponseDataModelCopyWith<$Res> {
  __$ProductCompareCosmeticResponseDataModelCopyWithImpl(this._self, this._then);

  final _ProductCompareCosmeticResponseDataModel _self;
  final $Res Function(_ProductCompareCosmeticResponseDataModel) _then;

/// Create a copy of ProductCompareCosmeticResponseDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? products = null,}) {
  return _then(_ProductCompareCosmeticResponseDataModel(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<CosmeticDetailResponseModel>,
  ));
}


}

// dart format on
