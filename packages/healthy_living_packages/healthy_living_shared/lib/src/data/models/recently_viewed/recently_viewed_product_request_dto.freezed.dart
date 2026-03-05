// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_viewed_product_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecentlyViewedProductRequestDTO {

@JsonKey(name: 'product_id') int get productId;@JsonKey(name: 'product_type') String get productType;
/// Create a copy of RecentlyViewedProductRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentlyViewedProductRequestDTOCopyWith<RecentlyViewedProductRequestDTO> get copyWith => _$RecentlyViewedProductRequestDTOCopyWithImpl<RecentlyViewedProductRequestDTO>(this as RecentlyViewedProductRequestDTO, _$identity);

  /// Serializes this RecentlyViewedProductRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlyViewedProductRequestDTO&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productType, productType) || other.productType == productType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productType);

@override
String toString() {
  return 'RecentlyViewedProductRequestDTO(productId: $productId, productType: $productType)';
}


}

/// @nodoc
abstract mixin class $RecentlyViewedProductRequestDTOCopyWith<$Res>  {
  factory $RecentlyViewedProductRequestDTOCopyWith(RecentlyViewedProductRequestDTO value, $Res Function(RecentlyViewedProductRequestDTO) _then) = _$RecentlyViewedProductRequestDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'product_type') String productType
});




}
/// @nodoc
class _$RecentlyViewedProductRequestDTOCopyWithImpl<$Res>
    implements $RecentlyViewedProductRequestDTOCopyWith<$Res> {
  _$RecentlyViewedProductRequestDTOCopyWithImpl(this._self, this._then);

  final RecentlyViewedProductRequestDTO _self;
  final $Res Function(RecentlyViewedProductRequestDTO) _then;

/// Create a copy of RecentlyViewedProductRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? productType = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentlyViewedProductRequestDTO].
extension RecentlyViewedProductRequestDTOPatterns on RecentlyViewedProductRequestDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentlyViewedProductRequestDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentlyViewedProductRequestDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentlyViewedProductRequestDTO value)  $default,){
final _that = this;
switch (_that) {
case _RecentlyViewedProductRequestDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentlyViewedProductRequestDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RecentlyViewedProductRequestDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'product_type')  String productType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentlyViewedProductRequestDTO() when $default != null:
return $default(_that.productId,_that.productType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'product_type')  String productType)  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedProductRequestDTO():
return $default(_that.productId,_that.productType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'product_type')  String productType)?  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedProductRequestDTO() when $default != null:
return $default(_that.productId,_that.productType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentlyViewedProductRequestDTO implements RecentlyViewedProductRequestDTO {
  const _RecentlyViewedProductRequestDTO({@JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'product_type') required this.productType});
  factory _RecentlyViewedProductRequestDTO.fromJson(Map<String, dynamic> json) => _$RecentlyViewedProductRequestDTOFromJson(json);

@override@JsonKey(name: 'product_id') final  int productId;
@override@JsonKey(name: 'product_type') final  String productType;

/// Create a copy of RecentlyViewedProductRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentlyViewedProductRequestDTOCopyWith<_RecentlyViewedProductRequestDTO> get copyWith => __$RecentlyViewedProductRequestDTOCopyWithImpl<_RecentlyViewedProductRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentlyViewedProductRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentlyViewedProductRequestDTO&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productType, productType) || other.productType == productType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productType);

@override
String toString() {
  return 'RecentlyViewedProductRequestDTO(productId: $productId, productType: $productType)';
}


}

/// @nodoc
abstract mixin class _$RecentlyViewedProductRequestDTOCopyWith<$Res> implements $RecentlyViewedProductRequestDTOCopyWith<$Res> {
  factory _$RecentlyViewedProductRequestDTOCopyWith(_RecentlyViewedProductRequestDTO value, $Res Function(_RecentlyViewedProductRequestDTO) _then) = __$RecentlyViewedProductRequestDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'product_type') String productType
});




}
/// @nodoc
class __$RecentlyViewedProductRequestDTOCopyWithImpl<$Res>
    implements _$RecentlyViewedProductRequestDTOCopyWith<$Res> {
  __$RecentlyViewedProductRequestDTOCopyWithImpl(this._self, this._then);

  final _RecentlyViewedProductRequestDTO _self;
  final $Res Function(_RecentlyViewedProductRequestDTO) _then;

/// Create a copy of RecentlyViewedProductRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productType = null,}) {
  return _then(_RecentlyViewedProductRequestDTO(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
