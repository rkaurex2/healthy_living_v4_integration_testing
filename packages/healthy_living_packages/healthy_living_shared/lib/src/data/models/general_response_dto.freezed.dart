// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralResponseDTO {

 String? get status; String? get message;
/// Create a copy of GeneralResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralResponseDTOCopyWith<GeneralResponseDTO> get copyWith => _$GeneralResponseDTOCopyWithImpl<GeneralResponseDTO>(this as GeneralResponseDTO, _$identity);

  /// Serializes this GeneralResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralResponseDTO&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'GeneralResponseDTO(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneralResponseDTOCopyWith<$Res>  {
  factory $GeneralResponseDTOCopyWith(GeneralResponseDTO value, $Res Function(GeneralResponseDTO) _then) = _$GeneralResponseDTOCopyWithImpl;
@useResult
$Res call({
 String? status, String? message
});




}
/// @nodoc
class _$GeneralResponseDTOCopyWithImpl<$Res>
    implements $GeneralResponseDTOCopyWith<$Res> {
  _$GeneralResponseDTOCopyWithImpl(this._self, this._then);

  final GeneralResponseDTO _self;
  final $Res Function(GeneralResponseDTO) _then;

/// Create a copy of GeneralResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneralResponseDTO].
extension GeneralResponseDTOPatterns on GeneralResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _GeneralResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralResponseDTO() when $default != null:
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message)  $default,) {final _that = this;
switch (_that) {
case _GeneralResponseDTO():
return $default(_that.status,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _GeneralResponseDTO() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneralResponseDTO implements GeneralResponseDTO {
  const _GeneralResponseDTO({this.status, this.message});
  factory _GeneralResponseDTO.fromJson(Map<String, dynamic> json) => _$GeneralResponseDTOFromJson(json);

@override final  String? status;
@override final  String? message;

/// Create a copy of GeneralResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralResponseDTOCopyWith<_GeneralResponseDTO> get copyWith => __$GeneralResponseDTOCopyWithImpl<_GeneralResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralResponseDTO&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'GeneralResponseDTO(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$GeneralResponseDTOCopyWith<$Res> implements $GeneralResponseDTOCopyWith<$Res> {
  factory _$GeneralResponseDTOCopyWith(_GeneralResponseDTO value, $Res Function(_GeneralResponseDTO) _then) = __$GeneralResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message
});




}
/// @nodoc
class __$GeneralResponseDTOCopyWithImpl<$Res>
    implements _$GeneralResponseDTOCopyWith<$Res> {
  __$GeneralResponseDTOCopyWithImpl(this._self, this._then);

  final _GeneralResponseDTO _self;
  final $Res Function(_GeneralResponseDTO) _then;

/// Create a copy of GeneralResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,}) {
  return _then(_GeneralResponseDTO(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
