// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent()';
}


}

/// @nodoc
class $SignInEventCopyWith<$Res>  {
$SignInEventCopyWith(SignInEvent _, $Res Function(SignInEvent) __);
}


/// Adds pattern-matching-related methods to [SignInEvent].
extension SignInEventPatterns on SignInEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignInButtonPressed value)?  signInButtonPressed,TResult Function( OnTextChange value)?  onTextChange,TResult Function( OnEmailFocusChanged value)?  emailFocusChanged,TResult Function( OnPasswordFocusChanged value)?  passwordFocusChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignInButtonPressed() when signInButtonPressed != null:
return signInButtonPressed(_that);case OnTextChange() when onTextChange != null:
return onTextChange(_that);case OnEmailFocusChanged() when emailFocusChanged != null:
return emailFocusChanged(_that);case OnPasswordFocusChanged() when passwordFocusChanged != null:
return passwordFocusChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignInButtonPressed value)  signInButtonPressed,required TResult Function( OnTextChange value)  onTextChange,required TResult Function( OnEmailFocusChanged value)  emailFocusChanged,required TResult Function( OnPasswordFocusChanged value)  passwordFocusChanged,}){
final _that = this;
switch (_that) {
case SignInButtonPressed():
return signInButtonPressed(_that);case OnTextChange():
return onTextChange(_that);case OnEmailFocusChanged():
return emailFocusChanged(_that);case OnPasswordFocusChanged():
return passwordFocusChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignInButtonPressed value)?  signInButtonPressed,TResult? Function( OnTextChange value)?  onTextChange,TResult? Function( OnEmailFocusChanged value)?  emailFocusChanged,TResult? Function( OnPasswordFocusChanged value)?  passwordFocusChanged,}){
final _that = this;
switch (_that) {
case SignInButtonPressed() when signInButtonPressed != null:
return signInButtonPressed(_that);case OnTextChange() when onTextChange != null:
return onTextChange(_that);case OnEmailFocusChanged() when emailFocusChanged != null:
return emailFocusChanged(_that);case OnPasswordFocusChanged() when passwordFocusChanged != null:
return passwordFocusChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  signInButtonPressed,TResult Function( String email,  String password)?  onTextChange,TResult Function( String value)?  emailFocusChanged,TResult Function( String value)?  passwordFocusChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignInButtonPressed() when signInButtonPressed != null:
return signInButtonPressed(_that.email,_that.password);case OnTextChange() when onTextChange != null:
return onTextChange(_that.email,_that.password);case OnEmailFocusChanged() when emailFocusChanged != null:
return emailFocusChanged(_that.value);case OnPasswordFocusChanged() when passwordFocusChanged != null:
return passwordFocusChanged(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  signInButtonPressed,required TResult Function( String email,  String password)  onTextChange,required TResult Function( String value)  emailFocusChanged,required TResult Function( String value)  passwordFocusChanged,}) {final _that = this;
switch (_that) {
case SignInButtonPressed():
return signInButtonPressed(_that.email,_that.password);case OnTextChange():
return onTextChange(_that.email,_that.password);case OnEmailFocusChanged():
return emailFocusChanged(_that.value);case OnPasswordFocusChanged():
return passwordFocusChanged(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  signInButtonPressed,TResult? Function( String email,  String password)?  onTextChange,TResult? Function( String value)?  emailFocusChanged,TResult? Function( String value)?  passwordFocusChanged,}) {final _that = this;
switch (_that) {
case SignInButtonPressed() when signInButtonPressed != null:
return signInButtonPressed(_that.email,_that.password);case OnTextChange() when onTextChange != null:
return onTextChange(_that.email,_that.password);case OnEmailFocusChanged() when emailFocusChanged != null:
return emailFocusChanged(_that.value);case OnPasswordFocusChanged() when passwordFocusChanged != null:
return passwordFocusChanged(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class SignInButtonPressed implements SignInEvent {
  const SignInButtonPressed({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInButtonPressedCopyWith<SignInButtonPressed> get copyWith => _$SignInButtonPressedCopyWithImpl<SignInButtonPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInButtonPressed&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'SignInEvent.signInButtonPressed(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInButtonPressedCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory $SignInButtonPressedCopyWith(SignInButtonPressed value, $Res Function(SignInButtonPressed) _then) = _$SignInButtonPressedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$SignInButtonPressedCopyWithImpl<$Res>
    implements $SignInButtonPressedCopyWith<$Res> {
  _$SignInButtonPressedCopyWithImpl(this._self, this._then);

  final SignInButtonPressed _self;
  final $Res Function(SignInButtonPressed) _then;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(SignInButtonPressed(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnTextChange implements SignInEvent {
  const OnTextChange({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTextChangeCopyWith<OnTextChange> get copyWith => _$OnTextChangeCopyWithImpl<OnTextChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTextChange&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'SignInEvent.onTextChange(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $OnTextChangeCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory $OnTextChangeCopyWith(OnTextChange value, $Res Function(OnTextChange) _then) = _$OnTextChangeCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$OnTextChangeCopyWithImpl<$Res>
    implements $OnTextChangeCopyWith<$Res> {
  _$OnTextChangeCopyWithImpl(this._self, this._then);

  final OnTextChange _self;
  final $Res Function(OnTextChange) _then;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(OnTextChange(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnEmailFocusChanged implements SignInEvent {
  const OnEmailFocusChanged(this.value);
  

 final  String value;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnEmailFocusChangedCopyWith<OnEmailFocusChanged> get copyWith => _$OnEmailFocusChangedCopyWithImpl<OnEmailFocusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnEmailFocusChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignInEvent.emailFocusChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $OnEmailFocusChangedCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory $OnEmailFocusChangedCopyWith(OnEmailFocusChanged value, $Res Function(OnEmailFocusChanged) _then) = _$OnEmailFocusChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$OnEmailFocusChangedCopyWithImpl<$Res>
    implements $OnEmailFocusChangedCopyWith<$Res> {
  _$OnEmailFocusChangedCopyWithImpl(this._self, this._then);

  final OnEmailFocusChanged _self;
  final $Res Function(OnEmailFocusChanged) _then;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(OnEmailFocusChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnPasswordFocusChanged implements SignInEvent {
  const OnPasswordFocusChanged(this.value);
  

 final  String value;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnPasswordFocusChangedCopyWith<OnPasswordFocusChanged> get copyWith => _$OnPasswordFocusChangedCopyWithImpl<OnPasswordFocusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnPasswordFocusChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignInEvent.passwordFocusChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $OnPasswordFocusChangedCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory $OnPasswordFocusChangedCopyWith(OnPasswordFocusChanged value, $Res Function(OnPasswordFocusChanged) _then) = _$OnPasswordFocusChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$OnPasswordFocusChangedCopyWithImpl<$Res>
    implements $OnPasswordFocusChangedCopyWith<$Res> {
  _$OnPasswordFocusChangedCopyWithImpl(this._self, this._then);

  final OnPasswordFocusChanged _self;
  final $Res Function(OnPasswordFocusChanged) _then;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(OnPasswordFocusChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
