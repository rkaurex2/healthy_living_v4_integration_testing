// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entitlements_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntitlementsResponseDto {

@JsonKey(name: 'entitlement_id') String? get entitlementId; bool? get active;@JsonKey(name: 'product_id') String? get productId; String? get environment;
/// Create a copy of EntitlementsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntitlementsResponseDtoCopyWith<EntitlementsResponseDto> get copyWith => _$EntitlementsResponseDtoCopyWithImpl<EntitlementsResponseDto>(this as EntitlementsResponseDto, _$identity);

  /// Serializes this EntitlementsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntitlementsResponseDto&&(identical(other.entitlementId, entitlementId) || other.entitlementId == entitlementId)&&(identical(other.active, active) || other.active == active)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.environment, environment) || other.environment == environment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,entitlementId,active,productId,environment);

@override
String toString() {
  return 'EntitlementsResponseDto(entitlementId: $entitlementId, active: $active, productId: $productId, environment: $environment)';
}


}

/// @nodoc
abstract mixin class $EntitlementsResponseDtoCopyWith<$Res>  {
  factory $EntitlementsResponseDtoCopyWith(EntitlementsResponseDto value, $Res Function(EntitlementsResponseDto) _then) = _$EntitlementsResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'entitlement_id') String? entitlementId, bool? active,@JsonKey(name: 'product_id') String? productId, String? environment
});




}
/// @nodoc
class _$EntitlementsResponseDtoCopyWithImpl<$Res>
    implements $EntitlementsResponseDtoCopyWith<$Res> {
  _$EntitlementsResponseDtoCopyWithImpl(this._self, this._then);

  final EntitlementsResponseDto _self;
  final $Res Function(EntitlementsResponseDto) _then;

/// Create a copy of EntitlementsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entitlementId = freezed,Object? active = freezed,Object? productId = freezed,Object? environment = freezed,}) {
  return _then(_self.copyWith(
entitlementId: freezed == entitlementId ? _self.entitlementId : entitlementId // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,environment: freezed == environment ? _self.environment : environment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EntitlementsResponseDto].
extension EntitlementsResponseDtoPatterns on EntitlementsResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntitlementsResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntitlementsResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntitlementsResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _EntitlementsResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntitlementsResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _EntitlementsResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'entitlement_id')  String? entitlementId,  bool? active, @JsonKey(name: 'product_id')  String? productId,  String? environment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntitlementsResponseDto() when $default != null:
return $default(_that.entitlementId,_that.active,_that.productId,_that.environment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'entitlement_id')  String? entitlementId,  bool? active, @JsonKey(name: 'product_id')  String? productId,  String? environment)  $default,) {final _that = this;
switch (_that) {
case _EntitlementsResponseDto():
return $default(_that.entitlementId,_that.active,_that.productId,_that.environment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'entitlement_id')  String? entitlementId,  bool? active, @JsonKey(name: 'product_id')  String? productId,  String? environment)?  $default,) {final _that = this;
switch (_that) {
case _EntitlementsResponseDto() when $default != null:
return $default(_that.entitlementId,_that.active,_that.productId,_that.environment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntitlementsResponseDto implements EntitlementsResponseDto {
  const _EntitlementsResponseDto({@JsonKey(name: 'entitlement_id') this.entitlementId, this.active, @JsonKey(name: 'product_id') this.productId, this.environment});
  factory _EntitlementsResponseDto.fromJson(Map<String, dynamic> json) => _$EntitlementsResponseDtoFromJson(json);

@override@JsonKey(name: 'entitlement_id') final  String? entitlementId;
@override final  bool? active;
@override@JsonKey(name: 'product_id') final  String? productId;
@override final  String? environment;

/// Create a copy of EntitlementsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntitlementsResponseDtoCopyWith<_EntitlementsResponseDto> get copyWith => __$EntitlementsResponseDtoCopyWithImpl<_EntitlementsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntitlementsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntitlementsResponseDto&&(identical(other.entitlementId, entitlementId) || other.entitlementId == entitlementId)&&(identical(other.active, active) || other.active == active)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.environment, environment) || other.environment == environment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,entitlementId,active,productId,environment);

@override
String toString() {
  return 'EntitlementsResponseDto(entitlementId: $entitlementId, active: $active, productId: $productId, environment: $environment)';
}


}

/// @nodoc
abstract mixin class _$EntitlementsResponseDtoCopyWith<$Res> implements $EntitlementsResponseDtoCopyWith<$Res> {
  factory _$EntitlementsResponseDtoCopyWith(_EntitlementsResponseDto value, $Res Function(_EntitlementsResponseDto) _then) = __$EntitlementsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'entitlement_id') String? entitlementId, bool? active,@JsonKey(name: 'product_id') String? productId, String? environment
});




}
/// @nodoc
class __$EntitlementsResponseDtoCopyWithImpl<$Res>
    implements _$EntitlementsResponseDtoCopyWith<$Res> {
  __$EntitlementsResponseDtoCopyWithImpl(this._self, this._then);

  final _EntitlementsResponseDto _self;
  final $Res Function(_EntitlementsResponseDto) _then;

/// Create a copy of EntitlementsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entitlementId = freezed,Object? active = freezed,Object? productId = freezed,Object? environment = freezed,}) {
  return _then(_EntitlementsResponseDto(
entitlementId: freezed == entitlementId ? _self.entitlementId : entitlementId // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,environment: freezed == environment ? _self.environment : environment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
