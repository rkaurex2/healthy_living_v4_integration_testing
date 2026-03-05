// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_revenuecat_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthRevenueCatResponseDto {

@JsonKey(name: 'app_user_id') String? get appUserId;
/// Create a copy of AuthRevenueCatResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthRevenueCatResponseDtoCopyWith<AuthRevenueCatResponseDto> get copyWith => _$AuthRevenueCatResponseDtoCopyWithImpl<AuthRevenueCatResponseDto>(this as AuthRevenueCatResponseDto, _$identity);

  /// Serializes this AuthRevenueCatResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthRevenueCatResponseDto&&(identical(other.appUserId, appUserId) || other.appUserId == appUserId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appUserId);

@override
String toString() {
  return 'AuthRevenueCatResponseDto(appUserId: $appUserId)';
}


}

/// @nodoc
abstract mixin class $AuthRevenueCatResponseDtoCopyWith<$Res>  {
  factory $AuthRevenueCatResponseDtoCopyWith(AuthRevenueCatResponseDto value, $Res Function(AuthRevenueCatResponseDto) _then) = _$AuthRevenueCatResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'app_user_id') String? appUserId
});




}
/// @nodoc
class _$AuthRevenueCatResponseDtoCopyWithImpl<$Res>
    implements $AuthRevenueCatResponseDtoCopyWith<$Res> {
  _$AuthRevenueCatResponseDtoCopyWithImpl(this._self, this._then);

  final AuthRevenueCatResponseDto _self;
  final $Res Function(AuthRevenueCatResponseDto) _then;

/// Create a copy of AuthRevenueCatResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appUserId = freezed,}) {
  return _then(_self.copyWith(
appUserId: freezed == appUserId ? _self.appUserId : appUserId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthRevenueCatResponseDto].
extension AuthRevenueCatResponseDtoPatterns on AuthRevenueCatResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthRevenueCatResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthRevenueCatResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthRevenueCatResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthRevenueCatResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthRevenueCatResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthRevenueCatResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'app_user_id')  String? appUserId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthRevenueCatResponseDto() when $default != null:
return $default(_that.appUserId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'app_user_id')  String? appUserId)  $default,) {final _that = this;
switch (_that) {
case _AuthRevenueCatResponseDto():
return $default(_that.appUserId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'app_user_id')  String? appUserId)?  $default,) {final _that = this;
switch (_that) {
case _AuthRevenueCatResponseDto() when $default != null:
return $default(_that.appUserId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthRevenueCatResponseDto implements AuthRevenueCatResponseDto {
  const _AuthRevenueCatResponseDto({@JsonKey(name: 'app_user_id') this.appUserId});
  factory _AuthRevenueCatResponseDto.fromJson(Map<String, dynamic> json) => _$AuthRevenueCatResponseDtoFromJson(json);

@override@JsonKey(name: 'app_user_id') final  String? appUserId;

/// Create a copy of AuthRevenueCatResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRevenueCatResponseDtoCopyWith<_AuthRevenueCatResponseDto> get copyWith => __$AuthRevenueCatResponseDtoCopyWithImpl<_AuthRevenueCatResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthRevenueCatResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRevenueCatResponseDto&&(identical(other.appUserId, appUserId) || other.appUserId == appUserId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appUserId);

@override
String toString() {
  return 'AuthRevenueCatResponseDto(appUserId: $appUserId)';
}


}

/// @nodoc
abstract mixin class _$AuthRevenueCatResponseDtoCopyWith<$Res> implements $AuthRevenueCatResponseDtoCopyWith<$Res> {
  factory _$AuthRevenueCatResponseDtoCopyWith(_AuthRevenueCatResponseDto value, $Res Function(_AuthRevenueCatResponseDto) _then) = __$AuthRevenueCatResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'app_user_id') String? appUserId
});




}
/// @nodoc
class __$AuthRevenueCatResponseDtoCopyWithImpl<$Res>
    implements _$AuthRevenueCatResponseDtoCopyWith<$Res> {
  __$AuthRevenueCatResponseDtoCopyWithImpl(this._self, this._then);

  final _AuthRevenueCatResponseDto _self;
  final $Res Function(_AuthRevenueCatResponseDto) _then;

/// Create a copy of AuthRevenueCatResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appUserId = freezed,}) {
  return _then(_AuthRevenueCatResponseDto(
appUserId: freezed == appUserId ? _self.appUserId : appUserId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
