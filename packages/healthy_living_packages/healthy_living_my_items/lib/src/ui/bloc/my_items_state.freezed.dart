// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyItemsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyItemsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyItemsState()';
}


}

/// @nodoc
class $MyItemsStateCopyWith<$Res>  {
$MyItemsStateCopyWith(MyItemsState _, $Res Function(MyItemsState) __);
}


/// Adds pattern-matching-related methods to [MyItemsState].
extension MyItemsStatePatterns on MyItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialState value)?  initialState,TResult Function( ValidateCreateButton value)?  validateCreateButton,TResult Function( IsLoadingCreateListButton value)?  isLoadingCreateListButton,TResult Function( OnCreateListSuccess value)?  onCreateListSuccess,TResult Function( OnFailureCreateList value)?  onFailureCreateList,TResult Function( UserListLoading value)?  userListLoading,TResult Function( OnLoadUserList value)?  onLoadUserList,TResult Function( OnFailureUserList value)?  onFailureUserList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialState() when initialState != null:
return initialState(_that);case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that);case IsLoadingCreateListButton() when isLoadingCreateListButton != null:
return isLoadingCreateListButton(_that);case OnCreateListSuccess() when onCreateListSuccess != null:
return onCreateListSuccess(_that);case OnFailureCreateList() when onFailureCreateList != null:
return onFailureCreateList(_that);case UserListLoading() when userListLoading != null:
return userListLoading(_that);case OnLoadUserList() when onLoadUserList != null:
return onLoadUserList(_that);case OnFailureUserList() when onFailureUserList != null:
return onFailureUserList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialState value)  initialState,required TResult Function( ValidateCreateButton value)  validateCreateButton,required TResult Function( IsLoadingCreateListButton value)  isLoadingCreateListButton,required TResult Function( OnCreateListSuccess value)  onCreateListSuccess,required TResult Function( OnFailureCreateList value)  onFailureCreateList,required TResult Function( UserListLoading value)  userListLoading,required TResult Function( OnLoadUserList value)  onLoadUserList,required TResult Function( OnFailureUserList value)  onFailureUserList,}){
final _that = this;
switch (_that) {
case InitialState():
return initialState(_that);case ValidateCreateButton():
return validateCreateButton(_that);case IsLoadingCreateListButton():
return isLoadingCreateListButton(_that);case OnCreateListSuccess():
return onCreateListSuccess(_that);case OnFailureCreateList():
return onFailureCreateList(_that);case UserListLoading():
return userListLoading(_that);case OnLoadUserList():
return onLoadUserList(_that);case OnFailureUserList():
return onFailureUserList(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialState value)?  initialState,TResult? Function( ValidateCreateButton value)?  validateCreateButton,TResult? Function( IsLoadingCreateListButton value)?  isLoadingCreateListButton,TResult? Function( OnCreateListSuccess value)?  onCreateListSuccess,TResult? Function( OnFailureCreateList value)?  onFailureCreateList,TResult? Function( UserListLoading value)?  userListLoading,TResult? Function( OnLoadUserList value)?  onLoadUserList,TResult? Function( OnFailureUserList value)?  onFailureUserList,}){
final _that = this;
switch (_that) {
case InitialState() when initialState != null:
return initialState(_that);case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that);case IsLoadingCreateListButton() when isLoadingCreateListButton != null:
return isLoadingCreateListButton(_that);case OnCreateListSuccess() when onCreateListSuccess != null:
return onCreateListSuccess(_that);case OnFailureCreateList() when onFailureCreateList != null:
return onFailureCreateList(_that);case UserListLoading() when userListLoading != null:
return userListLoading(_that);case OnLoadUserList() when onLoadUserList != null:
return onLoadUserList(_that);case OnFailureUserList() when onFailureUserList != null:
return onFailureUserList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialState,TResult Function( bool isCreateButtonEnable)?  validateCreateButton,TResult Function( bool isLoading)?  isLoadingCreateListButton,TResult Function( String listId)?  onCreateListSuccess,TResult Function( Exception? createListException)?  onFailureCreateList,TResult Function( bool isLoading)?  userListLoading,TResult Function( List<UserListModel> userListModelList)?  onLoadUserList,TResult Function( Exception? exception)?  onFailureUserList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialState() when initialState != null:
return initialState();case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that.isCreateButtonEnable);case IsLoadingCreateListButton() when isLoadingCreateListButton != null:
return isLoadingCreateListButton(_that.isLoading);case OnCreateListSuccess() when onCreateListSuccess != null:
return onCreateListSuccess(_that.listId);case OnFailureCreateList() when onFailureCreateList != null:
return onFailureCreateList(_that.createListException);case UserListLoading() when userListLoading != null:
return userListLoading(_that.isLoading);case OnLoadUserList() when onLoadUserList != null:
return onLoadUserList(_that.userListModelList);case OnFailureUserList() when onFailureUserList != null:
return onFailureUserList(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialState,required TResult Function( bool isCreateButtonEnable)  validateCreateButton,required TResult Function( bool isLoading)  isLoadingCreateListButton,required TResult Function( String listId)  onCreateListSuccess,required TResult Function( Exception? createListException)  onFailureCreateList,required TResult Function( bool isLoading)  userListLoading,required TResult Function( List<UserListModel> userListModelList)  onLoadUserList,required TResult Function( Exception? exception)  onFailureUserList,}) {final _that = this;
switch (_that) {
case InitialState():
return initialState();case ValidateCreateButton():
return validateCreateButton(_that.isCreateButtonEnable);case IsLoadingCreateListButton():
return isLoadingCreateListButton(_that.isLoading);case OnCreateListSuccess():
return onCreateListSuccess(_that.listId);case OnFailureCreateList():
return onFailureCreateList(_that.createListException);case UserListLoading():
return userListLoading(_that.isLoading);case OnLoadUserList():
return onLoadUserList(_that.userListModelList);case OnFailureUserList():
return onFailureUserList(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialState,TResult? Function( bool isCreateButtonEnable)?  validateCreateButton,TResult? Function( bool isLoading)?  isLoadingCreateListButton,TResult? Function( String listId)?  onCreateListSuccess,TResult? Function( Exception? createListException)?  onFailureCreateList,TResult? Function( bool isLoading)?  userListLoading,TResult? Function( List<UserListModel> userListModelList)?  onLoadUserList,TResult? Function( Exception? exception)?  onFailureUserList,}) {final _that = this;
switch (_that) {
case InitialState() when initialState != null:
return initialState();case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that.isCreateButtonEnable);case IsLoadingCreateListButton() when isLoadingCreateListButton != null:
return isLoadingCreateListButton(_that.isLoading);case OnCreateListSuccess() when onCreateListSuccess != null:
return onCreateListSuccess(_that.listId);case OnFailureCreateList() when onFailureCreateList != null:
return onFailureCreateList(_that.createListException);case UserListLoading() when userListLoading != null:
return userListLoading(_that.isLoading);case OnLoadUserList() when onLoadUserList != null:
return onLoadUserList(_that.userListModelList);case OnFailureUserList() when onFailureUserList != null:
return onFailureUserList(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class InitialState implements MyItemsState {
  const InitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyItemsState.initialState()';
}


}




/// @nodoc


class ValidateCreateButton implements MyItemsState {
  const ValidateCreateButton({required this.isCreateButtonEnable});
  

 final  bool isCreateButtonEnable;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateCreateButtonCopyWith<ValidateCreateButton> get copyWith => _$ValidateCreateButtonCopyWithImpl<ValidateCreateButton>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateCreateButton&&(identical(other.isCreateButtonEnable, isCreateButtonEnable) || other.isCreateButtonEnable == isCreateButtonEnable));
}


@override
int get hashCode => Object.hash(runtimeType,isCreateButtonEnable);

@override
String toString() {
  return 'MyItemsState.validateCreateButton(isCreateButtonEnable: $isCreateButtonEnable)';
}


}

/// @nodoc
abstract mixin class $ValidateCreateButtonCopyWith<$Res> implements $MyItemsStateCopyWith<$Res> {
  factory $ValidateCreateButtonCopyWith(ValidateCreateButton value, $Res Function(ValidateCreateButton) _then) = _$ValidateCreateButtonCopyWithImpl;
@useResult
$Res call({
 bool isCreateButtonEnable
});




}
/// @nodoc
class _$ValidateCreateButtonCopyWithImpl<$Res>
    implements $ValidateCreateButtonCopyWith<$Res> {
  _$ValidateCreateButtonCopyWithImpl(this._self, this._then);

  final ValidateCreateButton _self;
  final $Res Function(ValidateCreateButton) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isCreateButtonEnable = null,}) {
  return _then(ValidateCreateButton(
isCreateButtonEnable: null == isCreateButtonEnable ? _self.isCreateButtonEnable : isCreateButtonEnable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class IsLoadingCreateListButton implements MyItemsState {
  const IsLoadingCreateListButton({required this.isLoading});
  

 final  bool isLoading;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IsLoadingCreateListButtonCopyWith<IsLoadingCreateListButton> get copyWith => _$IsLoadingCreateListButtonCopyWithImpl<IsLoadingCreateListButton>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsLoadingCreateListButton&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'MyItemsState.isLoadingCreateListButton(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $IsLoadingCreateListButtonCopyWith<$Res> implements $MyItemsStateCopyWith<$Res> {
  factory $IsLoadingCreateListButtonCopyWith(IsLoadingCreateListButton value, $Res Function(IsLoadingCreateListButton) _then) = _$IsLoadingCreateListButtonCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$IsLoadingCreateListButtonCopyWithImpl<$Res>
    implements $IsLoadingCreateListButtonCopyWith<$Res> {
  _$IsLoadingCreateListButtonCopyWithImpl(this._self, this._then);

  final IsLoadingCreateListButton _self;
  final $Res Function(IsLoadingCreateListButton) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(IsLoadingCreateListButton(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OnCreateListSuccess implements MyItemsState {
  const OnCreateListSuccess({required this.listId});
  

 final  String listId;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnCreateListSuccessCopyWith<OnCreateListSuccess> get copyWith => _$OnCreateListSuccessCopyWithImpl<OnCreateListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnCreateListSuccess&&(identical(other.listId, listId) || other.listId == listId));
}


@override
int get hashCode => Object.hash(runtimeType,listId);

@override
String toString() {
  return 'MyItemsState.onCreateListSuccess(listId: $listId)';
}


}

/// @nodoc
abstract mixin class $OnCreateListSuccessCopyWith<$Res> implements $MyItemsStateCopyWith<$Res> {
  factory $OnCreateListSuccessCopyWith(OnCreateListSuccess value, $Res Function(OnCreateListSuccess) _then) = _$OnCreateListSuccessCopyWithImpl;
@useResult
$Res call({
 String listId
});




}
/// @nodoc
class _$OnCreateListSuccessCopyWithImpl<$Res>
    implements $OnCreateListSuccessCopyWith<$Res> {
  _$OnCreateListSuccessCopyWithImpl(this._self, this._then);

  final OnCreateListSuccess _self;
  final $Res Function(OnCreateListSuccess) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listId = null,}) {
  return _then(OnCreateListSuccess(
listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnFailureCreateList implements MyItemsState {
  const OnFailureCreateList({this.createListException});
  

 final  Exception? createListException;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnFailureCreateListCopyWith<OnFailureCreateList> get copyWith => _$OnFailureCreateListCopyWithImpl<OnFailureCreateList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnFailureCreateList&&(identical(other.createListException, createListException) || other.createListException == createListException));
}


@override
int get hashCode => Object.hash(runtimeType,createListException);

@override
String toString() {
  return 'MyItemsState.onFailureCreateList(createListException: $createListException)';
}


}

/// @nodoc
abstract mixin class $OnFailureCreateListCopyWith<$Res> implements $MyItemsStateCopyWith<$Res> {
  factory $OnFailureCreateListCopyWith(OnFailureCreateList value, $Res Function(OnFailureCreateList) _then) = _$OnFailureCreateListCopyWithImpl;
@useResult
$Res call({
 Exception? createListException
});




}
/// @nodoc
class _$OnFailureCreateListCopyWithImpl<$Res>
    implements $OnFailureCreateListCopyWith<$Res> {
  _$OnFailureCreateListCopyWithImpl(this._self, this._then);

  final OnFailureCreateList _self;
  final $Res Function(OnFailureCreateList) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createListException = freezed,}) {
  return _then(OnFailureCreateList(
createListException: freezed == createListException ? _self.createListException : createListException // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class UserListLoading implements MyItemsState {
  const UserListLoading({required this.isLoading});
  

 final  bool isLoading;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListLoadingCopyWith<UserListLoading> get copyWith => _$UserListLoadingCopyWithImpl<UserListLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListLoading&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'MyItemsState.userListLoading(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $UserListLoadingCopyWith<$Res> implements $MyItemsStateCopyWith<$Res> {
  factory $UserListLoadingCopyWith(UserListLoading value, $Res Function(UserListLoading) _then) = _$UserListLoadingCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$UserListLoadingCopyWithImpl<$Res>
    implements $UserListLoadingCopyWith<$Res> {
  _$UserListLoadingCopyWithImpl(this._self, this._then);

  final UserListLoading _self;
  final $Res Function(UserListLoading) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(UserListLoading(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OnLoadUserList implements MyItemsState {
  const OnLoadUserList({required final  List<UserListModel> userListModelList}): _userListModelList = userListModelList;
  

 final  List<UserListModel> _userListModelList;
 List<UserListModel> get userListModelList {
  if (_userListModelList is EqualUnmodifiableListView) return _userListModelList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userListModelList);
}


/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnLoadUserListCopyWith<OnLoadUserList> get copyWith => _$OnLoadUserListCopyWithImpl<OnLoadUserList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnLoadUserList&&const DeepCollectionEquality().equals(other._userListModelList, _userListModelList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userListModelList));

@override
String toString() {
  return 'MyItemsState.onLoadUserList(userListModelList: $userListModelList)';
}


}

/// @nodoc
abstract mixin class $OnLoadUserListCopyWith<$Res> implements $MyItemsStateCopyWith<$Res> {
  factory $OnLoadUserListCopyWith(OnLoadUserList value, $Res Function(OnLoadUserList) _then) = _$OnLoadUserListCopyWithImpl;
@useResult
$Res call({
 List<UserListModel> userListModelList
});




}
/// @nodoc
class _$OnLoadUserListCopyWithImpl<$Res>
    implements $OnLoadUserListCopyWith<$Res> {
  _$OnLoadUserListCopyWithImpl(this._self, this._then);

  final OnLoadUserList _self;
  final $Res Function(OnLoadUserList) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userListModelList = null,}) {
  return _then(OnLoadUserList(
userListModelList: null == userListModelList ? _self._userListModelList : userListModelList // ignore: cast_nullable_to_non_nullable
as List<UserListModel>,
  ));
}


}

/// @nodoc


class OnFailureUserList implements MyItemsState {
  const OnFailureUserList({this.exception});
  

 final  Exception? exception;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnFailureUserListCopyWith<OnFailureUserList> get copyWith => _$OnFailureUserListCopyWithImpl<OnFailureUserList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnFailureUserList&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'MyItemsState.onFailureUserList(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $OnFailureUserListCopyWith<$Res> implements $MyItemsStateCopyWith<$Res> {
  factory $OnFailureUserListCopyWith(OnFailureUserList value, $Res Function(OnFailureUserList) _then) = _$OnFailureUserListCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$OnFailureUserListCopyWithImpl<$Res>
    implements $OnFailureUserListCopyWith<$Res> {
  _$OnFailureUserListCopyWithImpl(this._self, this._then);

  final OnFailureUserList _self;
  final $Res Function(OnFailureUserList) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(OnFailureUserList(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
