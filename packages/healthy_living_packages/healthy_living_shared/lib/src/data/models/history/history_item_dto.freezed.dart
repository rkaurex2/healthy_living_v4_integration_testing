// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HistoryItemDTO {

 int? get id;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'product_type') String? get productType;@JsonKey(name: 'list_type') String? get listType; HistoryItemProductDTO? get product;
/// Create a copy of HistoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryItemDTOCopyWith<HistoryItemDTO> get copyWith => _$HistoryItemDTOCopyWithImpl<HistoryItemDTO>(this as HistoryItemDTO, _$identity);

  /// Serializes this HistoryItemDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryItemDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productType,listType,product);

@override
String toString() {
  return 'HistoryItemDTO(id: $id, productId: $productId, productType: $productType, listType: $listType, product: $product)';
}


}

/// @nodoc
abstract mixin class $HistoryItemDTOCopyWith<$Res>  {
  factory $HistoryItemDTOCopyWith(HistoryItemDTO value, $Res Function(HistoryItemDTO) _then) = _$HistoryItemDTOCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'list_type') String? listType, HistoryItemProductDTO? product
});


$HistoryItemProductDTOCopyWith<$Res>? get product;

}
/// @nodoc
class _$HistoryItemDTOCopyWithImpl<$Res>
    implements $HistoryItemDTOCopyWith<$Res> {
  _$HistoryItemDTOCopyWithImpl(this._self, this._then);

  final HistoryItemDTO _self;
  final $Res Function(HistoryItemDTO) _then;

/// Create a copy of HistoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = freezed,Object? productType = freezed,Object? listType = freezed,Object? product = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,listType: freezed == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as HistoryItemProductDTO?,
  ));
}
/// Create a copy of HistoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoryItemProductDTOCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $HistoryItemProductDTOCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [HistoryItemDTO].
extension HistoryItemDTOPatterns on HistoryItemDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryItemDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryItemDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryItemDTO value)  $default,){
final _that = this;
switch (_that) {
case _HistoryItemDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryItemDTO value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryItemDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'list_type')  String? listType,  HistoryItemProductDTO? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryItemDTO() when $default != null:
return $default(_that.id,_that.productId,_that.productType,_that.listType,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'list_type')  String? listType,  HistoryItemProductDTO? product)  $default,) {final _that = this;
switch (_that) {
case _HistoryItemDTO():
return $default(_that.id,_that.productId,_that.productType,_that.listType,_that.product);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'list_type')  String? listType,  HistoryItemProductDTO? product)?  $default,) {final _that = this;
switch (_that) {
case _HistoryItemDTO() when $default != null:
return $default(_that.id,_that.productId,_that.productType,_that.listType,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HistoryItemDTO implements HistoryItemDTO {
  const _HistoryItemDTO({this.id, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'list_type') this.listType, this.product});
  factory _HistoryItemDTO.fromJson(Map<String, dynamic> json) => _$HistoryItemDTOFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'product_type') final  String? productType;
@override@JsonKey(name: 'list_type') final  String? listType;
@override final  HistoryItemProductDTO? product;

/// Create a copy of HistoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryItemDTOCopyWith<_HistoryItemDTO> get copyWith => __$HistoryItemDTOCopyWithImpl<_HistoryItemDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoryItemDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryItemDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productType,listType,product);

@override
String toString() {
  return 'HistoryItemDTO(id: $id, productId: $productId, productType: $productType, listType: $listType, product: $product)';
}


}

/// @nodoc
abstract mixin class _$HistoryItemDTOCopyWith<$Res> implements $HistoryItemDTOCopyWith<$Res> {
  factory _$HistoryItemDTOCopyWith(_HistoryItemDTO value, $Res Function(_HistoryItemDTO) _then) = __$HistoryItemDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'list_type') String? listType, HistoryItemProductDTO? product
});


@override $HistoryItemProductDTOCopyWith<$Res>? get product;

}
/// @nodoc
class __$HistoryItemDTOCopyWithImpl<$Res>
    implements _$HistoryItemDTOCopyWith<$Res> {
  __$HistoryItemDTOCopyWithImpl(this._self, this._then);

  final _HistoryItemDTO _self;
  final $Res Function(_HistoryItemDTO) _then;

/// Create a copy of HistoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = freezed,Object? productType = freezed,Object? listType = freezed,Object? product = freezed,}) {
  return _then(_HistoryItemDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,listType: freezed == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as HistoryItemProductDTO?,
  ));
}

/// Create a copy of HistoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoryItemProductDTOCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $HistoryItemProductDTOCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
