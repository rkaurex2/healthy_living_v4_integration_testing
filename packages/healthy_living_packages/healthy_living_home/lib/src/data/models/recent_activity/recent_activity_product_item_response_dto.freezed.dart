// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_activity_product_item_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecentActivityProductItemResponseDTO {

 int? get id; int? get position;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'product_type') String? get productType; RecentActivityProductResponseDTO? get product;
/// Create a copy of RecentActivityProductItemResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentActivityProductItemResponseDTOCopyWith<RecentActivityProductItemResponseDTO> get copyWith => _$RecentActivityProductItemResponseDTOCopyWithImpl<RecentActivityProductItemResponseDTO>(this as RecentActivityProductItemResponseDTO, _$identity);

  /// Serializes this RecentActivityProductItemResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentActivityProductItemResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,position,productId,productType,product);

@override
String toString() {
  return 'RecentActivityProductItemResponseDTO(id: $id, position: $position, productId: $productId, productType: $productType, product: $product)';
}


}

/// @nodoc
abstract mixin class $RecentActivityProductItemResponseDTOCopyWith<$Res>  {
  factory $RecentActivityProductItemResponseDTOCopyWith(RecentActivityProductItemResponseDTO value, $Res Function(RecentActivityProductItemResponseDTO) _then) = _$RecentActivityProductItemResponseDTOCopyWithImpl;
@useResult
$Res call({
 int? id, int? position,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_type') String? productType, RecentActivityProductResponseDTO? product
});


$RecentActivityProductResponseDTOCopyWith<$Res>? get product;

}
/// @nodoc
class _$RecentActivityProductItemResponseDTOCopyWithImpl<$Res>
    implements $RecentActivityProductItemResponseDTOCopyWith<$Res> {
  _$RecentActivityProductItemResponseDTOCopyWithImpl(this._self, this._then);

  final RecentActivityProductItemResponseDTO _self;
  final $Res Function(RecentActivityProductItemResponseDTO) _then;

/// Create a copy of RecentActivityProductItemResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? position = freezed,Object? productId = freezed,Object? productType = freezed,Object? product = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as RecentActivityProductResponseDTO?,
  ));
}
/// Create a copy of RecentActivityProductItemResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecentActivityProductResponseDTOCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $RecentActivityProductResponseDTOCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecentActivityProductItemResponseDTO].
extension RecentActivityProductItemResponseDTOPatterns on RecentActivityProductItemResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentActivityProductItemResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentActivityProductItemResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentActivityProductItemResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _RecentActivityProductItemResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentActivityProductItemResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RecentActivityProductItemResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? position, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_type')  String? productType,  RecentActivityProductResponseDTO? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentActivityProductItemResponseDTO() when $default != null:
return $default(_that.id,_that.position,_that.productId,_that.productType,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? position, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_type')  String? productType,  RecentActivityProductResponseDTO? product)  $default,) {final _that = this;
switch (_that) {
case _RecentActivityProductItemResponseDTO():
return $default(_that.id,_that.position,_that.productId,_that.productType,_that.product);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? position, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_type')  String? productType,  RecentActivityProductResponseDTO? product)?  $default,) {final _that = this;
switch (_that) {
case _RecentActivityProductItemResponseDTO() when $default != null:
return $default(_that.id,_that.position,_that.productId,_that.productType,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentActivityProductItemResponseDTO implements RecentActivityProductItemResponseDTO {
  const _RecentActivityProductItemResponseDTO({this.id, this.position, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'product_type') this.productType, this.product});
  factory _RecentActivityProductItemResponseDTO.fromJson(Map<String, dynamic> json) => _$RecentActivityProductItemResponseDTOFromJson(json);

@override final  int? id;
@override final  int? position;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'product_type') final  String? productType;
@override final  RecentActivityProductResponseDTO? product;

/// Create a copy of RecentActivityProductItemResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentActivityProductItemResponseDTOCopyWith<_RecentActivityProductItemResponseDTO> get copyWith => __$RecentActivityProductItemResponseDTOCopyWithImpl<_RecentActivityProductItemResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentActivityProductItemResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentActivityProductItemResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,position,productId,productType,product);

@override
String toString() {
  return 'RecentActivityProductItemResponseDTO(id: $id, position: $position, productId: $productId, productType: $productType, product: $product)';
}


}

/// @nodoc
abstract mixin class _$RecentActivityProductItemResponseDTOCopyWith<$Res> implements $RecentActivityProductItemResponseDTOCopyWith<$Res> {
  factory _$RecentActivityProductItemResponseDTOCopyWith(_RecentActivityProductItemResponseDTO value, $Res Function(_RecentActivityProductItemResponseDTO) _then) = __$RecentActivityProductItemResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? position,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_type') String? productType, RecentActivityProductResponseDTO? product
});


@override $RecentActivityProductResponseDTOCopyWith<$Res>? get product;

}
/// @nodoc
class __$RecentActivityProductItemResponseDTOCopyWithImpl<$Res>
    implements _$RecentActivityProductItemResponseDTOCopyWith<$Res> {
  __$RecentActivityProductItemResponseDTOCopyWithImpl(this._self, this._then);

  final _RecentActivityProductItemResponseDTO _self;
  final $Res Function(_RecentActivityProductItemResponseDTO) _then;

/// Create a copy of RecentActivityProductItemResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? position = freezed,Object? productId = freezed,Object? productType = freezed,Object? product = freezed,}) {
  return _then(_RecentActivityProductItemResponseDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as RecentActivityProductResponseDTO?,
  ));
}

/// Create a copy of RecentActivityProductItemResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecentActivityProductResponseDTOCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $RecentActivityProductResponseDTOCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
