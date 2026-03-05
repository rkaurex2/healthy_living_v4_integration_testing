// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckEmailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckEmailState()';
}


}

/// @nodoc
class $CheckEmailStateCopyWith<$Res>  {
$CheckEmailStateCopyWith(CheckEmailState _, $Res Function(CheckEmailState) __);
}


/// Adds pattern-matching-related methods to [CheckEmailState].
extension CheckEmailStatePatterns on CheckEmailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckEmailInitial value)?  initial,TResult Function( CheckEmailLoading value)?  loading,TResult Function( CheckEmailSuccess value)?  success,TResult Function( CheckEmailFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckEmailInitial() when initial != null:
return initial(_that);case CheckEmailLoading() when loading != null:
return loading(_that);case CheckEmailSuccess() when success != null:
return success(_that);case CheckEmailFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckEmailInitial value)  initial,required TResult Function( CheckEmailLoading value)  loading,required TResult Function( CheckEmailSuccess value)  success,required TResult Function( CheckEmailFailure value)  failure,}){
final _that = this;
switch (_that) {
case CheckEmailInitial():
return initial(_that);case CheckEmailLoading():
return loading(_that);case CheckEmailSuccess():
return success(_that);case CheckEmailFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckEmailInitial value)?  initial,TResult? Function( CheckEmailLoading value)?  loading,TResult? Function( CheckEmailSuccess value)?  success,TResult? Function( CheckEmailFailure value)?  failure,}){
final _that = this;
switch (_that) {
case CheckEmailInitial() when initial != null:
return initial(_that);case CheckEmailLoading() when loading != null:
return loading(_that);case CheckEmailSuccess() when success != null:
return success(_that);case CheckEmailFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ForgotPasswordResponseModel? successData,  String email)?  success,TResult Function( Exception? exception)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckEmailInitial() when initial != null:
return initial();case CheckEmailLoading() when loading != null:
return loading();case CheckEmailSuccess() when success != null:
return success(_that.successData,_that.email);case CheckEmailFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ForgotPasswordResponseModel? successData,  String email)  success,required TResult Function( Exception? exception)  failure,}) {final _that = this;
switch (_that) {
case CheckEmailInitial():
return initial();case CheckEmailLoading():
return loading();case CheckEmailSuccess():
return success(_that.successData,_that.email);case CheckEmailFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ForgotPasswordResponseModel? successData,  String email)?  success,TResult? Function( Exception? exception)?  failure,}) {final _that = this;
switch (_that) {
case CheckEmailInitial() when initial != null:
return initial();case CheckEmailLoading() when loading != null:
return loading();case CheckEmailSuccess() when success != null:
return success(_that.successData,_that.email);case CheckEmailFailure() when failure != null:
return failure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class CheckEmailInitial implements CheckEmailState {
  const CheckEmailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckEmailState.initial()';
}


}




/// @nodoc


class CheckEmailLoading implements CheckEmailState {
  const CheckEmailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckEmailState.loading()';
}


}




/// @nodoc


class CheckEmailSuccess implements CheckEmailState {
  const CheckEmailSuccess({required this.successData, required this.email});
  

 final  ForgotPasswordResponseModel? successData;
 final  String email;

/// Create a copy of CheckEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckEmailSuccessCopyWith<CheckEmailSuccess> get copyWith => _$CheckEmailSuccessCopyWithImpl<CheckEmailSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailSuccess&&(identical(other.successData, successData) || other.successData == successData)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,successData,email);

@override
String toString() {
  return 'CheckEmailState.success(successData: $successData, email: $email)';
}


}

/// @nodoc
abstract mixin class $CheckEmailSuccessCopyWith<$Res> implements $CheckEmailStateCopyWith<$Res> {
  factory $CheckEmailSuccessCopyWith(CheckEmailSuccess value, $Res Function(CheckEmailSuccess) _then) = _$CheckEmailSuccessCopyWithImpl;
@useResult
$Res call({
 ForgotPasswordResponseModel? successData, String email
});




}
/// @nodoc
class _$CheckEmailSuccessCopyWithImpl<$Res>
    implements $CheckEmailSuccessCopyWith<$Res> {
  _$CheckEmailSuccessCopyWithImpl(this._self, this._then);

  final CheckEmailSuccess _self;
  final $Res Function(CheckEmailSuccess) _then;

/// Create a copy of CheckEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? successData = freezed,Object? email = null,}) {
  return _then(CheckEmailSuccess(
successData: freezed == successData ? _self.successData : successData // ignore: cast_nullable_to_non_nullable
as ForgotPasswordResponseModel?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CheckEmailFailure implements CheckEmailState {
  const CheckEmailFailure(this.exception);
  

 final  Exception? exception;

/// Create a copy of CheckEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckEmailFailureCopyWith<CheckEmailFailure> get copyWith => _$CheckEmailFailureCopyWithImpl<CheckEmailFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'CheckEmailState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $CheckEmailFailureCopyWith<$Res> implements $CheckEmailStateCopyWith<$Res> {
  factory $CheckEmailFailureCopyWith(CheckEmailFailure value, $Res Function(CheckEmailFailure) _then) = _$CheckEmailFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$CheckEmailFailureCopyWithImpl<$Res>
    implements $CheckEmailFailureCopyWith<$Res> {
  _$CheckEmailFailureCopyWithImpl(this._self, this._then);

  final CheckEmailFailure _self;
  final $Res Function(CheckEmailFailure) _then;

/// Create a copy of CheckEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(CheckEmailFailure(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
