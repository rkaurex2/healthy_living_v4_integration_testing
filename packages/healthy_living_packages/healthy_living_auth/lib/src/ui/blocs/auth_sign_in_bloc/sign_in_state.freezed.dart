// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInState {

 AuthScreenStatus get status; Exception? get signInException; String? get email; String? get password; bool? get isSignInButtonDisabled; DSTextInputState get emailTextInputState; DSTextInputState get passwordTextInputState;
/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStateCopyWith<SignInState> get copyWith => _$SignInStateCopyWithImpl<SignInState>(this as SignInState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInState&&(identical(other.status, status) || other.status == status)&&(identical(other.signInException, signInException) || other.signInException == signInException)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isSignInButtonDisabled, isSignInButtonDisabled) || other.isSignInButtonDisabled == isSignInButtonDisabled)&&(identical(other.emailTextInputState, emailTextInputState) || other.emailTextInputState == emailTextInputState)&&(identical(other.passwordTextInputState, passwordTextInputState) || other.passwordTextInputState == passwordTextInputState));
}


@override
int get hashCode => Object.hash(runtimeType,status,signInException,email,password,isSignInButtonDisabled,emailTextInputState,passwordTextInputState);

@override
String toString() {
  return 'SignInState(status: $status, signInException: $signInException, email: $email, password: $password, isSignInButtonDisabled: $isSignInButtonDisabled, emailTextInputState: $emailTextInputState, passwordTextInputState: $passwordTextInputState)';
}


}

/// @nodoc
abstract mixin class $SignInStateCopyWith<$Res>  {
  factory $SignInStateCopyWith(SignInState value, $Res Function(SignInState) _then) = _$SignInStateCopyWithImpl;
@useResult
$Res call({
 AuthScreenStatus status, Exception? signInException, String? email, String? password, bool? isSignInButtonDisabled, DSTextInputState emailTextInputState, DSTextInputState passwordTextInputState
});




}
/// @nodoc
class _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._self, this._then);

  final SignInState _self;
  final $Res Function(SignInState) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? signInException = freezed,Object? email = freezed,Object? password = freezed,Object? isSignInButtonDisabled = freezed,Object? emailTextInputState = null,Object? passwordTextInputState = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthScreenStatus,signInException: freezed == signInException ? _self.signInException : signInException // ignore: cast_nullable_to_non_nullable
as Exception?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,isSignInButtonDisabled: freezed == isSignInButtonDisabled ? _self.isSignInButtonDisabled : isSignInButtonDisabled // ignore: cast_nullable_to_non_nullable
as bool?,emailTextInputState: null == emailTextInputState ? _self.emailTextInputState : emailTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,passwordTextInputState: null == passwordTextInputState ? _self.passwordTextInputState : passwordTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInState].
extension SignInStatePatterns on SignInState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSignInState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSignInState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSignInState value)  $default,){
final _that = this;
switch (_that) {
case _AuthSignInState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSignInState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSignInState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthScreenStatus status,  Exception? signInException,  String? email,  String? password,  bool? isSignInButtonDisabled,  DSTextInputState emailTextInputState,  DSTextInputState passwordTextInputState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSignInState() when $default != null:
return $default(_that.status,_that.signInException,_that.email,_that.password,_that.isSignInButtonDisabled,_that.emailTextInputState,_that.passwordTextInputState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthScreenStatus status,  Exception? signInException,  String? email,  String? password,  bool? isSignInButtonDisabled,  DSTextInputState emailTextInputState,  DSTextInputState passwordTextInputState)  $default,) {final _that = this;
switch (_that) {
case _AuthSignInState():
return $default(_that.status,_that.signInException,_that.email,_that.password,_that.isSignInButtonDisabled,_that.emailTextInputState,_that.passwordTextInputState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthScreenStatus status,  Exception? signInException,  String? email,  String? password,  bool? isSignInButtonDisabled,  DSTextInputState emailTextInputState,  DSTextInputState passwordTextInputState)?  $default,) {final _that = this;
switch (_that) {
case _AuthSignInState() when $default != null:
return $default(_that.status,_that.signInException,_that.email,_that.password,_that.isSignInButtonDisabled,_that.emailTextInputState,_that.passwordTextInputState);case _:
  return null;

}
}

}

/// @nodoc


class _AuthSignInState implements SignInState {
  const _AuthSignInState({this.status = AuthScreenStatus.initial, this.signInException, this.email, this.password, this.isSignInButtonDisabled, this.emailTextInputState = DSTextInputState.defaultState, this.passwordTextInputState = DSTextInputState.defaultState});
  

@override@JsonKey() final  AuthScreenStatus status;
@override final  Exception? signInException;
@override final  String? email;
@override final  String? password;
@override final  bool? isSignInButtonDisabled;
@override@JsonKey() final  DSTextInputState emailTextInputState;
@override@JsonKey() final  DSTextInputState passwordTextInputState;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSignInStateCopyWith<_AuthSignInState> get copyWith => __$AuthSignInStateCopyWithImpl<_AuthSignInState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSignInState&&(identical(other.status, status) || other.status == status)&&(identical(other.signInException, signInException) || other.signInException == signInException)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isSignInButtonDisabled, isSignInButtonDisabled) || other.isSignInButtonDisabled == isSignInButtonDisabled)&&(identical(other.emailTextInputState, emailTextInputState) || other.emailTextInputState == emailTextInputState)&&(identical(other.passwordTextInputState, passwordTextInputState) || other.passwordTextInputState == passwordTextInputState));
}


@override
int get hashCode => Object.hash(runtimeType,status,signInException,email,password,isSignInButtonDisabled,emailTextInputState,passwordTextInputState);

@override
String toString() {
  return 'SignInState(status: $status, signInException: $signInException, email: $email, password: $password, isSignInButtonDisabled: $isSignInButtonDisabled, emailTextInputState: $emailTextInputState, passwordTextInputState: $passwordTextInputState)';
}


}

/// @nodoc
abstract mixin class _$AuthSignInStateCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory _$AuthSignInStateCopyWith(_AuthSignInState value, $Res Function(_AuthSignInState) _then) = __$AuthSignInStateCopyWithImpl;
@override @useResult
$Res call({
 AuthScreenStatus status, Exception? signInException, String? email, String? password, bool? isSignInButtonDisabled, DSTextInputState emailTextInputState, DSTextInputState passwordTextInputState
});




}
/// @nodoc
class __$AuthSignInStateCopyWithImpl<$Res>
    implements _$AuthSignInStateCopyWith<$Res> {
  __$AuthSignInStateCopyWithImpl(this._self, this._then);

  final _AuthSignInState _self;
  final $Res Function(_AuthSignInState) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? signInException = freezed,Object? email = freezed,Object? password = freezed,Object? isSignInButtonDisabled = freezed,Object? emailTextInputState = null,Object? passwordTextInputState = null,}) {
  return _then(_AuthSignInState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthScreenStatus,signInException: freezed == signInException ? _self.signInException : signInException // ignore: cast_nullable_to_non_nullable
as Exception?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,isSignInButtonDisabled: freezed == isSignInButtonDisabled ? _self.isSignInButtonDisabled : isSignInButtonDisabled // ignore: cast_nullable_to_non_nullable
as bool?,emailTextInputState: null == emailTextInputState ? _self.emailTextInputState : emailTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,passwordTextInputState: null == passwordTextInputState ? _self.passwordTextInputState : passwordTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,
  ));
}


}

// dart format on
