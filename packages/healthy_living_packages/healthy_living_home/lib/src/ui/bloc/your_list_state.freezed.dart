// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'your_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$YourListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YourListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'YourListState()';
}


}

/// @nodoc
class $YourListStateCopyWith<$Res>  {
$YourListStateCopyWith(YourListState _, $Res Function(YourListState) __);
}


/// Adds pattern-matching-related methods to [YourListState].
extension YourListStatePatterns on YourListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( YourListLoadSuccess value)?  yourListLoadSuccess,TResult Function( YourListLoadFailure value)?  yourListLoadFailure,TResult Function( YourListLoadInProgress value)?  yourListLoadInProgress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case YourListLoadSuccess() when yourListLoadSuccess != null:
return yourListLoadSuccess(_that);case YourListLoadFailure() when yourListLoadFailure != null:
return yourListLoadFailure(_that);case YourListLoadInProgress() when yourListLoadInProgress != null:
return yourListLoadInProgress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( YourListLoadSuccess value)  yourListLoadSuccess,required TResult Function( YourListLoadFailure value)  yourListLoadFailure,required TResult Function( YourListLoadInProgress value)  yourListLoadInProgress,}){
final _that = this;
switch (_that) {
case YourListLoadSuccess():
return yourListLoadSuccess(_that);case YourListLoadFailure():
return yourListLoadFailure(_that);case YourListLoadInProgress():
return yourListLoadInProgress(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( YourListLoadSuccess value)?  yourListLoadSuccess,TResult? Function( YourListLoadFailure value)?  yourListLoadFailure,TResult? Function( YourListLoadInProgress value)?  yourListLoadInProgress,}){
final _that = this;
switch (_that) {
case YourListLoadSuccess() when yourListLoadSuccess != null:
return yourListLoadSuccess(_that);case YourListLoadFailure() when yourListLoadFailure != null:
return yourListLoadFailure(_that);case YourListLoadInProgress() when yourListLoadInProgress != null:
return yourListLoadInProgress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<UserListModel?> userListModelList)?  yourListLoadSuccess,TResult Function( Exception? exception)?  yourListLoadFailure,TResult Function()?  yourListLoadInProgress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case YourListLoadSuccess() when yourListLoadSuccess != null:
return yourListLoadSuccess(_that.userListModelList);case YourListLoadFailure() when yourListLoadFailure != null:
return yourListLoadFailure(_that.exception);case YourListLoadInProgress() when yourListLoadInProgress != null:
return yourListLoadInProgress();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<UserListModel?> userListModelList)  yourListLoadSuccess,required TResult Function( Exception? exception)  yourListLoadFailure,required TResult Function()  yourListLoadInProgress,}) {final _that = this;
switch (_that) {
case YourListLoadSuccess():
return yourListLoadSuccess(_that.userListModelList);case YourListLoadFailure():
return yourListLoadFailure(_that.exception);case YourListLoadInProgress():
return yourListLoadInProgress();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<UserListModel?> userListModelList)?  yourListLoadSuccess,TResult? Function( Exception? exception)?  yourListLoadFailure,TResult? Function()?  yourListLoadInProgress,}) {final _that = this;
switch (_that) {
case YourListLoadSuccess() when yourListLoadSuccess != null:
return yourListLoadSuccess(_that.userListModelList);case YourListLoadFailure() when yourListLoadFailure != null:
return yourListLoadFailure(_that.exception);case YourListLoadInProgress() when yourListLoadInProgress != null:
return yourListLoadInProgress();case _:
  return null;

}
}

}

/// @nodoc


class YourListLoadSuccess implements YourListState {
  const YourListLoadSuccess({required final  List<UserListModel?> userListModelList}): _userListModelList = userListModelList;
  

 final  List<UserListModel?> _userListModelList;
 List<UserListModel?> get userListModelList {
  if (_userListModelList is EqualUnmodifiableListView) return _userListModelList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userListModelList);
}


/// Create a copy of YourListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YourListLoadSuccessCopyWith<YourListLoadSuccess> get copyWith => _$YourListLoadSuccessCopyWithImpl<YourListLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YourListLoadSuccess&&const DeepCollectionEquality().equals(other._userListModelList, _userListModelList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userListModelList));

@override
String toString() {
  return 'YourListState.yourListLoadSuccess(userListModelList: $userListModelList)';
}


}

/// @nodoc
abstract mixin class $YourListLoadSuccessCopyWith<$Res> implements $YourListStateCopyWith<$Res> {
  factory $YourListLoadSuccessCopyWith(YourListLoadSuccess value, $Res Function(YourListLoadSuccess) _then) = _$YourListLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<UserListModel?> userListModelList
});




}
/// @nodoc
class _$YourListLoadSuccessCopyWithImpl<$Res>
    implements $YourListLoadSuccessCopyWith<$Res> {
  _$YourListLoadSuccessCopyWithImpl(this._self, this._then);

  final YourListLoadSuccess _self;
  final $Res Function(YourListLoadSuccess) _then;

/// Create a copy of YourListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userListModelList = null,}) {
  return _then(YourListLoadSuccess(
userListModelList: null == userListModelList ? _self._userListModelList : userListModelList // ignore: cast_nullable_to_non_nullable
as List<UserListModel?>,
  ));
}


}

/// @nodoc


class YourListLoadFailure implements YourListState {
  const YourListLoadFailure({this.exception});
  

 final  Exception? exception;

/// Create a copy of YourListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YourListLoadFailureCopyWith<YourListLoadFailure> get copyWith => _$YourListLoadFailureCopyWithImpl<YourListLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YourListLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'YourListState.yourListLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $YourListLoadFailureCopyWith<$Res> implements $YourListStateCopyWith<$Res> {
  factory $YourListLoadFailureCopyWith(YourListLoadFailure value, $Res Function(YourListLoadFailure) _then) = _$YourListLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$YourListLoadFailureCopyWithImpl<$Res>
    implements $YourListLoadFailureCopyWith<$Res> {
  _$YourListLoadFailureCopyWithImpl(this._self, this._then);

  final YourListLoadFailure _self;
  final $Res Function(YourListLoadFailure) _then;

/// Create a copy of YourListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(YourListLoadFailure(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class YourListLoadInProgress implements YourListState {
  const YourListLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YourListLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'YourListState.yourListLoadInProgress()';
}


}




// dart format on
