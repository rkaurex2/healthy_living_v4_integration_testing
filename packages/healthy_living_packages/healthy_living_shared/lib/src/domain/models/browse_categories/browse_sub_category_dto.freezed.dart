// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_sub_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrowseSubCategoryDTO {

 int? get id; String? get name;@JsonKey(name: 'product_count') int? get productCount;@JsonKey(name: 'verified_product_count') int? get verifiedProductCount;
/// Create a copy of BrowseSubCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseSubCategoryDTOCopyWith<BrowseSubCategoryDTO> get copyWith => _$BrowseSubCategoryDTOCopyWithImpl<BrowseSubCategoryDTO>(this as BrowseSubCategoryDTO, _$identity);

  /// Serializes this BrowseSubCategoryDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseSubCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount);

@override
String toString() {
  return 'BrowseSubCategoryDTO(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount)';
}


}

/// @nodoc
abstract mixin class $BrowseSubCategoryDTOCopyWith<$Res>  {
  factory $BrowseSubCategoryDTOCopyWith(BrowseSubCategoryDTO value, $Res Function(BrowseSubCategoryDTO) _then) = _$BrowseSubCategoryDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'product_count') int? productCount,@JsonKey(name: 'verified_product_count') int? verifiedProductCount
});




}
/// @nodoc
class _$BrowseSubCategoryDTOCopyWithImpl<$Res>
    implements $BrowseSubCategoryDTOCopyWith<$Res> {
  _$BrowseSubCategoryDTOCopyWithImpl(this._self, this._then);

  final BrowseSubCategoryDTO _self;
  final $Res Function(BrowseSubCategoryDTO) _then;

/// Create a copy of BrowseSubCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseSubCategoryDTO].
extension BrowseSubCategoryDTOPatterns on BrowseSubCategoryDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseSubCategoryDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseSubCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseSubCategoryDTO value)  $default,){
final _that = this;
switch (_that) {
case _BrowseSubCategoryDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseSubCategoryDTO value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseSubCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseSubCategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount)  $default,) {final _that = this;
switch (_that) {
case _BrowseSubCategoryDTO():
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount)?  $default,) {final _that = this;
switch (_that) {
case _BrowseSubCategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrowseSubCategoryDTO implements BrowseSubCategoryDTO {
  const _BrowseSubCategoryDTO({this.id, this.name, @JsonKey(name: 'product_count') this.productCount, @JsonKey(name: 'verified_product_count') this.verifiedProductCount});
  factory _BrowseSubCategoryDTO.fromJson(Map<String, dynamic> json) => _$BrowseSubCategoryDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'product_count') final  int? productCount;
@override@JsonKey(name: 'verified_product_count') final  int? verifiedProductCount;

/// Create a copy of BrowseSubCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseSubCategoryDTOCopyWith<_BrowseSubCategoryDTO> get copyWith => __$BrowseSubCategoryDTOCopyWithImpl<_BrowseSubCategoryDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrowseSubCategoryDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseSubCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount);

@override
String toString() {
  return 'BrowseSubCategoryDTO(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount)';
}


}

/// @nodoc
abstract mixin class _$BrowseSubCategoryDTOCopyWith<$Res> implements $BrowseSubCategoryDTOCopyWith<$Res> {
  factory _$BrowseSubCategoryDTOCopyWith(_BrowseSubCategoryDTO value, $Res Function(_BrowseSubCategoryDTO) _then) = __$BrowseSubCategoryDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'product_count') int? productCount,@JsonKey(name: 'verified_product_count') int? verifiedProductCount
});




}
/// @nodoc
class __$BrowseSubCategoryDTOCopyWithImpl<$Res>
    implements _$BrowseSubCategoryDTOCopyWith<$Res> {
  __$BrowseSubCategoryDTOCopyWithImpl(this._self, this._then);

  final _BrowseSubCategoryDTO _self;
  final $Res Function(_BrowseSubCategoryDTO) _then;

/// Create a copy of BrowseSubCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,}) {
  return _then(_BrowseSubCategoryDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
