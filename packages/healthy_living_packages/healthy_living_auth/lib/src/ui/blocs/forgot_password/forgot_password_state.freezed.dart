// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState()';
}


}

/// @nodoc
class $ForgotPasswordStateCopyWith<$Res>  {
$ForgotPasswordStateCopyWith(ForgotPasswordState _, $Res Function(ForgotPasswordState) __);
}


/// Adds pattern-matching-related methods to [ForgotPasswordState].
extension ForgotPasswordStatePatterns on ForgotPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ForgotPasswordStateInitial value)?  initial,TResult Function( ForgotPasswordFormState value)?  form,TResult Function( ForgotPasswordLoading value)?  loading,TResult Function( ForgotPasswordSuccess value)?  success,TResult Function( ForgotPasswordFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ForgotPasswordStateInitial() when initial != null:
return initial(_that);case ForgotPasswordFormState() when form != null:
return form(_that);case ForgotPasswordLoading() when loading != null:
return loading(_that);case ForgotPasswordSuccess() when success != null:
return success(_that);case ForgotPasswordFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ForgotPasswordStateInitial value)  initial,required TResult Function( ForgotPasswordFormState value)  form,required TResult Function( ForgotPasswordLoading value)  loading,required TResult Function( ForgotPasswordSuccess value)  success,required TResult Function( ForgotPasswordFailure value)  failure,}){
final _that = this;
switch (_that) {
case ForgotPasswordStateInitial():
return initial(_that);case ForgotPasswordFormState():
return form(_that);case ForgotPasswordLoading():
return loading(_that);case ForgotPasswordSuccess():
return success(_that);case ForgotPasswordFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ForgotPasswordStateInitial value)?  initial,TResult? Function( ForgotPasswordFormState value)?  form,TResult? Function( ForgotPasswordLoading value)?  loading,TResult? Function( ForgotPasswordSuccess value)?  success,TResult? Function( ForgotPasswordFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ForgotPasswordStateInitial() when initial != null:
return initial(_that);case ForgotPasswordFormState() when form != null:
return form(_that);case ForgotPasswordLoading() when loading != null:
return loading(_that);case ForgotPasswordSuccess() when success != null:
return success(_that);case ForgotPasswordFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String email,  bool? isFormValid,  DSTextInputState? emailState)?  form,TResult Function()?  loading,TResult Function( ForgotPasswordResponseModel? successData,  String email)?  success,TResult Function( Exception? exception)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ForgotPasswordStateInitial() when initial != null:
return initial();case ForgotPasswordFormState() when form != null:
return form(_that.email,_that.isFormValid,_that.emailState);case ForgotPasswordLoading() when loading != null:
return loading();case ForgotPasswordSuccess() when success != null:
return success(_that.successData,_that.email);case ForgotPasswordFailure() when failure != null:
return failure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String email,  bool? isFormValid,  DSTextInputState? emailState)  form,required TResult Function()  loading,required TResult Function( ForgotPasswordResponseModel? successData,  String email)  success,required TResult Function( Exception? exception)  failure,}) {final _that = this;
switch (_that) {
case ForgotPasswordStateInitial():
return initial();case ForgotPasswordFormState():
return form(_that.email,_that.isFormValid,_that.emailState);case ForgotPasswordLoading():
return loading();case ForgotPasswordSuccess():
return success(_that.successData,_that.email);case ForgotPasswordFailure():
return failure(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String email,  bool? isFormValid,  DSTextInputState? emailState)?  form,TResult? Function()?  loading,TResult? Function( ForgotPasswordResponseModel? successData,  String email)?  success,TResult? Function( Exception? exception)?  failure,}) {final _that = this;
switch (_that) {
case ForgotPasswordStateInitial() when initial != null:
return initial();case ForgotPasswordFormState() when form != null:
return form(_that.email,_that.isFormValid,_that.emailState);case ForgotPasswordLoading() when loading != null:
return loading();case ForgotPasswordSuccess() when success != null:
return success(_that.successData,_that.email);case ForgotPasswordFailure() when failure != null:
return failure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class ForgotPasswordStateInitial implements ForgotPasswordState {
  const ForgotPasswordStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.initial()';
}


}




/// @nodoc


class ForgotPasswordFormState implements ForgotPasswordState {
  const ForgotPasswordFormState({required this.email, required this.isFormValid, this.emailState});
  

 final  String email;
 final  bool? isFormValid;
 final  DSTextInputState? emailState;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordFormStateCopyWith<ForgotPasswordFormState> get copyWith => _$ForgotPasswordFormStateCopyWithImpl<ForgotPasswordFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordFormState&&(identical(other.email, email) || other.email == email)&&(identical(other.isFormValid, isFormValid) || other.isFormValid == isFormValid)&&(identical(other.emailState, emailState) || other.emailState == emailState));
}


@override
int get hashCode => Object.hash(runtimeType,email,isFormValid,emailState);

@override
String toString() {
  return 'ForgotPasswordState.form(email: $email, isFormValid: $isFormValid, emailState: $emailState)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordFormStateCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordFormStateCopyWith(ForgotPasswordFormState value, $Res Function(ForgotPasswordFormState) _then) = _$ForgotPasswordFormStateCopyWithImpl;
@useResult
$Res call({
 String email, bool? isFormValid, DSTextInputState? emailState
});




}
/// @nodoc
class _$ForgotPasswordFormStateCopyWithImpl<$Res>
    implements $ForgotPasswordFormStateCopyWith<$Res> {
  _$ForgotPasswordFormStateCopyWithImpl(this._self, this._then);

  final ForgotPasswordFormState _self;
  final $Res Function(ForgotPasswordFormState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? isFormValid = freezed,Object? emailState = freezed,}) {
  return _then(ForgotPasswordFormState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isFormValid: freezed == isFormValid ? _self.isFormValid : isFormValid // ignore: cast_nullable_to_non_nullable
as bool?,emailState: freezed == emailState ? _self.emailState : emailState // ignore: cast_nullable_to_non_nullable
as DSTextInputState?,
  ));
}


}

/// @nodoc


class ForgotPasswordLoading implements ForgotPasswordState {
  const ForgotPasswordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.loading()';
}


}




/// @nodoc


class ForgotPasswordSuccess implements ForgotPasswordState {
  const ForgotPasswordSuccess({required this.successData, required this.email});
  

 final  ForgotPasswordResponseModel? successData;
 final  String email;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordSuccessCopyWith<ForgotPasswordSuccess> get copyWith => _$ForgotPasswordSuccessCopyWithImpl<ForgotPasswordSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordSuccess&&(identical(other.successData, successData) || other.successData == successData)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,successData,email);

@override
String toString() {
  return 'ForgotPasswordState.success(successData: $successData, email: $email)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordSuccessCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordSuccessCopyWith(ForgotPasswordSuccess value, $Res Function(ForgotPasswordSuccess) _then) = _$ForgotPasswordSuccessCopyWithImpl;
@useResult
$Res call({
 ForgotPasswordResponseModel? successData, String email
});




}
/// @nodoc
class _$ForgotPasswordSuccessCopyWithImpl<$Res>
    implements $ForgotPasswordSuccessCopyWith<$Res> {
  _$ForgotPasswordSuccessCopyWithImpl(this._self, this._then);

  final ForgotPasswordSuccess _self;
  final $Res Function(ForgotPasswordSuccess) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? successData = freezed,Object? email = null,}) {
  return _then(ForgotPasswordSuccess(
successData: freezed == successData ? _self.successData : successData // ignore: cast_nullable_to_non_nullable
as ForgotPasswordResponseModel?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ForgotPasswordFailure implements ForgotPasswordState {
  const ForgotPasswordFailure(this.exception);
  

 final  Exception? exception;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordFailureCopyWith<ForgotPasswordFailure> get copyWith => _$ForgotPasswordFailureCopyWithImpl<ForgotPasswordFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ForgotPasswordState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordFailureCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordFailureCopyWith(ForgotPasswordFailure value, $Res Function(ForgotPasswordFailure) _then) = _$ForgotPasswordFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$ForgotPasswordFailureCopyWithImpl<$Res>
    implements $ForgotPasswordFailureCopyWith<$Res> {
  _$ForgotPasswordFailureCopyWithImpl(this._self, this._then);

  final ForgotPasswordFailure _self;
  final $Res Function(ForgotPasswordFailure) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(ForgotPasswordFailure(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
