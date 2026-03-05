// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_cosmetic_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCompareCosmeticResponseDTO {

 ProductCompareCosmeticResponseDataDTO get data;
/// Create a copy of ProductCompareCosmeticResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareCosmeticResponseDTOCopyWith<ProductCompareCosmeticResponseDTO> get copyWith => _$ProductCompareCosmeticResponseDTOCopyWithImpl<ProductCompareCosmeticResponseDTO>(this as ProductCompareCosmeticResponseDTO, _$identity);

  /// Serializes this ProductCompareCosmeticResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareCosmeticResponseDTO&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareCosmeticResponseDTO(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductCompareCosmeticResponseDTOCopyWith<$Res>  {
  factory $ProductCompareCosmeticResponseDTOCopyWith(ProductCompareCosmeticResponseDTO value, $Res Function(ProductCompareCosmeticResponseDTO) _then) = _$ProductCompareCosmeticResponseDTOCopyWithImpl;
@useResult
$Res call({
 ProductCompareCosmeticResponseDataDTO data
});


$ProductCompareCosmeticResponseDataDTOCopyWith<$Res> get data;

}
/// @nodoc
class _$ProductCompareCosmeticResponseDTOCopyWithImpl<$Res>
    implements $ProductCompareCosmeticResponseDTOCopyWith<$Res> {
  _$ProductCompareCosmeticResponseDTOCopyWithImpl(this._self, this._then);

  final ProductCompareCosmeticResponseDTO _self;
  final $Res Function(ProductCompareCosmeticResponseDTO) _then;

/// Create a copy of ProductCompareCosmeticResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareCosmeticResponseDataDTO,
  ));
}
/// Create a copy of ProductCompareCosmeticResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareCosmeticResponseDataDTOCopyWith<$Res> get data {
  
  return $ProductCompareCosmeticResponseDataDTOCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductCompareCosmeticResponseDTO].
extension ProductCompareCosmeticResponseDTOPatterns on ProductCompareCosmeticResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareCosmeticResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareCosmeticResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareCosmeticResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductCompareCosmeticResponseDataDTO data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductCompareCosmeticResponseDataDTO data)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductCompareCosmeticResponseDataDTO data)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseDTO() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCompareCosmeticResponseDTO implements ProductCompareCosmeticResponseDTO {
  const _ProductCompareCosmeticResponseDTO({required this.data});
  factory _ProductCompareCosmeticResponseDTO.fromJson(Map<String, dynamic> json) => _$ProductCompareCosmeticResponseDTOFromJson(json);

@override final  ProductCompareCosmeticResponseDataDTO data;

/// Create a copy of ProductCompareCosmeticResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareCosmeticResponseDTOCopyWith<_ProductCompareCosmeticResponseDTO> get copyWith => __$ProductCompareCosmeticResponseDTOCopyWithImpl<_ProductCompareCosmeticResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCompareCosmeticResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareCosmeticResponseDTO&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareCosmeticResponseDTO(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareCosmeticResponseDTOCopyWith<$Res> implements $ProductCompareCosmeticResponseDTOCopyWith<$Res> {
  factory _$ProductCompareCosmeticResponseDTOCopyWith(_ProductCompareCosmeticResponseDTO value, $Res Function(_ProductCompareCosmeticResponseDTO) _then) = __$ProductCompareCosmeticResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 ProductCompareCosmeticResponseDataDTO data
});


@override $ProductCompareCosmeticResponseDataDTOCopyWith<$Res> get data;

}
/// @nodoc
class __$ProductCompareCosmeticResponseDTOCopyWithImpl<$Res>
    implements _$ProductCompareCosmeticResponseDTOCopyWith<$Res> {
  __$ProductCompareCosmeticResponseDTOCopyWithImpl(this._self, this._then);

  final _ProductCompareCosmeticResponseDTO _self;
  final $Res Function(_ProductCompareCosmeticResponseDTO) _then;

/// Create a copy of ProductCompareCosmeticResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProductCompareCosmeticResponseDTO(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareCosmeticResponseDataDTO,
  ));
}

/// Create a copy of ProductCompareCosmeticResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareCosmeticResponseDataDTOCopyWith<$Res> get data {
  
  return $ProductCompareCosmeticResponseDataDTOCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
