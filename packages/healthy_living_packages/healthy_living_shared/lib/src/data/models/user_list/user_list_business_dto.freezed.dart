// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_business_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListBusinessDTO {

 int? get id;@JsonKey(name: 'as_param') String? get asParam; String? get name;@JsonKey(name: 'logo_url') String? get logoUrl;
/// Create a copy of UserListBusinessDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListBusinessDTOCopyWith<UserListBusinessDTO> get copyWith => _$UserListBusinessDTOCopyWithImpl<UserListBusinessDTO>(this as UserListBusinessDTO, _$identity);

  /// Serializes this UserListBusinessDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListBusinessDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.asParam, asParam) || other.asParam == asParam)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,asParam,name,logoUrl);

@override
String toString() {
  return 'UserListBusinessDTO(id: $id, asParam: $asParam, name: $name, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class $UserListBusinessDTOCopyWith<$Res>  {
  factory $UserListBusinessDTOCopyWith(UserListBusinessDTO value, $Res Function(UserListBusinessDTO) _then) = _$UserListBusinessDTOCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'as_param') String? asParam, String? name,@JsonKey(name: 'logo_url') String? logoUrl
});




}
/// @nodoc
class _$UserListBusinessDTOCopyWithImpl<$Res>
    implements $UserListBusinessDTOCopyWith<$Res> {
  _$UserListBusinessDTOCopyWithImpl(this._self, this._then);

  final UserListBusinessDTO _self;
  final $Res Function(UserListBusinessDTO) _then;

/// Create a copy of UserListBusinessDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? asParam = freezed,Object? name = freezed,Object? logoUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,asParam: freezed == asParam ? _self.asParam : asParam // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserListBusinessDTO].
extension UserListBusinessDTOPatterns on UserListBusinessDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListBusinessDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListBusinessDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListBusinessDTO value)  $default,){
final _that = this;
switch (_that) {
case _UserListBusinessDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListBusinessDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UserListBusinessDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListBusinessDTO() when $default != null:
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl)  $default,) {final _that = this;
switch (_that) {
case _UserListBusinessDTO():
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl)?  $default,) {final _that = this;
switch (_that) {
case _UserListBusinessDTO() when $default != null:
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserListBusinessDTO implements UserListBusinessDTO {
  const _UserListBusinessDTO({this.id, @JsonKey(name: 'as_param') this.asParam, this.name, @JsonKey(name: 'logo_url') this.logoUrl});
  factory _UserListBusinessDTO.fromJson(Map<String, dynamic> json) => _$UserListBusinessDTOFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'as_param') final  String? asParam;
@override final  String? name;
@override@JsonKey(name: 'logo_url') final  String? logoUrl;

/// Create a copy of UserListBusinessDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListBusinessDTOCopyWith<_UserListBusinessDTO> get copyWith => __$UserListBusinessDTOCopyWithImpl<_UserListBusinessDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListBusinessDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListBusinessDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.asParam, asParam) || other.asParam == asParam)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,asParam,name,logoUrl);

@override
String toString() {
  return 'UserListBusinessDTO(id: $id, asParam: $asParam, name: $name, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class _$UserListBusinessDTOCopyWith<$Res> implements $UserListBusinessDTOCopyWith<$Res> {
  factory _$UserListBusinessDTOCopyWith(_UserListBusinessDTO value, $Res Function(_UserListBusinessDTO) _then) = __$UserListBusinessDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'as_param') String? asParam, String? name,@JsonKey(name: 'logo_url') String? logoUrl
});




}
/// @nodoc
class __$UserListBusinessDTOCopyWithImpl<$Res>
    implements _$UserListBusinessDTOCopyWith<$Res> {
  __$UserListBusinessDTOCopyWithImpl(this._self, this._then);

  final _UserListBusinessDTO _self;
  final $Res Function(_UserListBusinessDTO) _then;

/// Create a copy of UserListBusinessDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? asParam = freezed,Object? name = freezed,Object? logoUrl = freezed,}) {
  return _then(_UserListBusinessDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,asParam: freezed == asParam ? _self.asParam : asParam // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
