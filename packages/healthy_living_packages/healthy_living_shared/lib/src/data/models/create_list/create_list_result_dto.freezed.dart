// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_list_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateListResultDTO {

@JsonKey(name: 'message') String get message;@JsonKey(name: 'list_id') int? get listId;
/// Create a copy of CreateListResultDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateListResultDTOCopyWith<CreateListResultDTO> get copyWith => _$CreateListResultDTOCopyWithImpl<CreateListResultDTO>(this as CreateListResultDTO, _$identity);

  /// Serializes this CreateListResultDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListResultDTO&&(identical(other.message, message) || other.message == message)&&(identical(other.listId, listId) || other.listId == listId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,listId);

@override
String toString() {
  return 'CreateListResultDTO(message: $message, listId: $listId)';
}


}

/// @nodoc
abstract mixin class $CreateListResultDTOCopyWith<$Res>  {
  factory $CreateListResultDTOCopyWith(CreateListResultDTO value, $Res Function(CreateListResultDTO) _then) = _$CreateListResultDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message') String message,@JsonKey(name: 'list_id') int? listId
});




}
/// @nodoc
class _$CreateListResultDTOCopyWithImpl<$Res>
    implements $CreateListResultDTOCopyWith<$Res> {
  _$CreateListResultDTOCopyWithImpl(this._self, this._then);

  final CreateListResultDTO _self;
  final $Res Function(CreateListResultDTO) _then;

/// Create a copy of CreateListResultDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? listId = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listId: freezed == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateListResultDTO].
extension CreateListResultDTOPatterns on CreateListResultDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateListResultDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateListResultDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateListResultDTO value)  $default,){
final _that = this;
switch (_that) {
case _CreateListResultDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateListResultDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CreateListResultDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String message, @JsonKey(name: 'list_id')  int? listId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateListResultDTO() when $default != null:
return $default(_that.message,_that.listId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String message, @JsonKey(name: 'list_id')  int? listId)  $default,) {final _that = this;
switch (_that) {
case _CreateListResultDTO():
return $default(_that.message,_that.listId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message')  String message, @JsonKey(name: 'list_id')  int? listId)?  $default,) {final _that = this;
switch (_that) {
case _CreateListResultDTO() when $default != null:
return $default(_that.message,_that.listId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateListResultDTO implements CreateListResultDTO {
  const _CreateListResultDTO({@JsonKey(name: 'message') required this.message, @JsonKey(name: 'list_id') this.listId});
  factory _CreateListResultDTO.fromJson(Map<String, dynamic> json) => _$CreateListResultDTOFromJson(json);

@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'list_id') final  int? listId;

/// Create a copy of CreateListResultDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateListResultDTOCopyWith<_CreateListResultDTO> get copyWith => __$CreateListResultDTOCopyWithImpl<_CreateListResultDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateListResultDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateListResultDTO&&(identical(other.message, message) || other.message == message)&&(identical(other.listId, listId) || other.listId == listId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,listId);

@override
String toString() {
  return 'CreateListResultDTO(message: $message, listId: $listId)';
}


}

/// @nodoc
abstract mixin class _$CreateListResultDTOCopyWith<$Res> implements $CreateListResultDTOCopyWith<$Res> {
  factory _$CreateListResultDTOCopyWith(_CreateListResultDTO value, $Res Function(_CreateListResultDTO) _then) = __$CreateListResultDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message') String message,@JsonKey(name: 'list_id') int? listId
});




}
/// @nodoc
class __$CreateListResultDTOCopyWithImpl<$Res>
    implements _$CreateListResultDTOCopyWith<$Res> {
  __$CreateListResultDTOCopyWithImpl(this._self, this._then);

  final _CreateListResultDTO _self;
  final $Res Function(_CreateListResultDTO) _then;

/// Create a copy of CreateListResultDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? listId = freezed,}) {
  return _then(_CreateListResultDTO(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listId: freezed == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
