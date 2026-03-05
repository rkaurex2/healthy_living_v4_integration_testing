// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_activity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecentActivityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentActivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecentActivityState()';
}


}

/// @nodoc
class $RecentActivityStateCopyWith<$Res>  {
$RecentActivityStateCopyWith(RecentActivityState _, $Res Function(RecentActivityState) __);
}


/// Adds pattern-matching-related methods to [RecentActivityState].
extension RecentActivityStatePatterns on RecentActivityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RecentActivityLoadSuccess value)?  recentActivityLoadSuccess,TResult Function( RecentActivityLoadFailure value)?  recentActivityLoadFailure,TResult Function( RecentActivityLoadInProgress value)?  recentActivityLoadInProgress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RecentActivityLoadSuccess() when recentActivityLoadSuccess != null:
return recentActivityLoadSuccess(_that);case RecentActivityLoadFailure() when recentActivityLoadFailure != null:
return recentActivityLoadFailure(_that);case RecentActivityLoadInProgress() when recentActivityLoadInProgress != null:
return recentActivityLoadInProgress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RecentActivityLoadSuccess value)  recentActivityLoadSuccess,required TResult Function( RecentActivityLoadFailure value)  recentActivityLoadFailure,required TResult Function( RecentActivityLoadInProgress value)  recentActivityLoadInProgress,}){
final _that = this;
switch (_that) {
case RecentActivityLoadSuccess():
return recentActivityLoadSuccess(_that);case RecentActivityLoadFailure():
return recentActivityLoadFailure(_that);case RecentActivityLoadInProgress():
return recentActivityLoadInProgress(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RecentActivityLoadSuccess value)?  recentActivityLoadSuccess,TResult? Function( RecentActivityLoadFailure value)?  recentActivityLoadFailure,TResult? Function( RecentActivityLoadInProgress value)?  recentActivityLoadInProgress,}){
final _that = this;
switch (_that) {
case RecentActivityLoadSuccess() when recentActivityLoadSuccess != null:
return recentActivityLoadSuccess(_that);case RecentActivityLoadFailure() when recentActivityLoadFailure != null:
return recentActivityLoadFailure(_that);case RecentActivityLoadInProgress() when recentActivityLoadInProgress != null:
return recentActivityLoadInProgress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<GeneralProductListItemUIModel> recentActivityProductList)?  recentActivityLoadSuccess,TResult Function( Exception? exception)?  recentActivityLoadFailure,TResult Function()?  recentActivityLoadInProgress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RecentActivityLoadSuccess() when recentActivityLoadSuccess != null:
return recentActivityLoadSuccess(_that.recentActivityProductList);case RecentActivityLoadFailure() when recentActivityLoadFailure != null:
return recentActivityLoadFailure(_that.exception);case RecentActivityLoadInProgress() when recentActivityLoadInProgress != null:
return recentActivityLoadInProgress();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<GeneralProductListItemUIModel> recentActivityProductList)  recentActivityLoadSuccess,required TResult Function( Exception? exception)  recentActivityLoadFailure,required TResult Function()  recentActivityLoadInProgress,}) {final _that = this;
switch (_that) {
case RecentActivityLoadSuccess():
return recentActivityLoadSuccess(_that.recentActivityProductList);case RecentActivityLoadFailure():
return recentActivityLoadFailure(_that.exception);case RecentActivityLoadInProgress():
return recentActivityLoadInProgress();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<GeneralProductListItemUIModel> recentActivityProductList)?  recentActivityLoadSuccess,TResult? Function( Exception? exception)?  recentActivityLoadFailure,TResult? Function()?  recentActivityLoadInProgress,}) {final _that = this;
switch (_that) {
case RecentActivityLoadSuccess() when recentActivityLoadSuccess != null:
return recentActivityLoadSuccess(_that.recentActivityProductList);case RecentActivityLoadFailure() when recentActivityLoadFailure != null:
return recentActivityLoadFailure(_that.exception);case RecentActivityLoadInProgress() when recentActivityLoadInProgress != null:
return recentActivityLoadInProgress();case _:
  return null;

}
}

}

/// @nodoc


class RecentActivityLoadSuccess implements RecentActivityState {
  const RecentActivityLoadSuccess({required final  List<GeneralProductListItemUIModel> recentActivityProductList}): _recentActivityProductList = recentActivityProductList;
  

 final  List<GeneralProductListItemUIModel> _recentActivityProductList;
 List<GeneralProductListItemUIModel> get recentActivityProductList {
  if (_recentActivityProductList is EqualUnmodifiableListView) return _recentActivityProductList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentActivityProductList);
}


/// Create a copy of RecentActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentActivityLoadSuccessCopyWith<RecentActivityLoadSuccess> get copyWith => _$RecentActivityLoadSuccessCopyWithImpl<RecentActivityLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentActivityLoadSuccess&&const DeepCollectionEquality().equals(other._recentActivityProductList, _recentActivityProductList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_recentActivityProductList));

@override
String toString() {
  return 'RecentActivityState.recentActivityLoadSuccess(recentActivityProductList: $recentActivityProductList)';
}


}

/// @nodoc
abstract mixin class $RecentActivityLoadSuccessCopyWith<$Res> implements $RecentActivityStateCopyWith<$Res> {
  factory $RecentActivityLoadSuccessCopyWith(RecentActivityLoadSuccess value, $Res Function(RecentActivityLoadSuccess) _then) = _$RecentActivityLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<GeneralProductListItemUIModel> recentActivityProductList
});




}
/// @nodoc
class _$RecentActivityLoadSuccessCopyWithImpl<$Res>
    implements $RecentActivityLoadSuccessCopyWith<$Res> {
  _$RecentActivityLoadSuccessCopyWithImpl(this._self, this._then);

  final RecentActivityLoadSuccess _self;
  final $Res Function(RecentActivityLoadSuccess) _then;

/// Create a copy of RecentActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recentActivityProductList = null,}) {
  return _then(RecentActivityLoadSuccess(
recentActivityProductList: null == recentActivityProductList ? _self._recentActivityProductList : recentActivityProductList // ignore: cast_nullable_to_non_nullable
as List<GeneralProductListItemUIModel>,
  ));
}


}

/// @nodoc


class RecentActivityLoadFailure implements RecentActivityState {
  const RecentActivityLoadFailure({this.exception});
  

 final  Exception? exception;

/// Create a copy of RecentActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentActivityLoadFailureCopyWith<RecentActivityLoadFailure> get copyWith => _$RecentActivityLoadFailureCopyWithImpl<RecentActivityLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentActivityLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'RecentActivityState.recentActivityLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $RecentActivityLoadFailureCopyWith<$Res> implements $RecentActivityStateCopyWith<$Res> {
  factory $RecentActivityLoadFailureCopyWith(RecentActivityLoadFailure value, $Res Function(RecentActivityLoadFailure) _then) = _$RecentActivityLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$RecentActivityLoadFailureCopyWithImpl<$Res>
    implements $RecentActivityLoadFailureCopyWith<$Res> {
  _$RecentActivityLoadFailureCopyWithImpl(this._self, this._then);

  final RecentActivityLoadFailure _self;
  final $Res Function(RecentActivityLoadFailure) _then;

/// Create a copy of RecentActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(RecentActivityLoadFailure(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class RecentActivityLoadInProgress implements RecentActivityState {
  const RecentActivityLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentActivityLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecentActivityState.recentActivityLoadInProgress()';
}


}




// dart format on
