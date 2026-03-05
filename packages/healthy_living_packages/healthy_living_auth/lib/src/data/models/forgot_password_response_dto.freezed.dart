// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordResponseDTO {

@JsonKey(name: 'message') String? get message;
/// Create a copy of ForgotPasswordResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordResponseDTOCopyWith<ForgotPasswordResponseDTO> get copyWith => _$ForgotPasswordResponseDTOCopyWithImpl<ForgotPasswordResponseDTO>(this as ForgotPasswordResponseDTO, _$identity);

  /// Serializes this ForgotPasswordResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordResponseDTO&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForgotPasswordResponseDTO(message: $message)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordResponseDTOCopyWith<$Res>  {
  factory $ForgotPasswordResponseDTOCopyWith(ForgotPasswordResponseDTO value, $Res Function(ForgotPasswordResponseDTO) _then) = _$ForgotPasswordResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message') String? message
});




}
/// @nodoc
class _$ForgotPasswordResponseDTOCopyWithImpl<$Res>
    implements $ForgotPasswordResponseDTOCopyWith<$Res> {
  _$ForgotPasswordResponseDTOCopyWithImpl(this._self, this._then);

  final ForgotPasswordResponseDTO _self;
  final $Res Function(ForgotPasswordResponseDTO) _then;

/// Create a copy of ForgotPasswordResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPasswordResponseDTO].
extension ForgotPasswordResponseDTOPatterns on ForgotPasswordResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseDTO() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String? message)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseDTO():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message')  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseDTO() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgotPasswordResponseDTO implements ForgotPasswordResponseDTO {
  const _ForgotPasswordResponseDTO({@JsonKey(name: 'message') this.message});
  factory _ForgotPasswordResponseDTO.fromJson(Map<String, dynamic> json) => _$ForgotPasswordResponseDTOFromJson(json);

@override@JsonKey(name: 'message') final  String? message;

/// Create a copy of ForgotPasswordResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordResponseDTOCopyWith<_ForgotPasswordResponseDTO> get copyWith => __$ForgotPasswordResponseDTOCopyWithImpl<_ForgotPasswordResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgotPasswordResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordResponseDTO&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForgotPasswordResponseDTO(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordResponseDTOCopyWith<$Res> implements $ForgotPasswordResponseDTOCopyWith<$Res> {
  factory _$ForgotPasswordResponseDTOCopyWith(_ForgotPasswordResponseDTO value, $Res Function(_ForgotPasswordResponseDTO) _then) = __$ForgotPasswordResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message') String? message
});




}
/// @nodoc
class __$ForgotPasswordResponseDTOCopyWithImpl<$Res>
    implements _$ForgotPasswordResponseDTOCopyWith<$Res> {
  __$ForgotPasswordResponseDTOCopyWithImpl(this._self, this._then);

  final _ForgotPasswordResponseDTO _self;
  final $Res Function(_ForgotPasswordResponseDTO) _then;

/// Create a copy of ForgotPasswordResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ForgotPasswordResponseDTO(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
