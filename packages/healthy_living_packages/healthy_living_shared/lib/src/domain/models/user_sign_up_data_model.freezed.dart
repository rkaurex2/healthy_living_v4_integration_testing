// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_up_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSignUpDataModel {

 String get email; String get country;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'zip_code') String get zipCode;@JsonKey(name: 'subscribe_newsletter') bool get subscribeNewsletter;@JsonKey(name: 'intial_login') bool? get initialLogin;
/// Create a copy of UserSignUpDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignUpDataModelCopyWith<UserSignUpDataModel> get copyWith => _$UserSignUpDataModelCopyWithImpl<UserSignUpDataModel>(this as UserSignUpDataModel, _$identity);

  /// Serializes this UserSignUpDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignUpDataModel&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter)&&(identical(other.initialLogin, initialLogin) || other.initialLogin == initialLogin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,country,firstName,lastName,zipCode,subscribeNewsletter,initialLogin);

@override
String toString() {
  return 'UserSignUpDataModel(email: $email, country: $country, firstName: $firstName, lastName: $lastName, zipCode: $zipCode, subscribeNewsletter: $subscribeNewsletter, initialLogin: $initialLogin)';
}


}

/// @nodoc
abstract mixin class $UserSignUpDataModelCopyWith<$Res>  {
  factory $UserSignUpDataModelCopyWith(UserSignUpDataModel value, $Res Function(UserSignUpDataModel) _then) = _$UserSignUpDataModelCopyWithImpl;
@useResult
$Res call({
 String email, String country,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'zip_code') String zipCode,@JsonKey(name: 'subscribe_newsletter') bool subscribeNewsletter,@JsonKey(name: 'intial_login') bool? initialLogin
});




}
/// @nodoc
class _$UserSignUpDataModelCopyWithImpl<$Res>
    implements $UserSignUpDataModelCopyWith<$Res> {
  _$UserSignUpDataModelCopyWithImpl(this._self, this._then);

  final UserSignUpDataModel _self;
  final $Res Function(UserSignUpDataModel) _then;

/// Create a copy of UserSignUpDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? country = null,Object? firstName = null,Object? lastName = null,Object? zipCode = null,Object? subscribeNewsletter = null,Object? initialLogin = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,subscribeNewsletter: null == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool,initialLogin: freezed == initialLogin ? _self.initialLogin : initialLogin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSignUpDataModel].
extension UserSignUpDataModelPatterns on UserSignUpDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSignUpDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSignUpDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSignUpDataModel value)  $default,){
final _that = this;
switch (_that) {
case _UserSignUpDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSignUpDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserSignUpDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String country, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter, @JsonKey(name: 'intial_login')  bool? initialLogin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSignUpDataModel() when $default != null:
return $default(_that.email,_that.country,_that.firstName,_that.lastName,_that.zipCode,_that.subscribeNewsletter,_that.initialLogin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String country, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter, @JsonKey(name: 'intial_login')  bool? initialLogin)  $default,) {final _that = this;
switch (_that) {
case _UserSignUpDataModel():
return $default(_that.email,_that.country,_that.firstName,_that.lastName,_that.zipCode,_that.subscribeNewsletter,_that.initialLogin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String country, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter, @JsonKey(name: 'intial_login')  bool? initialLogin)?  $default,) {final _that = this;
switch (_that) {
case _UserSignUpDataModel() when $default != null:
return $default(_that.email,_that.country,_that.firstName,_that.lastName,_that.zipCode,_that.subscribeNewsletter,_that.initialLogin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSignUpDataModel implements UserSignUpDataModel {
  const _UserSignUpDataModel({required this.email, required this.country, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'zip_code') required this.zipCode, @JsonKey(name: 'subscribe_newsletter') required this.subscribeNewsletter, @JsonKey(name: 'intial_login') this.initialLogin});
  factory _UserSignUpDataModel.fromJson(Map<String, dynamic> json) => _$UserSignUpDataModelFromJson(json);

@override final  String email;
@override final  String country;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'zip_code') final  String zipCode;
@override@JsonKey(name: 'subscribe_newsletter') final  bool subscribeNewsletter;
@override@JsonKey(name: 'intial_login') final  bool? initialLogin;

/// Create a copy of UserSignUpDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSignUpDataModelCopyWith<_UserSignUpDataModel> get copyWith => __$UserSignUpDataModelCopyWithImpl<_UserSignUpDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSignUpDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSignUpDataModel&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter)&&(identical(other.initialLogin, initialLogin) || other.initialLogin == initialLogin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,country,firstName,lastName,zipCode,subscribeNewsletter,initialLogin);

@override
String toString() {
  return 'UserSignUpDataModel(email: $email, country: $country, firstName: $firstName, lastName: $lastName, zipCode: $zipCode, subscribeNewsletter: $subscribeNewsletter, initialLogin: $initialLogin)';
}


}

/// @nodoc
abstract mixin class _$UserSignUpDataModelCopyWith<$Res> implements $UserSignUpDataModelCopyWith<$Res> {
  factory _$UserSignUpDataModelCopyWith(_UserSignUpDataModel value, $Res Function(_UserSignUpDataModel) _then) = __$UserSignUpDataModelCopyWithImpl;
@override @useResult
$Res call({
 String email, String country,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'zip_code') String zipCode,@JsonKey(name: 'subscribe_newsletter') bool subscribeNewsletter,@JsonKey(name: 'intial_login') bool? initialLogin
});




}
/// @nodoc
class __$UserSignUpDataModelCopyWithImpl<$Res>
    implements _$UserSignUpDataModelCopyWith<$Res> {
  __$UserSignUpDataModelCopyWithImpl(this._self, this._then);

  final _UserSignUpDataModel _self;
  final $Res Function(_UserSignUpDataModel) _then;

/// Create a copy of UserSignUpDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? country = null,Object? firstName = null,Object? lastName = null,Object? zipCode = null,Object? subscribeNewsletter = null,Object? initialLogin = freezed,}) {
  return _then(_UserSignUpDataModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,subscribeNewsletter: null == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool,initialLogin: freezed == initialLogin ? _self.initialLogin : initialLogin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
