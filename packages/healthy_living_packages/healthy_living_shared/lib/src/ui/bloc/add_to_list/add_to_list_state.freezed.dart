// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddToListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToListState()';
}


}

/// @nodoc
class $AddToListStateCopyWith<$Res>  {
$AddToListStateCopyWith(AddToListState _, $Res Function(AddToListState) __);
}


/// Adds pattern-matching-related methods to [AddToListState].
extension AddToListStatePatterns on AddToListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddToListInitialState value)?  initial,TResult Function( DetailLoading value)?  loading,TResult Function( AddToListDoneButtonLoading value)?  loadingDoneButton,TResult Function( LoadSavedListFailure value)?  loadSavedListFailure,TResult Function( AddToListFailureState value)?  failure,TResult Function( AddToListSuccess value)?  addToListSuccess,TResult Function( GetUserListSuccess value)?  getUserListSuccess,TResult Function( UpdateSelectedIndex value)?  updateSelectedIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddToListInitialState() when initial != null:
return initial(_that);case DetailLoading() when loading != null:
return loading(_that);case AddToListDoneButtonLoading() when loadingDoneButton != null:
return loadingDoneButton(_that);case LoadSavedListFailure() when loadSavedListFailure != null:
return loadSavedListFailure(_that);case AddToListFailureState() when failure != null:
return failure(_that);case AddToListSuccess() when addToListSuccess != null:
return addToListSuccess(_that);case GetUserListSuccess() when getUserListSuccess != null:
return getUserListSuccess(_that);case UpdateSelectedIndex() when updateSelectedIndex != null:
return updateSelectedIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddToListInitialState value)  initial,required TResult Function( DetailLoading value)  loading,required TResult Function( AddToListDoneButtonLoading value)  loadingDoneButton,required TResult Function( LoadSavedListFailure value)  loadSavedListFailure,required TResult Function( AddToListFailureState value)  failure,required TResult Function( AddToListSuccess value)  addToListSuccess,required TResult Function( GetUserListSuccess value)  getUserListSuccess,required TResult Function( UpdateSelectedIndex value)  updateSelectedIndex,}){
final _that = this;
switch (_that) {
case AddToListInitialState():
return initial(_that);case DetailLoading():
return loading(_that);case AddToListDoneButtonLoading():
return loadingDoneButton(_that);case LoadSavedListFailure():
return loadSavedListFailure(_that);case AddToListFailureState():
return failure(_that);case AddToListSuccess():
return addToListSuccess(_that);case GetUserListSuccess():
return getUserListSuccess(_that);case UpdateSelectedIndex():
return updateSelectedIndex(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddToListInitialState value)?  initial,TResult? Function( DetailLoading value)?  loading,TResult? Function( AddToListDoneButtonLoading value)?  loadingDoneButton,TResult? Function( LoadSavedListFailure value)?  loadSavedListFailure,TResult? Function( AddToListFailureState value)?  failure,TResult? Function( AddToListSuccess value)?  addToListSuccess,TResult? Function( GetUserListSuccess value)?  getUserListSuccess,TResult? Function( UpdateSelectedIndex value)?  updateSelectedIndex,}){
final _that = this;
switch (_that) {
case AddToListInitialState() when initial != null:
return initial(_that);case DetailLoading() when loading != null:
return loading(_that);case AddToListDoneButtonLoading() when loadingDoneButton != null:
return loadingDoneButton(_that);case LoadSavedListFailure() when loadSavedListFailure != null:
return loadSavedListFailure(_that);case AddToListFailureState() when failure != null:
return failure(_that);case AddToListSuccess() when addToListSuccess != null:
return addToListSuccess(_that);case GetUserListSuccess() when getUserListSuccess != null:
return getUserListSuccess(_that);case UpdateSelectedIndex() when updateSelectedIndex != null:
return updateSelectedIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loadingDoneButton,TResult Function( Exception? exception)?  loadSavedListFailure,TResult Function( Exception? exception)?  failure,TResult Function( UserListModel? userListModel,  bool isSingleAdded)?  addToListSuccess,TResult Function( List<UserListModel?>? userListModel)?  getUserListSuccess,TResult Function( int index)?  updateSelectedIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddToListInitialState() when initial != null:
return initial();case DetailLoading() when loading != null:
return loading();case AddToListDoneButtonLoading() when loadingDoneButton != null:
return loadingDoneButton();case LoadSavedListFailure() when loadSavedListFailure != null:
return loadSavedListFailure(_that.exception);case AddToListFailureState() when failure != null:
return failure(_that.exception);case AddToListSuccess() when addToListSuccess != null:
return addToListSuccess(_that.userListModel,_that.isSingleAdded);case GetUserListSuccess() when getUserListSuccess != null:
return getUserListSuccess(_that.userListModel);case UpdateSelectedIndex() when updateSelectedIndex != null:
return updateSelectedIndex(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loadingDoneButton,required TResult Function( Exception? exception)  loadSavedListFailure,required TResult Function( Exception? exception)  failure,required TResult Function( UserListModel? userListModel,  bool isSingleAdded)  addToListSuccess,required TResult Function( List<UserListModel?>? userListModel)  getUserListSuccess,required TResult Function( int index)  updateSelectedIndex,}) {final _that = this;
switch (_that) {
case AddToListInitialState():
return initial();case DetailLoading():
return loading();case AddToListDoneButtonLoading():
return loadingDoneButton();case LoadSavedListFailure():
return loadSavedListFailure(_that.exception);case AddToListFailureState():
return failure(_that.exception);case AddToListSuccess():
return addToListSuccess(_that.userListModel,_that.isSingleAdded);case GetUserListSuccess():
return getUserListSuccess(_that.userListModel);case UpdateSelectedIndex():
return updateSelectedIndex(_that.index);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loadingDoneButton,TResult? Function( Exception? exception)?  loadSavedListFailure,TResult? Function( Exception? exception)?  failure,TResult? Function( UserListModel? userListModel,  bool isSingleAdded)?  addToListSuccess,TResult? Function( List<UserListModel?>? userListModel)?  getUserListSuccess,TResult? Function( int index)?  updateSelectedIndex,}) {final _that = this;
switch (_that) {
case AddToListInitialState() when initial != null:
return initial();case DetailLoading() when loading != null:
return loading();case AddToListDoneButtonLoading() when loadingDoneButton != null:
return loadingDoneButton();case LoadSavedListFailure() when loadSavedListFailure != null:
return loadSavedListFailure(_that.exception);case AddToListFailureState() when failure != null:
return failure(_that.exception);case AddToListSuccess() when addToListSuccess != null:
return addToListSuccess(_that.userListModel,_that.isSingleAdded);case GetUserListSuccess() when getUserListSuccess != null:
return getUserListSuccess(_that.userListModel);case UpdateSelectedIndex() when updateSelectedIndex != null:
return updateSelectedIndex(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class AddToListInitialState implements AddToListState {
  const AddToListInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToListState.initial()';
}


}




/// @nodoc


class DetailLoading implements AddToListState {
  const DetailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToListState.loading()';
}


}




/// @nodoc


class AddToListDoneButtonLoading implements AddToListState {
  const AddToListDoneButtonLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListDoneButtonLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToListState.loadingDoneButton()';
}


}




/// @nodoc


class LoadSavedListFailure implements AddToListState {
  const LoadSavedListFailure(this.exception);
  

 final  Exception? exception;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadSavedListFailureCopyWith<LoadSavedListFailure> get copyWith => _$LoadSavedListFailureCopyWithImpl<LoadSavedListFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSavedListFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'AddToListState.loadSavedListFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $LoadSavedListFailureCopyWith<$Res> implements $AddToListStateCopyWith<$Res> {
  factory $LoadSavedListFailureCopyWith(LoadSavedListFailure value, $Res Function(LoadSavedListFailure) _then) = _$LoadSavedListFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$LoadSavedListFailureCopyWithImpl<$Res>
    implements $LoadSavedListFailureCopyWith<$Res> {
  _$LoadSavedListFailureCopyWithImpl(this._self, this._then);

  final LoadSavedListFailure _self;
  final $Res Function(LoadSavedListFailure) _then;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(LoadSavedListFailure(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class AddToListFailureState implements AddToListState {
  const AddToListFailureState(this.exception);
  

 final  Exception? exception;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToListFailureStateCopyWith<AddToListFailureState> get copyWith => _$AddToListFailureStateCopyWithImpl<AddToListFailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListFailureState&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'AddToListState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $AddToListFailureStateCopyWith<$Res> implements $AddToListStateCopyWith<$Res> {
  factory $AddToListFailureStateCopyWith(AddToListFailureState value, $Res Function(AddToListFailureState) _then) = _$AddToListFailureStateCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$AddToListFailureStateCopyWithImpl<$Res>
    implements $AddToListFailureStateCopyWith<$Res> {
  _$AddToListFailureStateCopyWithImpl(this._self, this._then);

  final AddToListFailureState _self;
  final $Res Function(AddToListFailureState) _then;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(AddToListFailureState(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class AddToListSuccess implements AddToListState {
  const AddToListSuccess(this.userListModel, this.isSingleAdded);
  

 final  UserListModel? userListModel;
 final  bool isSingleAdded;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToListSuccessCopyWith<AddToListSuccess> get copyWith => _$AddToListSuccessCopyWithImpl<AddToListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListSuccess&&(identical(other.userListModel, userListModel) || other.userListModel == userListModel)&&(identical(other.isSingleAdded, isSingleAdded) || other.isSingleAdded == isSingleAdded));
}


@override
int get hashCode => Object.hash(runtimeType,userListModel,isSingleAdded);

@override
String toString() {
  return 'AddToListState.addToListSuccess(userListModel: $userListModel, isSingleAdded: $isSingleAdded)';
}


}

/// @nodoc
abstract mixin class $AddToListSuccessCopyWith<$Res> implements $AddToListStateCopyWith<$Res> {
  factory $AddToListSuccessCopyWith(AddToListSuccess value, $Res Function(AddToListSuccess) _then) = _$AddToListSuccessCopyWithImpl;
@useResult
$Res call({
 UserListModel? userListModel, bool isSingleAdded
});




}
/// @nodoc
class _$AddToListSuccessCopyWithImpl<$Res>
    implements $AddToListSuccessCopyWith<$Res> {
  _$AddToListSuccessCopyWithImpl(this._self, this._then);

  final AddToListSuccess _self;
  final $Res Function(AddToListSuccess) _then;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userListModel = freezed,Object? isSingleAdded = null,}) {
  return _then(AddToListSuccess(
freezed == userListModel ? _self.userListModel : userListModel // ignore: cast_nullable_to_non_nullable
as UserListModel?,null == isSingleAdded ? _self.isSingleAdded : isSingleAdded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class GetUserListSuccess implements AddToListState {
  const GetUserListSuccess({final  List<UserListModel?>? userListModel}): _userListModel = userListModel;
  

 final  List<UserListModel?>? _userListModel;
 List<UserListModel?>? get userListModel {
  final value = _userListModel;
  if (value == null) return null;
  if (_userListModel is EqualUnmodifiableListView) return _userListModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserListSuccessCopyWith<GetUserListSuccess> get copyWith => _$GetUserListSuccessCopyWithImpl<GetUserListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserListSuccess&&const DeepCollectionEquality().equals(other._userListModel, _userListModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userListModel));

@override
String toString() {
  return 'AddToListState.getUserListSuccess(userListModel: $userListModel)';
}


}

/// @nodoc
abstract mixin class $GetUserListSuccessCopyWith<$Res> implements $AddToListStateCopyWith<$Res> {
  factory $GetUserListSuccessCopyWith(GetUserListSuccess value, $Res Function(GetUserListSuccess) _then) = _$GetUserListSuccessCopyWithImpl;
@useResult
$Res call({
 List<UserListModel?>? userListModel
});




}
/// @nodoc
class _$GetUserListSuccessCopyWithImpl<$Res>
    implements $GetUserListSuccessCopyWith<$Res> {
  _$GetUserListSuccessCopyWithImpl(this._self, this._then);

  final GetUserListSuccess _self;
  final $Res Function(GetUserListSuccess) _then;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userListModel = freezed,}) {
  return _then(GetUserListSuccess(
userListModel: freezed == userListModel ? _self._userListModel : userListModel // ignore: cast_nullable_to_non_nullable
as List<UserListModel?>?,
  ));
}


}

/// @nodoc


class UpdateSelectedIndex implements AddToListState {
  const UpdateSelectedIndex({required this.index});
  

 final  int index;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSelectedIndexCopyWith<UpdateSelectedIndex> get copyWith => _$UpdateSelectedIndexCopyWithImpl<UpdateSelectedIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSelectedIndex&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'AddToListState.updateSelectedIndex(index: $index)';
}


}

/// @nodoc
abstract mixin class $UpdateSelectedIndexCopyWith<$Res> implements $AddToListStateCopyWith<$Res> {
  factory $UpdateSelectedIndexCopyWith(UpdateSelectedIndex value, $Res Function(UpdateSelectedIndex) _then) = _$UpdateSelectedIndexCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$UpdateSelectedIndexCopyWithImpl<$Res>
    implements $UpdateSelectedIndexCopyWith<$Res> {
  _$UpdateSelectedIndexCopyWithImpl(this._self, this._then);

  final UpdateSelectedIndex _self;
  final $Res Function(UpdateSelectedIndex) _then;

/// Create a copy of AddToListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(UpdateSelectedIndex(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
