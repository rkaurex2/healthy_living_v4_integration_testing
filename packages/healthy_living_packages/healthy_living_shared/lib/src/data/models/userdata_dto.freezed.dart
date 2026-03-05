// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userdata_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDataDTO {

 String? get email; String? get country;@JsonKey(name: 'zip_code') String? get zipCode;@JsonKey(name: 'subscribe_newsletter') bool? get subscribeNewsletter;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'intial_login') bool? get initialLogin;
/// Create a copy of UserDataDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataDTOCopyWith<UserDataDTO> get copyWith => _$UserDataDTOCopyWithImpl<UserDataDTO>(this as UserDataDTO, _$identity);

  /// Serializes this UserDataDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataDTO&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.initialLogin, initialLogin) || other.initialLogin == initialLogin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,country,zipCode,subscribeNewsletter,firstName,lastName,initialLogin);

@override
String toString() {
  return 'UserDataDTO(email: $email, country: $country, zipCode: $zipCode, subscribeNewsletter: $subscribeNewsletter, firstName: $firstName, lastName: $lastName, initialLogin: $initialLogin)';
}


}

/// @nodoc
abstract mixin class $UserDataDTOCopyWith<$Res>  {
  factory $UserDataDTOCopyWith(UserDataDTO value, $Res Function(UserDataDTO) _then) = _$UserDataDTOCopyWithImpl;
@useResult
$Res call({
 String? email, String? country,@JsonKey(name: 'zip_code') String? zipCode,@JsonKey(name: 'subscribe_newsletter') bool? subscribeNewsletter,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'intial_login') bool? initialLogin
});




}
/// @nodoc
class _$UserDataDTOCopyWithImpl<$Res>
    implements $UserDataDTOCopyWith<$Res> {
  _$UserDataDTOCopyWithImpl(this._self, this._then);

  final UserDataDTO _self;
  final $Res Function(UserDataDTO) _then;

/// Create a copy of UserDataDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? country = freezed,Object? zipCode = freezed,Object? subscribeNewsletter = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? initialLogin = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,subscribeNewsletter: freezed == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,initialLogin: freezed == initialLogin ? _self.initialLogin : initialLogin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDataDTO].
extension UserDataDTOPatterns on UserDataDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDataDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDataDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDataDTO value)  $default,){
final _that = this;
switch (_that) {
case _UserDataDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDataDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UserDataDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String? country, @JsonKey(name: 'zip_code')  String? zipCode, @JsonKey(name: 'subscribe_newsletter')  bool? subscribeNewsletter, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'intial_login')  bool? initialLogin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDataDTO() when $default != null:
return $default(_that.email,_that.country,_that.zipCode,_that.subscribeNewsletter,_that.firstName,_that.lastName,_that.initialLogin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String? country, @JsonKey(name: 'zip_code')  String? zipCode, @JsonKey(name: 'subscribe_newsletter')  bool? subscribeNewsletter, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'intial_login')  bool? initialLogin)  $default,) {final _that = this;
switch (_that) {
case _UserDataDTO():
return $default(_that.email,_that.country,_that.zipCode,_that.subscribeNewsletter,_that.firstName,_that.lastName,_that.initialLogin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String? country, @JsonKey(name: 'zip_code')  String? zipCode, @JsonKey(name: 'subscribe_newsletter')  bool? subscribeNewsletter, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'intial_login')  bool? initialLogin)?  $default,) {final _that = this;
switch (_that) {
case _UserDataDTO() when $default != null:
return $default(_that.email,_that.country,_that.zipCode,_that.subscribeNewsletter,_that.firstName,_that.lastName,_that.initialLogin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDataDTO implements UserDataDTO {
  const _UserDataDTO({this.email, this.country, @JsonKey(name: 'zip_code') this.zipCode, @JsonKey(name: 'subscribe_newsletter') this.subscribeNewsletter, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'intial_login') this.initialLogin});
  factory _UserDataDTO.fromJson(Map<String, dynamic> json) => _$UserDataDTOFromJson(json);

@override final  String? email;
@override final  String? country;
@override@JsonKey(name: 'zip_code') final  String? zipCode;
@override@JsonKey(name: 'subscribe_newsletter') final  bool? subscribeNewsletter;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'intial_login') final  bool? initialLogin;

/// Create a copy of UserDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataDTOCopyWith<_UserDataDTO> get copyWith => __$UserDataDTOCopyWithImpl<_UserDataDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDataDTO&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.initialLogin, initialLogin) || other.initialLogin == initialLogin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,country,zipCode,subscribeNewsletter,firstName,lastName,initialLogin);

@override
String toString() {
  return 'UserDataDTO(email: $email, country: $country, zipCode: $zipCode, subscribeNewsletter: $subscribeNewsletter, firstName: $firstName, lastName: $lastName, initialLogin: $initialLogin)';
}


}

/// @nodoc
abstract mixin class _$UserDataDTOCopyWith<$Res> implements $UserDataDTOCopyWith<$Res> {
  factory _$UserDataDTOCopyWith(_UserDataDTO value, $Res Function(_UserDataDTO) _then) = __$UserDataDTOCopyWithImpl;
@override @useResult
$Res call({
 String? email, String? country,@JsonKey(name: 'zip_code') String? zipCode,@JsonKey(name: 'subscribe_newsletter') bool? subscribeNewsletter,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'intial_login') bool? initialLogin
});




}
/// @nodoc
class __$UserDataDTOCopyWithImpl<$Res>
    implements _$UserDataDTOCopyWith<$Res> {
  __$UserDataDTOCopyWithImpl(this._self, this._then);

  final _UserDataDTO _self;
  final $Res Function(_UserDataDTO) _then;

/// Create a copy of UserDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? country = freezed,Object? zipCode = freezed,Object? subscribeNewsletter = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? initialLogin = freezed,}) {
  return _then(_UserDataDTO(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,subscribeNewsletter: freezed == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,initialLogin: freezed == initialLogin ? _self.initialLogin : initialLogin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
