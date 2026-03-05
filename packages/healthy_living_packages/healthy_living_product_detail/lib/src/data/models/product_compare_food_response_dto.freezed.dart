// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_food_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCompareFoodResponseDTO {

 ProductCompareFoodResponseDataDTO get data;
/// Create a copy of ProductCompareFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseDTOCopyWith<ProductCompareFoodResponseDTO> get copyWith => _$ProductCompareFoodResponseDTOCopyWithImpl<ProductCompareFoodResponseDTO>(this as ProductCompareFoodResponseDTO, _$identity);

  /// Serializes this ProductCompareFoodResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareFoodResponseDTO&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareFoodResponseDTO(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductCompareFoodResponseDTOCopyWith<$Res>  {
  factory $ProductCompareFoodResponseDTOCopyWith(ProductCompareFoodResponseDTO value, $Res Function(ProductCompareFoodResponseDTO) _then) = _$ProductCompareFoodResponseDTOCopyWithImpl;
@useResult
$Res call({
 ProductCompareFoodResponseDataDTO data
});


$ProductCompareFoodResponseDataDTOCopyWith<$Res> get data;

}
/// @nodoc
class _$ProductCompareFoodResponseDTOCopyWithImpl<$Res>
    implements $ProductCompareFoodResponseDTOCopyWith<$Res> {
  _$ProductCompareFoodResponseDTOCopyWithImpl(this._self, this._then);

  final ProductCompareFoodResponseDTO _self;
  final $Res Function(ProductCompareFoodResponseDTO) _then;

/// Create a copy of ProductCompareFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareFoodResponseDataDTO,
  ));
}
/// Create a copy of ProductCompareFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseDataDTOCopyWith<$Res> get data {
  
  return $ProductCompareFoodResponseDataDTOCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductCompareFoodResponseDTO].
extension ProductCompareFoodResponseDTOPatterns on ProductCompareFoodResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareFoodResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareFoodResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareFoodResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductCompareFoodResponseDataDTO data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDTO() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductCompareFoodResponseDataDTO data)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDTO():
return $default(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductCompareFoodResponseDataDTO data)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseDTO() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCompareFoodResponseDTO implements ProductCompareFoodResponseDTO {
  const _ProductCompareFoodResponseDTO({required this.data});
  factory _ProductCompareFoodResponseDTO.fromJson(Map<String, dynamic> json) => _$ProductCompareFoodResponseDTOFromJson(json);

@override final  ProductCompareFoodResponseDataDTO data;

/// Create a copy of ProductCompareFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareFoodResponseDTOCopyWith<_ProductCompareFoodResponseDTO> get copyWith => __$ProductCompareFoodResponseDTOCopyWithImpl<_ProductCompareFoodResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCompareFoodResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareFoodResponseDTO&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareFoodResponseDTO(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareFoodResponseDTOCopyWith<$Res> implements $ProductCompareFoodResponseDTOCopyWith<$Res> {
  factory _$ProductCompareFoodResponseDTOCopyWith(_ProductCompareFoodResponseDTO value, $Res Function(_ProductCompareFoodResponseDTO) _then) = __$ProductCompareFoodResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 ProductCompareFoodResponseDataDTO data
});


@override $ProductCompareFoodResponseDataDTOCopyWith<$Res> get data;

}
/// @nodoc
class __$ProductCompareFoodResponseDTOCopyWithImpl<$Res>
    implements _$ProductCompareFoodResponseDTOCopyWith<$Res> {
  __$ProductCompareFoodResponseDTOCopyWithImpl(this._self, this._then);

  final _ProductCompareFoodResponseDTO _self;
  final $Res Function(_ProductCompareFoodResponseDTO) _then;

/// Create a copy of ProductCompareFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProductCompareFoodResponseDTO(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareFoodResponseDataDTO,
  ));
}

/// Create a copy of ProductCompareFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseDataDTOCopyWith<$Res> get data {
  
  return $ProductCompareFoodResponseDataDTOCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
