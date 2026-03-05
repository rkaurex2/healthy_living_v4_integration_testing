// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateListState()';
}


}

/// @nodoc
class $CreateListStateCopyWith<$Res>  {
$CreateListStateCopyWith(CreateListState _, $Res Function(CreateListState) __);
}


/// Adds pattern-matching-related methods to [CreateListState].
extension CreateListStatePatterns on CreateListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateListInitialState value)?  initial,TResult Function( CreateListLoading value)?  loading,TResult Function( ValidateCreateButton value)?  validateCreateButton,TResult Function( IsLoadingCreateListButton value)?  isLoadingCreateListButton,TResult Function( OnExistCreateListSheetState value)?  onExistCreateListSheet,TResult Function( OnSuccessCreateList value)?  onSuccessCreateList,TResult Function( OnFailureCreateList value)?  onFailureCreateList,TResult Function( AddToListSuccess value)?  addToListSuccess,TResult Function( AddToListFailure value)?  addToListFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateListInitialState() when initial != null:
return initial(_that);case CreateListLoading() when loading != null:
return loading(_that);case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that);case IsLoadingCreateListButton() when isLoadingCreateListButton != null:
return isLoadingCreateListButton(_that);case OnExistCreateListSheetState() when onExistCreateListSheet != null:
return onExistCreateListSheet(_that);case OnSuccessCreateList() when onSuccessCreateList != null:
return onSuccessCreateList(_that);case OnFailureCreateList() when onFailureCreateList != null:
return onFailureCreateList(_that);case AddToListSuccess() when addToListSuccess != null:
return addToListSuccess(_that);case AddToListFailure() when addToListFailure != null:
return addToListFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateListInitialState value)  initial,required TResult Function( CreateListLoading value)  loading,required TResult Function( ValidateCreateButton value)  validateCreateButton,required TResult Function( IsLoadingCreateListButton value)  isLoadingCreateListButton,required TResult Function( OnExistCreateListSheetState value)  onExistCreateListSheet,required TResult Function( OnSuccessCreateList value)  onSuccessCreateList,required TResult Function( OnFailureCreateList value)  onFailureCreateList,required TResult Function( AddToListSuccess value)  addToListSuccess,required TResult Function( AddToListFailure value)  addToListFailure,}){
final _that = this;
switch (_that) {
case CreateListInitialState():
return initial(_that);case CreateListLoading():
return loading(_that);case ValidateCreateButton():
return validateCreateButton(_that);case IsLoadingCreateListButton():
return isLoadingCreateListButton(_that);case OnExistCreateListSheetState():
return onExistCreateListSheet(_that);case OnSuccessCreateList():
return onSuccessCreateList(_that);case OnFailureCreateList():
return onFailureCreateList(_that);case AddToListSuccess():
return addToListSuccess(_that);case AddToListFailure():
return addToListFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateListInitialState value)?  initial,TResult? Function( CreateListLoading value)?  loading,TResult? Function( ValidateCreateButton value)?  validateCreateButton,TResult? Function( IsLoadingCreateListButton value)?  isLoadingCreateListButton,TResult? Function( OnExistCreateListSheetState value)?  onExistCreateListSheet,TResult? Function( OnSuccessCreateList value)?  onSuccessCreateList,TResult? Function( OnFailureCreateList value)?  onFailureCreateList,TResult? Function( AddToListSuccess value)?  addToListSuccess,TResult? Function( AddToListFailure value)?  addToListFailure,}){
final _that = this;
switch (_that) {
case CreateListInitialState() when initial != null:
return initial(_that);case CreateListLoading() when loading != null:
return loading(_that);case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that);case IsLoadingCreateListButton() when isLoadingCreateListButton != null:
return isLoadingCreateListButton(_that);case OnExistCreateListSheetState() when onExistCreateListSheet != null:
return onExistCreateListSheet(_that);case OnSuccessCreateList() when onSuccessCreateList != null:
return onSuccessCreateList(_that);case OnFailureCreateList() when onFailureCreateList != null:
return onFailureCreateList(_that);case AddToListSuccess() when addToListSuccess != null:
return addToListSuccess(_that);case AddToListFailure() when addToListFailure != null:
return addToListFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( bool isCreateButtonEnable)?  validateCreateButton,TResult Function( bool isLoading)?  isLoadingCreateListButton,TResult Function( bool isSuccess)?  onExistCreateListSheet,TResult Function( String listId,  String listName)?  onSuccessCreateList,TResult Function( Exception? createListException)?  onFailureCreateList,TResult Function( String listId)?  addToListSuccess,TResult Function( Exception? exception)?  addToListFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateListInitialState() when initial != null:
return initial();case CreateListLoading() when loading != null:
return loading();case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that.isCreateButtonEnable);case IsLoadingCreateListButton() when isLoadingCreateListButton != null:
return isLoadingCreateListButton(_that.isLoading);case OnExistCreateListSheetState() when onExistCreateListSheet != null:
return onExistCreateListSheet(_that.isSuccess);case OnSuccessCreateList() when onSuccessCreateList != null:
return onSuccessCreateList(_that.listId,_that.listName);case OnFailureCreateList() when onFailureCreateList != null:
return onFailureCreateList(_that.createListException);case AddToListSuccess() when addToListSuccess != null:
return addToListSuccess(_that.listId);case AddToListFailure() when addToListFailure != null:
return addToListFailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( bool isCreateButtonEnable)  validateCreateButton,required TResult Function( bool isLoading)  isLoadingCreateListButton,required TResult Function( bool isSuccess)  onExistCreateListSheet,required TResult Function( String listId,  String listName)  onSuccessCreateList,required TResult Function( Exception? createListException)  onFailureCreateList,required TResult Function( String listId)  addToListSuccess,required TResult Function( Exception? exception)  addToListFailure,}) {final _that = this;
switch (_that) {
case CreateListInitialState():
return initial();case CreateListLoading():
return loading();case ValidateCreateButton():
return validateCreateButton(_that.isCreateButtonEnable);case IsLoadingCreateListButton():
return isLoadingCreateListButton(_that.isLoading);case OnExistCreateListSheetState():
return onExistCreateListSheet(_that.isSuccess);case OnSuccessCreateList():
return onSuccessCreateList(_that.listId,_that.listName);case OnFailureCreateList():
return onFailureCreateList(_that.createListException);case AddToListSuccess():
return addToListSuccess(_that.listId);case AddToListFailure():
return addToListFailure(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( bool isCreateButtonEnable)?  validateCreateButton,TResult? Function( bool isLoading)?  isLoadingCreateListButton,TResult? Function( bool isSuccess)?  onExistCreateListSheet,TResult? Function( String listId,  String listName)?  onSuccessCreateList,TResult? Function( Exception? createListException)?  onFailureCreateList,TResult? Function( String listId)?  addToListSuccess,TResult? Function( Exception? exception)?  addToListFailure,}) {final _that = this;
switch (_that) {
case CreateListInitialState() when initial != null:
return initial();case CreateListLoading() when loading != null:
return loading();case ValidateCreateButton() when validateCreateButton != null:
return validateCreateButton(_that.isCreateButtonEnable);case IsLoadingCreateListButton() when isLoadingCreateListButton != null:
return isLoadingCreateListButton(_that.isLoading);case OnExistCreateListSheetState() when onExistCreateListSheet != null:
return onExistCreateListSheet(_that.isSuccess);case OnSuccessCreateList() when onSuccessCreateList != null:
return onSuccessCreateList(_that.listId,_that.listName);case OnFailureCreateList() when onFailureCreateList != null:
return onFailureCreateList(_that.createListException);case AddToListSuccess() when addToListSuccess != null:
return addToListSuccess(_that.listId);case AddToListFailure() when addToListFailure != null:
return addToListFailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class CreateListInitialState implements CreateListState {
  const CreateListInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateListState.initial()';
}


}




/// @nodoc


class CreateListLoading implements CreateListState {
  const CreateListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateListState.loading()';
}


}




/// @nodoc


class ValidateCreateButton implements CreateListState {
  const ValidateCreateButton({required this.isCreateButtonEnable});
  

 final  bool isCreateButtonEnable;

/// Create a copy of CreateListState
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
  return 'CreateListState.validateCreateButton(isCreateButtonEnable: $isCreateButtonEnable)';
}


}

/// @nodoc
abstract mixin class $ValidateCreateButtonCopyWith<$Res> implements $CreateListStateCopyWith<$Res> {
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

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isCreateButtonEnable = null,}) {
  return _then(ValidateCreateButton(
isCreateButtonEnable: null == isCreateButtonEnable ? _self.isCreateButtonEnable : isCreateButtonEnable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class IsLoadingCreateListButton implements CreateListState {
  const IsLoadingCreateListButton({required this.isLoading});
  

 final  bool isLoading;

/// Create a copy of CreateListState
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
  return 'CreateListState.isLoadingCreateListButton(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $IsLoadingCreateListButtonCopyWith<$Res> implements $CreateListStateCopyWith<$Res> {
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

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(IsLoadingCreateListButton(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OnExistCreateListSheetState implements CreateListState {
  const OnExistCreateListSheetState({required this.isSuccess});
  

 final  bool isSuccess;

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnExistCreateListSheetStateCopyWith<OnExistCreateListSheetState> get copyWith => _$OnExistCreateListSheetStateCopyWithImpl<OnExistCreateListSheetState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnExistCreateListSheetState&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSuccess);

@override
String toString() {
  return 'CreateListState.onExistCreateListSheet(isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $OnExistCreateListSheetStateCopyWith<$Res> implements $CreateListStateCopyWith<$Res> {
  factory $OnExistCreateListSheetStateCopyWith(OnExistCreateListSheetState value, $Res Function(OnExistCreateListSheetState) _then) = _$OnExistCreateListSheetStateCopyWithImpl;
@useResult
$Res call({
 bool isSuccess
});




}
/// @nodoc
class _$OnExistCreateListSheetStateCopyWithImpl<$Res>
    implements $OnExistCreateListSheetStateCopyWith<$Res> {
  _$OnExistCreateListSheetStateCopyWithImpl(this._self, this._then);

  final OnExistCreateListSheetState _self;
  final $Res Function(OnExistCreateListSheetState) _then;

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,}) {
  return _then(OnExistCreateListSheetState(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OnSuccessCreateList implements CreateListState {
  const OnSuccessCreateList({required this.listId, required this.listName});
  

 final  String listId;
 final  String listName;

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnSuccessCreateListCopyWith<OnSuccessCreateList> get copyWith => _$OnSuccessCreateListCopyWithImpl<OnSuccessCreateList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSuccessCreateList&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.listName, listName) || other.listName == listName));
}


@override
int get hashCode => Object.hash(runtimeType,listId,listName);

@override
String toString() {
  return 'CreateListState.onSuccessCreateList(listId: $listId, listName: $listName)';
}


}

/// @nodoc
abstract mixin class $OnSuccessCreateListCopyWith<$Res> implements $CreateListStateCopyWith<$Res> {
  factory $OnSuccessCreateListCopyWith(OnSuccessCreateList value, $Res Function(OnSuccessCreateList) _then) = _$OnSuccessCreateListCopyWithImpl;
@useResult
$Res call({
 String listId, String listName
});




}
/// @nodoc
class _$OnSuccessCreateListCopyWithImpl<$Res>
    implements $OnSuccessCreateListCopyWith<$Res> {
  _$OnSuccessCreateListCopyWithImpl(this._self, this._then);

  final OnSuccessCreateList _self;
  final $Res Function(OnSuccessCreateList) _then;

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listId = null,Object? listName = null,}) {
  return _then(OnSuccessCreateList(
listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnFailureCreateList implements CreateListState {
  const OnFailureCreateList({this.createListException});
  

 final  Exception? createListException;

/// Create a copy of CreateListState
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
  return 'CreateListState.onFailureCreateList(createListException: $createListException)';
}


}

/// @nodoc
abstract mixin class $OnFailureCreateListCopyWith<$Res> implements $CreateListStateCopyWith<$Res> {
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

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createListException = freezed,}) {
  return _then(OnFailureCreateList(
createListException: freezed == createListException ? _self.createListException : createListException // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class AddToListSuccess implements CreateListState {
  const AddToListSuccess({required this.listId});
  

 final  String listId;

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToListSuccessCopyWith<AddToListSuccess> get copyWith => _$AddToListSuccessCopyWithImpl<AddToListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListSuccess&&(identical(other.listId, listId) || other.listId == listId));
}


@override
int get hashCode => Object.hash(runtimeType,listId);

@override
String toString() {
  return 'CreateListState.addToListSuccess(listId: $listId)';
}


}

/// @nodoc
abstract mixin class $AddToListSuccessCopyWith<$Res> implements $CreateListStateCopyWith<$Res> {
  factory $AddToListSuccessCopyWith(AddToListSuccess value, $Res Function(AddToListSuccess) _then) = _$AddToListSuccessCopyWithImpl;
@useResult
$Res call({
 String listId
});




}
/// @nodoc
class _$AddToListSuccessCopyWithImpl<$Res>
    implements $AddToListSuccessCopyWith<$Res> {
  _$AddToListSuccessCopyWithImpl(this._self, this._then);

  final AddToListSuccess _self;
  final $Res Function(AddToListSuccess) _then;

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listId = null,}) {
  return _then(AddToListSuccess(
listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddToListFailure implements CreateListState {
  const AddToListFailure({this.exception});
  

 final  Exception? exception;

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToListFailureCopyWith<AddToListFailure> get copyWith => _$AddToListFailureCopyWithImpl<AddToListFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'CreateListState.addToListFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $AddToListFailureCopyWith<$Res> implements $CreateListStateCopyWith<$Res> {
  factory $AddToListFailureCopyWith(AddToListFailure value, $Res Function(AddToListFailure) _then) = _$AddToListFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$AddToListFailureCopyWithImpl<$Res>
    implements $AddToListFailureCopyWith<$Res> {
  _$AddToListFailureCopyWithImpl(this._self, this._then);

  final AddToListFailure _self;
  final $Res Function(AddToListFailure) _then;

/// Create a copy of CreateListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(AddToListFailure(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
