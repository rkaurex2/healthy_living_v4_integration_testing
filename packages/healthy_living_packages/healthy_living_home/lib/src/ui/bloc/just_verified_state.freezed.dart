// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'just_verified_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JustVerifiedState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JustVerifiedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JustVerifiedState()';
}


}

/// @nodoc
class $JustVerifiedStateCopyWith<$Res>  {
$JustVerifiedStateCopyWith(JustVerifiedState _, $Res Function(JustVerifiedState) __);
}


/// Adds pattern-matching-related methods to [JustVerifiedState].
extension JustVerifiedStatePatterns on JustVerifiedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( JustVerifiedListLoadSuccess value)?  justVerifiedListLoadSuccess,TResult Function( JustVerifiedListLoadFailure value)?  justVerifiedListLoadFailure,TResult Function( JustVerifiedListLoadInProgress value)?  justVerifiedListLoadInProgress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case JustVerifiedListLoadSuccess() when justVerifiedListLoadSuccess != null:
return justVerifiedListLoadSuccess(_that);case JustVerifiedListLoadFailure() when justVerifiedListLoadFailure != null:
return justVerifiedListLoadFailure(_that);case JustVerifiedListLoadInProgress() when justVerifiedListLoadInProgress != null:
return justVerifiedListLoadInProgress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( JustVerifiedListLoadSuccess value)  justVerifiedListLoadSuccess,required TResult Function( JustVerifiedListLoadFailure value)  justVerifiedListLoadFailure,required TResult Function( JustVerifiedListLoadInProgress value)  justVerifiedListLoadInProgress,}){
final _that = this;
switch (_that) {
case JustVerifiedListLoadSuccess():
return justVerifiedListLoadSuccess(_that);case JustVerifiedListLoadFailure():
return justVerifiedListLoadFailure(_that);case JustVerifiedListLoadInProgress():
return justVerifiedListLoadInProgress(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( JustVerifiedListLoadSuccess value)?  justVerifiedListLoadSuccess,TResult? Function( JustVerifiedListLoadFailure value)?  justVerifiedListLoadFailure,TResult? Function( JustVerifiedListLoadInProgress value)?  justVerifiedListLoadInProgress,}){
final _that = this;
switch (_that) {
case JustVerifiedListLoadSuccess() when justVerifiedListLoadSuccess != null:
return justVerifiedListLoadSuccess(_that);case JustVerifiedListLoadFailure() when justVerifiedListLoadFailure != null:
return justVerifiedListLoadFailure(_that);case JustVerifiedListLoadInProgress() when justVerifiedListLoadInProgress != null:
return justVerifiedListLoadInProgress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<GeneralProductListItemUIModel> justVerifiedList)?  justVerifiedListLoadSuccess,TResult Function( Exception? exception)?  justVerifiedListLoadFailure,TResult Function()?  justVerifiedListLoadInProgress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case JustVerifiedListLoadSuccess() when justVerifiedListLoadSuccess != null:
return justVerifiedListLoadSuccess(_that.justVerifiedList);case JustVerifiedListLoadFailure() when justVerifiedListLoadFailure != null:
return justVerifiedListLoadFailure(_that.exception);case JustVerifiedListLoadInProgress() when justVerifiedListLoadInProgress != null:
return justVerifiedListLoadInProgress();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<GeneralProductListItemUIModel> justVerifiedList)  justVerifiedListLoadSuccess,required TResult Function( Exception? exception)  justVerifiedListLoadFailure,required TResult Function()  justVerifiedListLoadInProgress,}) {final _that = this;
switch (_that) {
case JustVerifiedListLoadSuccess():
return justVerifiedListLoadSuccess(_that.justVerifiedList);case JustVerifiedListLoadFailure():
return justVerifiedListLoadFailure(_that.exception);case JustVerifiedListLoadInProgress():
return justVerifiedListLoadInProgress();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<GeneralProductListItemUIModel> justVerifiedList)?  justVerifiedListLoadSuccess,TResult? Function( Exception? exception)?  justVerifiedListLoadFailure,TResult? Function()?  justVerifiedListLoadInProgress,}) {final _that = this;
switch (_that) {
case JustVerifiedListLoadSuccess() when justVerifiedListLoadSuccess != null:
return justVerifiedListLoadSuccess(_that.justVerifiedList);case JustVerifiedListLoadFailure() when justVerifiedListLoadFailure != null:
return justVerifiedListLoadFailure(_that.exception);case JustVerifiedListLoadInProgress() when justVerifiedListLoadInProgress != null:
return justVerifiedListLoadInProgress();case _:
  return null;

}
}

}

/// @nodoc


class JustVerifiedListLoadSuccess implements JustVerifiedState {
  const JustVerifiedListLoadSuccess({required final  List<GeneralProductListItemUIModel> justVerifiedList}): _justVerifiedList = justVerifiedList;
  

 final  List<GeneralProductListItemUIModel> _justVerifiedList;
 List<GeneralProductListItemUIModel> get justVerifiedList {
  if (_justVerifiedList is EqualUnmodifiableListView) return _justVerifiedList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_justVerifiedList);
}


/// Create a copy of JustVerifiedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JustVerifiedListLoadSuccessCopyWith<JustVerifiedListLoadSuccess> get copyWith => _$JustVerifiedListLoadSuccessCopyWithImpl<JustVerifiedListLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JustVerifiedListLoadSuccess&&const DeepCollectionEquality().equals(other._justVerifiedList, _justVerifiedList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_justVerifiedList));

@override
String toString() {
  return 'JustVerifiedState.justVerifiedListLoadSuccess(justVerifiedList: $justVerifiedList)';
}


}

/// @nodoc
abstract mixin class $JustVerifiedListLoadSuccessCopyWith<$Res> implements $JustVerifiedStateCopyWith<$Res> {
  factory $JustVerifiedListLoadSuccessCopyWith(JustVerifiedListLoadSuccess value, $Res Function(JustVerifiedListLoadSuccess) _then) = _$JustVerifiedListLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<GeneralProductListItemUIModel> justVerifiedList
});




}
/// @nodoc
class _$JustVerifiedListLoadSuccessCopyWithImpl<$Res>
    implements $JustVerifiedListLoadSuccessCopyWith<$Res> {
  _$JustVerifiedListLoadSuccessCopyWithImpl(this._self, this._then);

  final JustVerifiedListLoadSuccess _self;
  final $Res Function(JustVerifiedListLoadSuccess) _then;

/// Create a copy of JustVerifiedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? justVerifiedList = null,}) {
  return _then(JustVerifiedListLoadSuccess(
justVerifiedList: null == justVerifiedList ? _self._justVerifiedList : justVerifiedList // ignore: cast_nullable_to_non_nullable
as List<GeneralProductListItemUIModel>,
  ));
}


}

/// @nodoc


class JustVerifiedListLoadFailure implements JustVerifiedState {
  const JustVerifiedListLoadFailure({this.exception});
  

 final  Exception? exception;

/// Create a copy of JustVerifiedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JustVerifiedListLoadFailureCopyWith<JustVerifiedListLoadFailure> get copyWith => _$JustVerifiedListLoadFailureCopyWithImpl<JustVerifiedListLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JustVerifiedListLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'JustVerifiedState.justVerifiedListLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $JustVerifiedListLoadFailureCopyWith<$Res> implements $JustVerifiedStateCopyWith<$Res> {
  factory $JustVerifiedListLoadFailureCopyWith(JustVerifiedListLoadFailure value, $Res Function(JustVerifiedListLoadFailure) _then) = _$JustVerifiedListLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$JustVerifiedListLoadFailureCopyWithImpl<$Res>
    implements $JustVerifiedListLoadFailureCopyWith<$Res> {
  _$JustVerifiedListLoadFailureCopyWithImpl(this._self, this._then);

  final JustVerifiedListLoadFailure _self;
  final $Res Function(JustVerifiedListLoadFailure) _then;

/// Create a copy of JustVerifiedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(JustVerifiedListLoadFailure(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class JustVerifiedListLoadInProgress implements JustVerifiedState {
  const JustVerifiedListLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JustVerifiedListLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JustVerifiedState.justVerifiedListLoadInProgress()';
}


}




// dart format on
