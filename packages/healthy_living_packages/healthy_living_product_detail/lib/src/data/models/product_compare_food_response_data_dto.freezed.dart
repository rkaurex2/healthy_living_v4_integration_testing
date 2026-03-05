// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_food_response_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCompareFoodResponseDataDTO {

@JsonKey(name: 'product_type') String? get productType; List<FoodDetailResponseDTO> get products;
/// Create a copy of ProductCompareFoodResponseDataDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseDataDTOCopyWith<ProductCompareFoodResponseDataDTO> get copyWith => _$ProductCompareFoodResponseDataDTOCopyWithImpl<ProductCompareFoodResponseDataDTO>(this as ProductCompareFoodResponseDataDTO, _$identity);

  /// Serializes this ProductCompareFoodResponseDataDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareFoodResponseDataDTO&&(identical(other.productType, productType) || other.productType == productType)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ProductCompareFoodResponseDataDTO(productType: $productType, products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductCompareFoodResponseDataDTOCopyWith<$Res>  {
  factory $ProductCompareFoodResponseDataDTOCopyWith(ProductCompareFoodResponseDataDTO value, $Res Function(ProductCompareFoodResponseDataDTO) _then) = _$ProductCompareFoodResponseDataDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, List<FoodDetailResponseDTO> products
});




}
/// @nodoc
class _$ProductCompareFoodResponseDataDTOCopyWithImpl<$Res>
    implements $ProductCompareFoodResponseDataDTOCopyWith<$Res> {
  _$ProductCompareFoodResponseDataDTOCopyWithImpl(this._self, this._then);

  final ProductCompareFoodResponseDataDTO _self;
  final $Res Function(ProductCompareFoodResponseDataDTO) _then;

/// Create a copy of ProductCompareFoodResponseDataDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? products = null,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<FoodDetailResponseDTO>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCompareFoodResponseDataDTO].
extension ProductCompareFoodResponseDataDTOPatterns on ProductCompareFoodResponseDataDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareFoodResponseDataDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareFoodResponseDataDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareFoodResponseDataDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  List<FoodDetailResponseDTO> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  List<FoodDetailResponseDTO> products)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType,  List<FoodDetailResponseDTO> products)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDataDTO() when $default != null:
return $default(_that.productType,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCompareFoodResponseDataDTO implements ProductCompareFoodResponseDataDTO {
  const _ProductCompareFoodResponseDataDTO({@JsonKey(name: 'product_type') this.productType, final  List<FoodDetailResponseDTO> products = const []}): _products = products;
  factory _ProductCompareFoodResponseDataDTO.fromJson(Map<String, dynamic> json) => _$ProductCompareFoodResponseDataDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
 final  List<FoodDetailResponseDTO> _products;
@override@JsonKey() List<FoodDetailResponseDTO> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductCompareFoodResponseDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareFoodResponseDataDTOCopyWith<_ProductCompareFoodResponseDataDTO> get copyWith => __$ProductCompareFoodResponseDataDTOCopyWithImpl<_ProductCompareFoodResponseDataDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCompareFoodResponseDataDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareFoodResponseDataDTO&&(identical(other.productType, productType) || other.productType == productType)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductCompareFoodResponseDataDTO(productType: $productType, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareFoodResponseDataDTOCopyWith<$Res> implements $ProductCompareFoodResponseDataDTOCopyWith<$Res> {
  factory _$ProductCompareFoodResponseDataDTOCopyWith(_ProductCompareFoodResponseDataDTO value, $Res Function(_ProductCompareFoodResponseDataDTO) _then) = __$ProductCompareFoodResponseDataDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, List<FoodDetailResponseDTO> products
});




}
/// @nodoc
class __$ProductCompareFoodResponseDataDTOCopyWithImpl<$Res>
    implements _$ProductCompareFoodResponseDataDTOCopyWith<$Res> {
  __$ProductCompareFoodResponseDataDTOCopyWithImpl(this._self, this._then);

  final _ProductCompareFoodResponseDataDTO _self;
  final $Res Function(_ProductCompareFoodResponseDataDTO) _then;

/// Create a copy of ProductCompareFoodResponseDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? products = null,}) {
  return _then(_ProductCompareFoodResponseDataDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<FoodDetailResponseDTO>,
  ));
}


}

// dart format on
