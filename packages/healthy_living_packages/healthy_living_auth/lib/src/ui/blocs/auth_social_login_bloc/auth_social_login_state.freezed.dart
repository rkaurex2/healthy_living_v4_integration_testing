// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_social_login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthSocialLoginState {

 AuthMode get mode; AuthProvider? get authProvider; AuthScreenStatus get status;// Known production quirk: Google offline path emits via platformSignInException field.
// Tests must match actual behavior — do not change the emit logic, only the field name.
 Exception? get platformSignInException; Exception? get googleSocialSignInException; Exception? get socialSignInException; String? get socialAuthToken; bool? get isInitialLogin; String? get email;
/// Create a copy of AuthSocialLoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSocialLoginStateCopyWith<AuthSocialLoginState> get copyWith => _$AuthSocialLoginStateCopyWithImpl<AuthSocialLoginState>(this as AuthSocialLoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSocialLoginState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.authProvider, authProvider) || other.authProvider == authProvider)&&(identical(other.status, status) || other.status == status)&&(identical(other.platformSignInException, platformSignInException) || other.platformSignInException == platformSignInException)&&(identical(other.googleSocialSignInException, googleSocialSignInException) || other.googleSocialSignInException == googleSocialSignInException)&&(identical(other.socialSignInException, socialSignInException) || other.socialSignInException == socialSignInException)&&(identical(other.socialAuthToken, socialAuthToken) || other.socialAuthToken == socialAuthToken)&&(identical(other.isInitialLogin, isInitialLogin) || other.isInitialLogin == isInitialLogin)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,mode,authProvider,status,platformSignInException,googleSocialSignInException,socialSignInException,socialAuthToken,isInitialLogin,email);

@override
String toString() {
  return 'AuthSocialLoginState(mode: $mode, authProvider: $authProvider, status: $status, platformSignInException: $platformSignInException, googleSocialSignInException: $googleSocialSignInException, socialSignInException: $socialSignInException, socialAuthToken: $socialAuthToken, isInitialLogin: $isInitialLogin, email: $email)';
}


}

/// @nodoc
abstract mixin class $AuthSocialLoginStateCopyWith<$Res>  {
  factory $AuthSocialLoginStateCopyWith(AuthSocialLoginState value, $Res Function(AuthSocialLoginState) _then) = _$AuthSocialLoginStateCopyWithImpl;
@useResult
$Res call({
 AuthMode mode, AuthProvider? authProvider, AuthScreenStatus status, Exception? platformSignInException, Exception? googleSocialSignInException, Exception? socialSignInException, String? socialAuthToken, bool? isInitialLogin, String? email
});




}
/// @nodoc
class _$AuthSocialLoginStateCopyWithImpl<$Res>
    implements $AuthSocialLoginStateCopyWith<$Res> {
  _$AuthSocialLoginStateCopyWithImpl(this._self, this._then);

  final AuthSocialLoginState _self;
  final $Res Function(AuthSocialLoginState) _then;

/// Create a copy of AuthSocialLoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? authProvider = freezed,Object? status = null,Object? platformSignInException = freezed,Object? googleSocialSignInException = freezed,Object? socialSignInException = freezed,Object? socialAuthToken = freezed,Object? isInitialLogin = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AuthMode,authProvider: freezed == authProvider ? _self.authProvider : authProvider // ignore: cast_nullable_to_non_nullable
as AuthProvider?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthScreenStatus,platformSignInException: freezed == platformSignInException ? _self.platformSignInException : platformSignInException // ignore: cast_nullable_to_non_nullable
as Exception?,googleSocialSignInException: freezed == googleSocialSignInException ? _self.googleSocialSignInException : googleSocialSignInException // ignore: cast_nullable_to_non_nullable
as Exception?,socialSignInException: freezed == socialSignInException ? _self.socialSignInException : socialSignInException // ignore: cast_nullable_to_non_nullable
as Exception?,socialAuthToken: freezed == socialAuthToken ? _self.socialAuthToken : socialAuthToken // ignore: cast_nullable_to_non_nullable
as String?,isInitialLogin: freezed == isInitialLogin ? _self.isInitialLogin : isInitialLogin // ignore: cast_nullable_to_non_nullable
as bool?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthSocialLoginState].
extension AuthSocialLoginStatePatterns on AuthSocialLoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSocialLoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSocialLoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSocialLoginState value)  $default,){
final _that = this;
switch (_that) {
case _AuthSocialLoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSocialLoginState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSocialLoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthMode mode,  AuthProvider? authProvider,  AuthScreenStatus status,  Exception? platformSignInException,  Exception? googleSocialSignInException,  Exception? socialSignInException,  String? socialAuthToken,  bool? isInitialLogin,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSocialLoginState() when $default != null:
return $default(_that.mode,_that.authProvider,_that.status,_that.platformSignInException,_that.googleSocialSignInException,_that.socialSignInException,_that.socialAuthToken,_that.isInitialLogin,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthMode mode,  AuthProvider? authProvider,  AuthScreenStatus status,  Exception? platformSignInException,  Exception? googleSocialSignInException,  Exception? socialSignInException,  String? socialAuthToken,  bool? isInitialLogin,  String? email)  $default,) {final _that = this;
switch (_that) {
case _AuthSocialLoginState():
return $default(_that.mode,_that.authProvider,_that.status,_that.platformSignInException,_that.googleSocialSignInException,_that.socialSignInException,_that.socialAuthToken,_that.isInitialLogin,_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthMode mode,  AuthProvider? authProvider,  AuthScreenStatus status,  Exception? platformSignInException,  Exception? googleSocialSignInException,  Exception? socialSignInException,  String? socialAuthToken,  bool? isInitialLogin,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _AuthSocialLoginState() when $default != null:
return $default(_that.mode,_that.authProvider,_that.status,_that.platformSignInException,_that.googleSocialSignInException,_that.socialSignInException,_that.socialAuthToken,_that.isInitialLogin,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _AuthSocialLoginState implements AuthSocialLoginState {
  const _AuthSocialLoginState({this.mode = AuthMode.signUp, this.authProvider, this.status = AuthScreenStatus.initial, this.platformSignInException, this.googleSocialSignInException, this.socialSignInException, this.socialAuthToken, this.isInitialLogin, this.email});
  

@override@JsonKey() final  AuthMode mode;
@override final  AuthProvider? authProvider;
@override@JsonKey() final  AuthScreenStatus status;
// Known production quirk: Google offline path emits via platformSignInException field.
// Tests must match actual behavior — do not change the emit logic, only the field name.
@override final  Exception? platformSignInException;
@override final  Exception? googleSocialSignInException;
@override final  Exception? socialSignInException;
@override final  String? socialAuthToken;
@override final  bool? isInitialLogin;
@override final  String? email;

/// Create a copy of AuthSocialLoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSocialLoginStateCopyWith<_AuthSocialLoginState> get copyWith => __$AuthSocialLoginStateCopyWithImpl<_AuthSocialLoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSocialLoginState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.authProvider, authProvider) || other.authProvider == authProvider)&&(identical(other.status, status) || other.status == status)&&(identical(other.platformSignInException, platformSignInException) || other.platformSignInException == platformSignInException)&&(identical(other.googleSocialSignInException, googleSocialSignInException) || other.googleSocialSignInException == googleSocialSignInException)&&(identical(other.socialSignInException, socialSignInException) || other.socialSignInException == socialSignInException)&&(identical(other.socialAuthToken, socialAuthToken) || other.socialAuthToken == socialAuthToken)&&(identical(other.isInitialLogin, isInitialLogin) || other.isInitialLogin == isInitialLogin)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,mode,authProvider,status,platformSignInException,googleSocialSignInException,socialSignInException,socialAuthToken,isInitialLogin,email);

@override
String toString() {
  return 'AuthSocialLoginState(mode: $mode, authProvider: $authProvider, status: $status, platformSignInException: $platformSignInException, googleSocialSignInException: $googleSocialSignInException, socialSignInException: $socialSignInException, socialAuthToken: $socialAuthToken, isInitialLogin: $isInitialLogin, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AuthSocialLoginStateCopyWith<$Res> implements $AuthSocialLoginStateCopyWith<$Res> {
  factory _$AuthSocialLoginStateCopyWith(_AuthSocialLoginState value, $Res Function(_AuthSocialLoginState) _then) = __$AuthSocialLoginStateCopyWithImpl;
@override @useResult
$Res call({
 AuthMode mode, AuthProvider? authProvider, AuthScreenStatus status, Exception? platformSignInException, Exception? googleSocialSignInException, Exception? socialSignInException, String? socialAuthToken, bool? isInitialLogin, String? email
});




}
/// @nodoc
class __$AuthSocialLoginStateCopyWithImpl<$Res>
    implements _$AuthSocialLoginStateCopyWith<$Res> {
  __$AuthSocialLoginStateCopyWithImpl(this._self, this._then);

  final _AuthSocialLoginState _self;
  final $Res Function(_AuthSocialLoginState) _then;

/// Create a copy of AuthSocialLoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? authProvider = freezed,Object? status = null,Object? platformSignInException = freezed,Object? googleSocialSignInException = freezed,Object? socialSignInException = freezed,Object? socialAuthToken = freezed,Object? isInitialLogin = freezed,Object? email = freezed,}) {
  return _then(_AuthSocialLoginState(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AuthMode,authProvider: freezed == authProvider ? _self.authProvider : authProvider // ignore: cast_nullable_to_non_nullable
as AuthProvider?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthScreenStatus,platformSignInException: freezed == platformSignInException ? _self.platformSignInException : platformSignInException // ignore: cast_nullable_to_non_nullable
as Exception?,googleSocialSignInException: freezed == googleSocialSignInException ? _self.googleSocialSignInException : googleSocialSignInException // ignore: cast_nullable_to_non_nullable
as Exception?,socialSignInException: freezed == socialSignInException ? _self.socialSignInException : socialSignInException // ignore: cast_nullable_to_non_nullable
as Exception?,socialAuthToken: freezed == socialAuthToken ? _self.socialAuthToken : socialAuthToken // ignore: cast_nullable_to_non_nullable
as String?,isInitialLogin: freezed == isInitialLogin ? _self.isInitialLogin : isInitialLogin // ignore: cast_nullable_to_non_nullable
as bool?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
