// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddToListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToListEvent()';
}


}

/// @nodoc
class $AddToListEventCopyWith<$Res>  {
$AddToListEventCopyWith(AddToListEvent _, $Res Function(AddToListEvent) __);
}


/// Adds pattern-matching-related methods to [AddToListEvent].
extension AddToListEventPatterns on AddToListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddToListInitialized value)?  initialized,TResult Function( GetSavedList value)?  getSavedList,TResult Function( OnDoneButtonPressed value)?  onDoneButtonPressed,TResult Function( OnChangeListItemIndex value)?  onChangeListItemIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddToListInitialized() when initialized != null:
return initialized(_that);case GetSavedList() when getSavedList != null:
return getSavedList(_that);case OnDoneButtonPressed() when onDoneButtonPressed != null:
return onDoneButtonPressed(_that);case OnChangeListItemIndex() when onChangeListItemIndex != null:
return onChangeListItemIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddToListInitialized value)  initialized,required TResult Function( GetSavedList value)  getSavedList,required TResult Function( OnDoneButtonPressed value)  onDoneButtonPressed,required TResult Function( OnChangeListItemIndex value)  onChangeListItemIndex,}){
final _that = this;
switch (_that) {
case AddToListInitialized():
return initialized(_that);case GetSavedList():
return getSavedList(_that);case OnDoneButtonPressed():
return onDoneButtonPressed(_that);case OnChangeListItemIndex():
return onChangeListItemIndex(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddToListInitialized value)?  initialized,TResult? Function( GetSavedList value)?  getSavedList,TResult? Function( OnDoneButtonPressed value)?  onDoneButtonPressed,TResult? Function( OnChangeListItemIndex value)?  onChangeListItemIndex,}){
final _that = this;
switch (_that) {
case AddToListInitialized() when initialized != null:
return initialized(_that);case GetSavedList() when getSavedList != null:
return getSavedList(_that);case OnDoneButtonPressed() when onDoneButtonPressed != null:
return onDoneButtonPressed(_that);case OnChangeListItemIndex() when onChangeListItemIndex != null:
return onChangeListItemIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialized,TResult Function()?  getSavedList,TResult Function( List<UserListItemsAttributesModel> userListItemsAttributesModel,  String listId,  String listName)?  onDoneButtonPressed,TResult Function( int index)?  onChangeListItemIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddToListInitialized() when initialized != null:
return initialized();case GetSavedList() when getSavedList != null:
return getSavedList();case OnDoneButtonPressed() when onDoneButtonPressed != null:
return onDoneButtonPressed(_that.userListItemsAttributesModel,_that.listId,_that.listName);case OnChangeListItemIndex() when onChangeListItemIndex != null:
return onChangeListItemIndex(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialized,required TResult Function()  getSavedList,required TResult Function( List<UserListItemsAttributesModel> userListItemsAttributesModel,  String listId,  String listName)  onDoneButtonPressed,required TResult Function( int index)  onChangeListItemIndex,}) {final _that = this;
switch (_that) {
case AddToListInitialized():
return initialized();case GetSavedList():
return getSavedList();case OnDoneButtonPressed():
return onDoneButtonPressed(_that.userListItemsAttributesModel,_that.listId,_that.listName);case OnChangeListItemIndex():
return onChangeListItemIndex(_that.index);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialized,TResult? Function()?  getSavedList,TResult? Function( List<UserListItemsAttributesModel> userListItemsAttributesModel,  String listId,  String listName)?  onDoneButtonPressed,TResult? Function( int index)?  onChangeListItemIndex,}) {final _that = this;
switch (_that) {
case AddToListInitialized() when initialized != null:
return initialized();case GetSavedList() when getSavedList != null:
return getSavedList();case OnDoneButtonPressed() when onDoneButtonPressed != null:
return onDoneButtonPressed(_that.userListItemsAttributesModel,_that.listId,_that.listName);case OnChangeListItemIndex() when onChangeListItemIndex != null:
return onChangeListItemIndex(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class AddToListInitialized implements AddToListEvent {
  const AddToListInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToListEvent.initialized()';
}


}




/// @nodoc


class GetSavedList implements AddToListEvent {
  const GetSavedList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSavedList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToListEvent.getSavedList()';
}


}




/// @nodoc


class OnDoneButtonPressed implements AddToListEvent {
  const OnDoneButtonPressed({required final  List<UserListItemsAttributesModel> userListItemsAttributesModel, required this.listId, required this.listName}): _userListItemsAttributesModel = userListItemsAttributesModel;
  

 final  List<UserListItemsAttributesModel> _userListItemsAttributesModel;
 List<UserListItemsAttributesModel> get userListItemsAttributesModel {
  if (_userListItemsAttributesModel is EqualUnmodifiableListView) return _userListItemsAttributesModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userListItemsAttributesModel);
}

 final  String listId;
 final  String listName;

/// Create a copy of AddToListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnDoneButtonPressedCopyWith<OnDoneButtonPressed> get copyWith => _$OnDoneButtonPressedCopyWithImpl<OnDoneButtonPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnDoneButtonPressed&&const DeepCollectionEquality().equals(other._userListItemsAttributesModel, _userListItemsAttributesModel)&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.listName, listName) || other.listName == listName));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userListItemsAttributesModel),listId,listName);

@override
String toString() {
  return 'AddToListEvent.onDoneButtonPressed(userListItemsAttributesModel: $userListItemsAttributesModel, listId: $listId, listName: $listName)';
}


}

/// @nodoc
abstract mixin class $OnDoneButtonPressedCopyWith<$Res> implements $AddToListEventCopyWith<$Res> {
  factory $OnDoneButtonPressedCopyWith(OnDoneButtonPressed value, $Res Function(OnDoneButtonPressed) _then) = _$OnDoneButtonPressedCopyWithImpl;
@useResult
$Res call({
 List<UserListItemsAttributesModel> userListItemsAttributesModel, String listId, String listName
});




}
/// @nodoc
class _$OnDoneButtonPressedCopyWithImpl<$Res>
    implements $OnDoneButtonPressedCopyWith<$Res> {
  _$OnDoneButtonPressedCopyWithImpl(this._self, this._then);

  final OnDoneButtonPressed _self;
  final $Res Function(OnDoneButtonPressed) _then;

/// Create a copy of AddToListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userListItemsAttributesModel = null,Object? listId = null,Object? listName = null,}) {
  return _then(OnDoneButtonPressed(
userListItemsAttributesModel: null == userListItemsAttributesModel ? _self._userListItemsAttributesModel : userListItemsAttributesModel // ignore: cast_nullable_to_non_nullable
as List<UserListItemsAttributesModel>,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnChangeListItemIndex implements AddToListEvent {
  const OnChangeListItemIndex({required this.index});
  

 final  int index;

/// Create a copy of AddToListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnChangeListItemIndexCopyWith<OnChangeListItemIndex> get copyWith => _$OnChangeListItemIndexCopyWithImpl<OnChangeListItemIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnChangeListItemIndex&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'AddToListEvent.onChangeListItemIndex(index: $index)';
}


}

/// @nodoc
abstract mixin class $OnChangeListItemIndexCopyWith<$Res> implements $AddToListEventCopyWith<$Res> {
  factory $OnChangeListItemIndexCopyWith(OnChangeListItemIndex value, $Res Function(OnChangeListItemIndex) _then) = _$OnChangeListItemIndexCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$OnChangeListItemIndexCopyWithImpl<$Res>
    implements $OnChangeListItemIndexCopyWith<$Res> {
  _$OnChangeListItemIndexCopyWithImpl(this._self, this._then);

  final OnChangeListItemIndex _self;
  final $Res Function(OnChangeListItemIndex) _then;

/// Create a copy of AddToListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(OnChangeListItemIndex(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
