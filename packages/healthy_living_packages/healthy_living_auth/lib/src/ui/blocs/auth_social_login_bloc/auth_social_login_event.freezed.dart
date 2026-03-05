// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_social_login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthSocialLoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSocialLoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthSocialLoginEvent()';
}


}

/// @nodoc
class $AuthSocialLoginEventCopyWith<$Res>  {
$AuthSocialLoginEventCopyWith(AuthSocialLoginEvent _, $Res Function(AuthSocialLoginEvent) __);
}


/// Adds pattern-matching-related methods to [AuthSocialLoginEvent].
extension AuthSocialLoginEventPatterns on AuthSocialLoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthScreenInitialized value)?  authScreenInitialized,TResult Function( AuthModeToggled value)?  authModeToggled,TResult Function( AppleSignInPressed value)?  appleSignInPressed,TResult Function( GoogleSignInPressed value)?  googleSignInPressed,TResult Function( SocialTokenReceived value)?  socialTokenReceived,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthScreenInitialized() when authScreenInitialized != null:
return authScreenInitialized(_that);case AuthModeToggled() when authModeToggled != null:
return authModeToggled(_that);case AppleSignInPressed() when appleSignInPressed != null:
return appleSignInPressed(_that);case GoogleSignInPressed() when googleSignInPressed != null:
return googleSignInPressed(_that);case SocialTokenReceived() when socialTokenReceived != null:
return socialTokenReceived(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthScreenInitialized value)  authScreenInitialized,required TResult Function( AuthModeToggled value)  authModeToggled,required TResult Function( AppleSignInPressed value)  appleSignInPressed,required TResult Function( GoogleSignInPressed value)  googleSignInPressed,required TResult Function( SocialTokenReceived value)  socialTokenReceived,}){
final _that = this;
switch (_that) {
case AuthScreenInitialized():
return authScreenInitialized(_that);case AuthModeToggled():
return authModeToggled(_that);case AppleSignInPressed():
return appleSignInPressed(_that);case GoogleSignInPressed():
return googleSignInPressed(_that);case SocialTokenReceived():
return socialTokenReceived(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthScreenInitialized value)?  authScreenInitialized,TResult? Function( AuthModeToggled value)?  authModeToggled,TResult? Function( AppleSignInPressed value)?  appleSignInPressed,TResult? Function( GoogleSignInPressed value)?  googleSignInPressed,TResult? Function( SocialTokenReceived value)?  socialTokenReceived,}){
final _that = this;
switch (_that) {
case AuthScreenInitialized() when authScreenInitialized != null:
return authScreenInitialized(_that);case AuthModeToggled() when authModeToggled != null:
return authModeToggled(_that);case AppleSignInPressed() when appleSignInPressed != null:
return appleSignInPressed(_that);case GoogleSignInPressed() when googleSignInPressed != null:
return googleSignInPressed(_that);case SocialTokenReceived() when socialTokenReceived != null:
return socialTokenReceived(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AuthMode authMode)?  authScreenInitialized,TResult Function()?  authModeToggled,TResult Function( AuthProvider authProvider)?  appleSignInPressed,TResult Function( AuthProvider authProvider)?  googleSignInPressed,TResult Function( String token,  String provider)?  socialTokenReceived,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthScreenInitialized() when authScreenInitialized != null:
return authScreenInitialized(_that.authMode);case AuthModeToggled() when authModeToggled != null:
return authModeToggled();case AppleSignInPressed() when appleSignInPressed != null:
return appleSignInPressed(_that.authProvider);case GoogleSignInPressed() when googleSignInPressed != null:
return googleSignInPressed(_that.authProvider);case SocialTokenReceived() when socialTokenReceived != null:
return socialTokenReceived(_that.token,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AuthMode authMode)  authScreenInitialized,required TResult Function()  authModeToggled,required TResult Function( AuthProvider authProvider)  appleSignInPressed,required TResult Function( AuthProvider authProvider)  googleSignInPressed,required TResult Function( String token,  String provider)  socialTokenReceived,}) {final _that = this;
switch (_that) {
case AuthScreenInitialized():
return authScreenInitialized(_that.authMode);case AuthModeToggled():
return authModeToggled();case AppleSignInPressed():
return appleSignInPressed(_that.authProvider);case GoogleSignInPressed():
return googleSignInPressed(_that.authProvider);case SocialTokenReceived():
return socialTokenReceived(_that.token,_that.provider);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AuthMode authMode)?  authScreenInitialized,TResult? Function()?  authModeToggled,TResult? Function( AuthProvider authProvider)?  appleSignInPressed,TResult? Function( AuthProvider authProvider)?  googleSignInPressed,TResult? Function( String token,  String provider)?  socialTokenReceived,}) {final _that = this;
switch (_that) {
case AuthScreenInitialized() when authScreenInitialized != null:
return authScreenInitialized(_that.authMode);case AuthModeToggled() when authModeToggled != null:
return authModeToggled();case AppleSignInPressed() when appleSignInPressed != null:
return appleSignInPressed(_that.authProvider);case GoogleSignInPressed() when googleSignInPressed != null:
return googleSignInPressed(_that.authProvider);case SocialTokenReceived() when socialTokenReceived != null:
return socialTokenReceived(_that.token,_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class AuthScreenInitialized implements AuthSocialLoginEvent {
  const AuthScreenInitialized({required this.authMode});
  

 final  AuthMode authMode;

/// Create a copy of AuthSocialLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthScreenInitializedCopyWith<AuthScreenInitialized> get copyWith => _$AuthScreenInitializedCopyWithImpl<AuthScreenInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthScreenInitialized&&(identical(other.authMode, authMode) || other.authMode == authMode));
}


@override
int get hashCode => Object.hash(runtimeType,authMode);

@override
String toString() {
  return 'AuthSocialLoginEvent.authScreenInitialized(authMode: $authMode)';
}


}

/// @nodoc
abstract mixin class $AuthScreenInitializedCopyWith<$Res> implements $AuthSocialLoginEventCopyWith<$Res> {
  factory $AuthScreenInitializedCopyWith(AuthScreenInitialized value, $Res Function(AuthScreenInitialized) _then) = _$AuthScreenInitializedCopyWithImpl;
@useResult
$Res call({
 AuthMode authMode
});




}
/// @nodoc
class _$AuthScreenInitializedCopyWithImpl<$Res>
    implements $AuthScreenInitializedCopyWith<$Res> {
  _$AuthScreenInitializedCopyWithImpl(this._self, this._then);

  final AuthScreenInitialized _self;
  final $Res Function(AuthScreenInitialized) _then;

/// Create a copy of AuthSocialLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authMode = null,}) {
  return _then(AuthScreenInitialized(
authMode: null == authMode ? _self.authMode : authMode // ignore: cast_nullable_to_non_nullable
as AuthMode,
  ));
}


}

/// @nodoc


class AuthModeToggled implements AuthSocialLoginEvent {
  const AuthModeToggled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthModeToggled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthSocialLoginEvent.authModeToggled()';
}


}




/// @nodoc


class AppleSignInPressed implements AuthSocialLoginEvent {
  const AppleSignInPressed({required this.authProvider});
  

 final  AuthProvider authProvider;

/// Create a copy of AuthSocialLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppleSignInPressedCopyWith<AppleSignInPressed> get copyWith => _$AppleSignInPressedCopyWithImpl<AppleSignInPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppleSignInPressed&&(identical(other.authProvider, authProvider) || other.authProvider == authProvider));
}


@override
int get hashCode => Object.hash(runtimeType,authProvider);

@override
String toString() {
  return 'AuthSocialLoginEvent.appleSignInPressed(authProvider: $authProvider)';
}


}

/// @nodoc
abstract mixin class $AppleSignInPressedCopyWith<$Res> implements $AuthSocialLoginEventCopyWith<$Res> {
  factory $AppleSignInPressedCopyWith(AppleSignInPressed value, $Res Function(AppleSignInPressed) _then) = _$AppleSignInPressedCopyWithImpl;
@useResult
$Res call({
 AuthProvider authProvider
});




}
/// @nodoc
class _$AppleSignInPressedCopyWithImpl<$Res>
    implements $AppleSignInPressedCopyWith<$Res> {
  _$AppleSignInPressedCopyWithImpl(this._self, this._then);

  final AppleSignInPressed _self;
  final $Res Function(AppleSignInPressed) _then;

/// Create a copy of AuthSocialLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authProvider = null,}) {
  return _then(AppleSignInPressed(
authProvider: null == authProvider ? _self.authProvider : authProvider // ignore: cast_nullable_to_non_nullable
as AuthProvider,
  ));
}


}

/// @nodoc


class GoogleSignInPressed implements AuthSocialLoginEvent {
  const GoogleSignInPressed({required this.authProvider});
  

 final  AuthProvider authProvider;

/// Create a copy of AuthSocialLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleSignInPressedCopyWith<GoogleSignInPressed> get copyWith => _$GoogleSignInPressedCopyWithImpl<GoogleSignInPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSignInPressed&&(identical(other.authProvider, authProvider) || other.authProvider == authProvider));
}


@override
int get hashCode => Object.hash(runtimeType,authProvider);

@override
String toString() {
  return 'AuthSocialLoginEvent.googleSignInPressed(authProvider: $authProvider)';
}


}

/// @nodoc
abstract mixin class $GoogleSignInPressedCopyWith<$Res> implements $AuthSocialLoginEventCopyWith<$Res> {
  factory $GoogleSignInPressedCopyWith(GoogleSignInPressed value, $Res Function(GoogleSignInPressed) _then) = _$GoogleSignInPressedCopyWithImpl;
@useResult
$Res call({
 AuthProvider authProvider
});




}
/// @nodoc
class _$GoogleSignInPressedCopyWithImpl<$Res>
    implements $GoogleSignInPressedCopyWith<$Res> {
  _$GoogleSignInPressedCopyWithImpl(this._self, this._then);

  final GoogleSignInPressed _self;
  final $Res Function(GoogleSignInPressed) _then;

/// Create a copy of AuthSocialLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authProvider = null,}) {
  return _then(GoogleSignInPressed(
authProvider: null == authProvider ? _self.authProvider : authProvider // ignore: cast_nullable_to_non_nullable
as AuthProvider,
  ));
}


}

/// @nodoc


class SocialTokenReceived implements AuthSocialLoginEvent {
  const SocialTokenReceived({required this.token, required this.provider});
  

 final  String token;
 final  String provider;

/// Create a copy of AuthSocialLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialTokenReceivedCopyWith<SocialTokenReceived> get copyWith => _$SocialTokenReceivedCopyWithImpl<SocialTokenReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialTokenReceived&&(identical(other.token, token) || other.token == token)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,token,provider);

@override
String toString() {
  return 'AuthSocialLoginEvent.socialTokenReceived(token: $token, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $SocialTokenReceivedCopyWith<$Res> implements $AuthSocialLoginEventCopyWith<$Res> {
  factory $SocialTokenReceivedCopyWith(SocialTokenReceived value, $Res Function(SocialTokenReceived) _then) = _$SocialTokenReceivedCopyWithImpl;
@useResult
$Res call({
 String token, String provider
});




}
/// @nodoc
class _$SocialTokenReceivedCopyWithImpl<$Res>
    implements $SocialTokenReceivedCopyWith<$Res> {
  _$SocialTokenReceivedCopyWithImpl(this._self, this._then);

  final SocialTokenReceived _self;
  final $Res Function(SocialTokenReceived) _then;

/// Create a copy of AuthSocialLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,Object? provider = null,}) {
  return _then(SocialTokenReceived(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
