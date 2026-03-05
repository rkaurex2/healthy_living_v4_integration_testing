// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_aggregation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrandAggregationDTO {

 int? get id; String? get name; int? get count;
/// Create a copy of BrandAggregationDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandAggregationDTOCopyWith<BrandAggregationDTO> get copyWith => _$BrandAggregationDTOCopyWithImpl<BrandAggregationDTO>(this as BrandAggregationDTO, _$identity);

  /// Serializes this BrandAggregationDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandAggregationDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count);

@override
String toString() {
  return 'BrandAggregationDTO(id: $id, name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class $BrandAggregationDTOCopyWith<$Res>  {
  factory $BrandAggregationDTOCopyWith(BrandAggregationDTO value, $Res Function(BrandAggregationDTO) _then) = _$BrandAggregationDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? count
});




}
/// @nodoc
class _$BrandAggregationDTOCopyWithImpl<$Res>
    implements $BrandAggregationDTOCopyWith<$Res> {
  _$BrandAggregationDTOCopyWithImpl(this._self, this._then);

  final BrandAggregationDTO _self;
  final $Res Function(BrandAggregationDTO) _then;

/// Create a copy of BrandAggregationDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandAggregationDTO].
extension BrandAggregationDTOPatterns on BrandAggregationDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandAggregationDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandAggregationDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandAggregationDTO value)  $default,){
final _that = this;
switch (_that) {
case _BrandAggregationDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandAggregationDTO value)?  $default,){
final _that = this;
switch (_that) {
case _BrandAggregationDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandAggregationDTO() when $default != null:
return $default(_that.id,_that.name,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? count)  $default,) {final _that = this;
switch (_that) {
case _BrandAggregationDTO():
return $default(_that.id,_that.name,_that.count);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _BrandAggregationDTO() when $default != null:
return $default(_that.id,_that.name,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandAggregationDTO implements BrandAggregationDTO {
  const _BrandAggregationDTO({this.id, this.name, this.count});
  factory _BrandAggregationDTO.fromJson(Map<String, dynamic> json) => _$BrandAggregationDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  int? count;

/// Create a copy of BrandAggregationDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandAggregationDTOCopyWith<_BrandAggregationDTO> get copyWith => __$BrandAggregationDTOCopyWithImpl<_BrandAggregationDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandAggregationDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandAggregationDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count);

@override
String toString() {
  return 'BrandAggregationDTO(id: $id, name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class _$BrandAggregationDTOCopyWith<$Res> implements $BrandAggregationDTOCopyWith<$Res> {
  factory _$BrandAggregationDTOCopyWith(_BrandAggregationDTO value, $Res Function(_BrandAggregationDTO) _then) = __$BrandAggregationDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? count
});




}
/// @nodoc
class __$BrandAggregationDTOCopyWithImpl<$Res>
    implements _$BrandAggregationDTOCopyWith<$Res> {
  __$BrandAggregationDTOCopyWithImpl(this._self, this._then);

  final _BrandAggregationDTO _self;
  final $Res Function(_BrandAggregationDTO) _then;

/// Create a copy of BrandAggregationDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? count = freezed,}) {
  return _then(_BrandAggregationDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
