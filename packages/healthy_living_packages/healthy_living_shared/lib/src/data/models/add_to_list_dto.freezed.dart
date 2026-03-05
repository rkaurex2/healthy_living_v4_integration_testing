// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddToListDTO {

 String get message;@JsonKey(name: 'list_id') int get listId;
/// Create a copy of AddToListDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToListDTOCopyWith<AddToListDTO> get copyWith => _$AddToListDTOCopyWithImpl<AddToListDTO>(this as AddToListDTO, _$identity);

  /// Serializes this AddToListDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListDTO&&(identical(other.message, message) || other.message == message)&&(identical(other.listId, listId) || other.listId == listId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,listId);

@override
String toString() {
  return 'AddToListDTO(message: $message, listId: $listId)';
}


}

/// @nodoc
abstract mixin class $AddToListDTOCopyWith<$Res>  {
  factory $AddToListDTOCopyWith(AddToListDTO value, $Res Function(AddToListDTO) _then) = _$AddToListDTOCopyWithImpl;
@useResult
$Res call({
 String message,@JsonKey(name: 'list_id') int listId
});




}
/// @nodoc
class _$AddToListDTOCopyWithImpl<$Res>
    implements $AddToListDTOCopyWith<$Res> {
  _$AddToListDTOCopyWithImpl(this._self, this._then);

  final AddToListDTO _self;
  final $Res Function(AddToListDTO) _then;

/// Create a copy of AddToListDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? listId = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AddToListDTO].
extension AddToListDTOPatterns on AddToListDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddToListDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddToListDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddToListDTO value)  $default,){
final _that = this;
switch (_that) {
case _AddToListDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddToListDTO value)?  $default,){
final _that = this;
switch (_that) {
case _AddToListDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'list_id')  int listId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddToListDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'list_id')  int listId)  $default,) {final _that = this;
switch (_that) {
case _AddToListDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message, @JsonKey(name: 'list_id')  int listId)?  $default,) {final _that = this;
switch (_that) {
case _AddToListDTO() when $default != null:
return $default(_that.message,_that.listId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddToListDTO implements AddToListDTO {
  const _AddToListDTO({required this.message, @JsonKey(name: 'list_id') required this.listId});
  factory _AddToListDTO.fromJson(Map<String, dynamic> json) => _$AddToListDTOFromJson(json);

@override final  String message;
@override@JsonKey(name: 'list_id') final  int listId;

/// Create a copy of AddToListDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToListDTOCopyWith<_AddToListDTO> get copyWith => __$AddToListDTOCopyWithImpl<_AddToListDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddToListDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToListDTO&&(identical(other.message, message) || other.message == message)&&(identical(other.listId, listId) || other.listId == listId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,listId);

@override
String toString() {
  return 'AddToListDTO(message: $message, listId: $listId)';
}


}

/// @nodoc
abstract mixin class _$AddToListDTOCopyWith<$Res> implements $AddToListDTOCopyWith<$Res> {
  factory _$AddToListDTOCopyWith(_AddToListDTO value, $Res Function(_AddToListDTO) _then) = __$AddToListDTOCopyWithImpl;
@override @useResult
$Res call({
 String message,@JsonKey(name: 'list_id') int listId
});




}
/// @nodoc
class __$AddToListDTOCopyWithImpl<$Res>
    implements _$AddToListDTOCopyWith<$Res> {
  __$AddToListDTOCopyWithImpl(this._self, this._then);

  final _AddToListDTO _self;
  final $Res Function(_AddToListDTO) _then;

/// Create a copy of AddToListDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? listId = null,}) {
  return _then(_AddToListDTO(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
