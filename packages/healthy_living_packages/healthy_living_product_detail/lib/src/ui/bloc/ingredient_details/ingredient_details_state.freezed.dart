// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientDetailsState()';
}


}

/// @nodoc
class $IngredientDetailsStateCopyWith<$Res>  {
$IngredientDetailsStateCopyWith(IngredientDetailsState _, $Res Function(IngredientDetailsState) __);
}


/// Adds pattern-matching-related methods to [IngredientDetailsState].
extension IngredientDetailsStatePatterns on IngredientDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IngredientDetailsInitial value)?  initial,TResult Function( IngredientDetailsLoadInProgress value)?  loading,TResult Function( IngredientDetailsLoadSuccess value)?  success,TResult Function( IngredientDetailsLoadFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IngredientDetailsInitial() when initial != null:
return initial(_that);case IngredientDetailsLoadInProgress() when loading != null:
return loading(_that);case IngredientDetailsLoadSuccess() when success != null:
return success(_that);case IngredientDetailsLoadFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IngredientDetailsInitial value)  initial,required TResult Function( IngredientDetailsLoadInProgress value)  loading,required TResult Function( IngredientDetailsLoadSuccess value)  success,required TResult Function( IngredientDetailsLoadFailure value)  failure,}){
final _that = this;
switch (_that) {
case IngredientDetailsInitial():
return initial(_that);case IngredientDetailsLoadInProgress():
return loading(_that);case IngredientDetailsLoadSuccess():
return success(_that);case IngredientDetailsLoadFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IngredientDetailsInitial value)?  initial,TResult? Function( IngredientDetailsLoadInProgress value)?  loading,TResult? Function( IngredientDetailsLoadSuccess value)?  success,TResult? Function( IngredientDetailsLoadFailure value)?  failure,}){
final _that = this;
switch (_that) {
case IngredientDetailsInitial() when initial != null:
return initial(_that);case IngredientDetailsLoadInProgress() when loading != null:
return loading(_that);case IngredientDetailsLoadSuccess() when success != null:
return success(_that);case IngredientDetailsLoadFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( IngredientInfoResponseModel data)?  success,TResult Function( Exception? exception)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IngredientDetailsInitial() when initial != null:
return initial();case IngredientDetailsLoadInProgress() when loading != null:
return loading();case IngredientDetailsLoadSuccess() when success != null:
return success(_that.data);case IngredientDetailsLoadFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( IngredientInfoResponseModel data)  success,required TResult Function( Exception? exception)  failure,}) {final _that = this;
switch (_that) {
case IngredientDetailsInitial():
return initial();case IngredientDetailsLoadInProgress():
return loading();case IngredientDetailsLoadSuccess():
return success(_that.data);case IngredientDetailsLoadFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( IngredientInfoResponseModel data)?  success,TResult? Function( Exception? exception)?  failure,}) {final _that = this;
switch (_that) {
case IngredientDetailsInitial() when initial != null:
return initial();case IngredientDetailsLoadInProgress() when loading != null:
return loading();case IngredientDetailsLoadSuccess() when success != null:
return success(_that.data);case IngredientDetailsLoadFailure() when failure != null:
return failure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class IngredientDetailsInitial implements IngredientDetailsState {
  const IngredientDetailsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientDetailsState.initial()';
}


}




/// @nodoc


class IngredientDetailsLoadInProgress implements IngredientDetailsState {
  const IngredientDetailsLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDetailsLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientDetailsState.loading()';
}


}




/// @nodoc


class IngredientDetailsLoadSuccess implements IngredientDetailsState {
  const IngredientDetailsLoadSuccess({required this.data});
  

 final  IngredientInfoResponseModel data;

/// Create a copy of IngredientDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientDetailsLoadSuccessCopyWith<IngredientDetailsLoadSuccess> get copyWith => _$IngredientDetailsLoadSuccessCopyWithImpl<IngredientDetailsLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDetailsLoadSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'IngredientDetailsState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $IngredientDetailsLoadSuccessCopyWith<$Res> implements $IngredientDetailsStateCopyWith<$Res> {
  factory $IngredientDetailsLoadSuccessCopyWith(IngredientDetailsLoadSuccess value, $Res Function(IngredientDetailsLoadSuccess) _then) = _$IngredientDetailsLoadSuccessCopyWithImpl;
@useResult
$Res call({
 IngredientInfoResponseModel data
});


$IngredientInfoResponseModelCopyWith<$Res> get data;

}
/// @nodoc
class _$IngredientDetailsLoadSuccessCopyWithImpl<$Res>
    implements $IngredientDetailsLoadSuccessCopyWith<$Res> {
  _$IngredientDetailsLoadSuccessCopyWithImpl(this._self, this._then);

  final IngredientDetailsLoadSuccess _self;
  final $Res Function(IngredientDetailsLoadSuccess) _then;

/// Create a copy of IngredientDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(IngredientDetailsLoadSuccess(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IngredientInfoResponseModel,
  ));
}

/// Create a copy of IngredientDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientInfoResponseModelCopyWith<$Res> get data {
  
  return $IngredientInfoResponseModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class IngredientDetailsLoadFailure implements IngredientDetailsState {
  const IngredientDetailsLoadFailure(this.exception);
  

 final  Exception? exception;

/// Create a copy of IngredientDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientDetailsLoadFailureCopyWith<IngredientDetailsLoadFailure> get copyWith => _$IngredientDetailsLoadFailureCopyWithImpl<IngredientDetailsLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDetailsLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'IngredientDetailsState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $IngredientDetailsLoadFailureCopyWith<$Res> implements $IngredientDetailsStateCopyWith<$Res> {
  factory $IngredientDetailsLoadFailureCopyWith(IngredientDetailsLoadFailure value, $Res Function(IngredientDetailsLoadFailure) _then) = _$IngredientDetailsLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$IngredientDetailsLoadFailureCopyWithImpl<$Res>
    implements $IngredientDetailsLoadFailureCopyWith<$Res> {
  _$IngredientDetailsLoadFailureCopyWithImpl(this._self, this._then);

  final IngredientDetailsLoadFailure _self;
  final $Res Function(IngredientDetailsLoadFailure) _then;

/// Create a copy of IngredientDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(IngredientDetailsLoadFailure(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
