// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpRequestModel {

@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String get email; String get password;@JsonKey(name: 'password_confirmation') String get confirmPassword; String get country;@JsonKey(name: 'zip_code') String get zipCode;@JsonKey(name: 'subscribe_newsletter') bool get subscribeNewsletter;
/// Create a copy of SignUpRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestModelCopyWith<SignUpRequestModel> get copyWith => _$SignUpRequestModelCopyWithImpl<SignUpRequestModel>(this as SignUpRequestModel, _$identity);

  /// Serializes this SignUpRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequestModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.country, country) || other.country == country)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,password,confirmPassword,country,zipCode,subscribeNewsletter);

@override
String toString() {
  return 'SignUpRequestModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password, confirmPassword: $confirmPassword, country: $country, zipCode: $zipCode, subscribeNewsletter: $subscribeNewsletter)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestModelCopyWith<$Res>  {
  factory $SignUpRequestModelCopyWith(SignUpRequestModel value, $Res Function(SignUpRequestModel) _then) = _$SignUpRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String email, String password,@JsonKey(name: 'password_confirmation') String confirmPassword, String country,@JsonKey(name: 'zip_code') String zipCode,@JsonKey(name: 'subscribe_newsletter') bool subscribeNewsletter
});




}
/// @nodoc
class _$SignUpRequestModelCopyWithImpl<$Res>
    implements $SignUpRequestModelCopyWith<$Res> {
  _$SignUpRequestModelCopyWithImpl(this._self, this._then);

  final SignUpRequestModel _self;
  final $Res Function(SignUpRequestModel) _then;

/// Create a copy of SignUpRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? country = null,Object? zipCode = null,Object? subscribeNewsletter = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,subscribeNewsletter: null == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpRequestModel].
extension SignUpRequestModelPatterns on SignUpRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _SignUpRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email,  String password, @JsonKey(name: 'password_confirmation')  String confirmPassword,  String country, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpRequestModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.password,_that.confirmPassword,_that.country,_that.zipCode,_that.subscribeNewsletter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email,  String password, @JsonKey(name: 'password_confirmation')  String confirmPassword,  String country, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter)  $default,) {final _that = this;
switch (_that) {
case _SignUpRequestModel():
return $default(_that.firstName,_that.lastName,_that.email,_that.password,_that.confirmPassword,_that.country,_that.zipCode,_that.subscribeNewsletter);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email,  String password, @JsonKey(name: 'password_confirmation')  String confirmPassword,  String country, @JsonKey(name: 'zip_code')  String zipCode, @JsonKey(name: 'subscribe_newsletter')  bool subscribeNewsletter)?  $default,) {final _that = this;
switch (_that) {
case _SignUpRequestModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.password,_that.confirmPassword,_that.country,_that.zipCode,_that.subscribeNewsletter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpRequestModel implements SignUpRequestModel {
  const _SignUpRequestModel({@JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, required this.email, required this.password, @JsonKey(name: 'password_confirmation') required this.confirmPassword, required this.country, @JsonKey(name: 'zip_code') required this.zipCode, @JsonKey(name: 'subscribe_newsletter') required this.subscribeNewsletter});
  factory _SignUpRequestModel.fromJson(Map<String, dynamic> json) => _$SignUpRequestModelFromJson(json);

@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String email;
@override final  String password;
@override@JsonKey(name: 'password_confirmation') final  String confirmPassword;
@override final  String country;
@override@JsonKey(name: 'zip_code') final  String zipCode;
@override@JsonKey(name: 'subscribe_newsletter') final  bool subscribeNewsletter;

/// Create a copy of SignUpRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpRequestModelCopyWith<_SignUpRequestModel> get copyWith => __$SignUpRequestModelCopyWithImpl<_SignUpRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpRequestModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.country, country) || other.country == country)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.subscribeNewsletter, subscribeNewsletter) || other.subscribeNewsletter == subscribeNewsletter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,password,confirmPassword,country,zipCode,subscribeNewsletter);

@override
String toString() {
  return 'SignUpRequestModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password, confirmPassword: $confirmPassword, country: $country, zipCode: $zipCode, subscribeNewsletter: $subscribeNewsletter)';
}


}

/// @nodoc
abstract mixin class _$SignUpRequestModelCopyWith<$Res> implements $SignUpRequestModelCopyWith<$Res> {
  factory _$SignUpRequestModelCopyWith(_SignUpRequestModel value, $Res Function(_SignUpRequestModel) _then) = __$SignUpRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String email, String password,@JsonKey(name: 'password_confirmation') String confirmPassword, String country,@JsonKey(name: 'zip_code') String zipCode,@JsonKey(name: 'subscribe_newsletter') bool subscribeNewsletter
});




}
/// @nodoc
class __$SignUpRequestModelCopyWithImpl<$Res>
    implements _$SignUpRequestModelCopyWith<$Res> {
  __$SignUpRequestModelCopyWithImpl(this._self, this._then);

  final _SignUpRequestModel _self;
  final $Res Function(_SignUpRequestModel) _then;

/// Create a copy of SignUpRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? country = null,Object? zipCode = null,Object? subscribeNewsletter = null,}) {
  return _then(_SignUpRequestModel(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,subscribeNewsletter: null == subscribeNewsletter ? _self.subscribeNewsletter : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
