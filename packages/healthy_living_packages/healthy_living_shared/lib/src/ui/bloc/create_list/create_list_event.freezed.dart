// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateListEvent()';
}


}

/// @nodoc
class $CreateListEventCopyWith<$Res>  {
$CreateListEventCopyWith(CreateListEvent _, $Res Function(CreateListEvent) __);
}


/// Adds pattern-matching-related methods to [CreateListEvent].
extension CreateListEventPatterns on CreateListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateListInitialized value)?  initialized,TResult Function( OnNameListTextChanged value)?  onNameListTextChanged,TResult Function( OnCreateListButtonPressed value)?  onCreateListButtonPressed,TResult Function( OnExistCreateListSheet value)?  onExistCreateListSheet,TResult Function( ProductAddToList value)?  productAddToList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateListInitialized() when initialized != null:
return initialized(_that);case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that);case OnCreateListButtonPressed() when onCreateListButtonPressed != null:
return onCreateListButtonPressed(_that);case OnExistCreateListSheet() when onExistCreateListSheet != null:
return onExistCreateListSheet(_that);case ProductAddToList() when productAddToList != null:
return productAddToList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateListInitialized value)  initialized,required TResult Function( OnNameListTextChanged value)  onNameListTextChanged,required TResult Function( OnCreateListButtonPressed value)  onCreateListButtonPressed,required TResult Function( OnExistCreateListSheet value)  onExistCreateListSheet,required TResult Function( ProductAddToList value)  productAddToList,}){
final _that = this;
switch (_that) {
case CreateListInitialized():
return initialized(_that);case OnNameListTextChanged():
return onNameListTextChanged(_that);case OnCreateListButtonPressed():
return onCreateListButtonPressed(_that);case OnExistCreateListSheet():
return onExistCreateListSheet(_that);case ProductAddToList():
return productAddToList(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateListInitialized value)?  initialized,TResult? Function( OnNameListTextChanged value)?  onNameListTextChanged,TResult? Function( OnCreateListButtonPressed value)?  onCreateListButtonPressed,TResult? Function( OnExistCreateListSheet value)?  onExistCreateListSheet,TResult? Function( ProductAddToList value)?  productAddToList,}){
final _that = this;
switch (_that) {
case CreateListInitialized() when initialized != null:
return initialized(_that);case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that);case OnCreateListButtonPressed() when onCreateListButtonPressed != null:
return onCreateListButtonPressed(_that);case OnExistCreateListSheet() when onExistCreateListSheet != null:
return onExistCreateListSheet(_that);case ProductAddToList() when productAddToList != null:
return productAddToList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialized,TResult Function( String listName)?  onNameListTextChanged,TResult Function( String listName)?  onCreateListButtonPressed,TResult Function( bool isSuccess)?  onExistCreateListSheet,TResult Function( List<UserListItemsAttributesModel> userListItemsAttributesModel,  String listId,  String listName)?  productAddToList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateListInitialized() when initialized != null:
return initialized();case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that.listName);case OnCreateListButtonPressed() when onCreateListButtonPressed != null:
return onCreateListButtonPressed(_that.listName);case OnExistCreateListSheet() when onExistCreateListSheet != null:
return onExistCreateListSheet(_that.isSuccess);case ProductAddToList() when productAddToList != null:
return productAddToList(_that.userListItemsAttributesModel,_that.listId,_that.listName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialized,required TResult Function( String listName)  onNameListTextChanged,required TResult Function( String listName)  onCreateListButtonPressed,required TResult Function( bool isSuccess)  onExistCreateListSheet,required TResult Function( List<UserListItemsAttributesModel> userListItemsAttributesModel,  String listId,  String listName)  productAddToList,}) {final _that = this;
switch (_that) {
case CreateListInitialized():
return initialized();case OnNameListTextChanged():
return onNameListTextChanged(_that.listName);case OnCreateListButtonPressed():
return onCreateListButtonPressed(_that.listName);case OnExistCreateListSheet():
return onExistCreateListSheet(_that.isSuccess);case ProductAddToList():
return productAddToList(_that.userListItemsAttributesModel,_that.listId,_that.listName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialized,TResult? Function( String listName)?  onNameListTextChanged,TResult? Function( String listName)?  onCreateListButtonPressed,TResult? Function( bool isSuccess)?  onExistCreateListSheet,TResult? Function( List<UserListItemsAttributesModel> userListItemsAttributesModel,  String listId,  String listName)?  productAddToList,}) {final _that = this;
switch (_that) {
case CreateListInitialized() when initialized != null:
return initialized();case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that.listName);case OnCreateListButtonPressed() when onCreateListButtonPressed != null:
return onCreateListButtonPressed(_that.listName);case OnExistCreateListSheet() when onExistCreateListSheet != null:
return onExistCreateListSheet(_that.isSuccess);case ProductAddToList() when productAddToList != null:
return productAddToList(_that.userListItemsAttributesModel,_that.listId,_that.listName);case _:
  return null;

}
}

}

/// @nodoc


class CreateListInitialized implements CreateListEvent {
  const CreateListInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateListInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateListEvent.initialized()';
}


}




/// @nodoc


class OnNameListTextChanged implements CreateListEvent {
  const OnNameListTextChanged({required this.listName});
  

 final  String listName;

/// Create a copy of CreateListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnNameListTextChangedCopyWith<OnNameListTextChanged> get copyWith => _$OnNameListTextChangedCopyWithImpl<OnNameListTextChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnNameListTextChanged&&(identical(other.listName, listName) || other.listName == listName));
}


@override
int get hashCode => Object.hash(runtimeType,listName);

@override
String toString() {
  return 'CreateListEvent.onNameListTextChanged(listName: $listName)';
}


}

/// @nodoc
abstract mixin class $OnNameListTextChangedCopyWith<$Res> implements $CreateListEventCopyWith<$Res> {
  factory $OnNameListTextChangedCopyWith(OnNameListTextChanged value, $Res Function(OnNameListTextChanged) _then) = _$OnNameListTextChangedCopyWithImpl;
@useResult
$Res call({
 String listName
});




}
/// @nodoc
class _$OnNameListTextChangedCopyWithImpl<$Res>
    implements $OnNameListTextChangedCopyWith<$Res> {
  _$OnNameListTextChangedCopyWithImpl(this._self, this._then);

  final OnNameListTextChanged _self;
  final $Res Function(OnNameListTextChanged) _then;

/// Create a copy of CreateListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listName = null,}) {
  return _then(OnNameListTextChanged(
listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnCreateListButtonPressed implements CreateListEvent {
  const OnCreateListButtonPressed({required this.listName});
  

 final  String listName;

/// Create a copy of CreateListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnCreateListButtonPressedCopyWith<OnCreateListButtonPressed> get copyWith => _$OnCreateListButtonPressedCopyWithImpl<OnCreateListButtonPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnCreateListButtonPressed&&(identical(other.listName, listName) || other.listName == listName));
}


@override
int get hashCode => Object.hash(runtimeType,listName);

@override
String toString() {
  return 'CreateListEvent.onCreateListButtonPressed(listName: $listName)';
}


}

/// @nodoc
abstract mixin class $OnCreateListButtonPressedCopyWith<$Res> implements $CreateListEventCopyWith<$Res> {
  factory $OnCreateListButtonPressedCopyWith(OnCreateListButtonPressed value, $Res Function(OnCreateListButtonPressed) _then) = _$OnCreateListButtonPressedCopyWithImpl;
@useResult
$Res call({
 String listName
});




}
/// @nodoc
class _$OnCreateListButtonPressedCopyWithImpl<$Res>
    implements $OnCreateListButtonPressedCopyWith<$Res> {
  _$OnCreateListButtonPressedCopyWithImpl(this._self, this._then);

  final OnCreateListButtonPressed _self;
  final $Res Function(OnCreateListButtonPressed) _then;

/// Create a copy of CreateListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listName = null,}) {
  return _then(OnCreateListButtonPressed(
listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnExistCreateListSheet implements CreateListEvent {
  const OnExistCreateListSheet({required this.isSuccess});
  

 final  bool isSuccess;

/// Create a copy of CreateListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnExistCreateListSheetCopyWith<OnExistCreateListSheet> get copyWith => _$OnExistCreateListSheetCopyWithImpl<OnExistCreateListSheet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnExistCreateListSheet&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSuccess);

@override
String toString() {
  return 'CreateListEvent.onExistCreateListSheet(isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $OnExistCreateListSheetCopyWith<$Res> implements $CreateListEventCopyWith<$Res> {
  factory $OnExistCreateListSheetCopyWith(OnExistCreateListSheet value, $Res Function(OnExistCreateListSheet) _then) = _$OnExistCreateListSheetCopyWithImpl;
@useResult
$Res call({
 bool isSuccess
});




}
/// @nodoc
class _$OnExistCreateListSheetCopyWithImpl<$Res>
    implements $OnExistCreateListSheetCopyWith<$Res> {
  _$OnExistCreateListSheetCopyWithImpl(this._self, this._then);

  final OnExistCreateListSheet _self;
  final $Res Function(OnExistCreateListSheet) _then;

/// Create a copy of CreateListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,}) {
  return _then(OnExistCreateListSheet(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ProductAddToList implements CreateListEvent {
  const ProductAddToList({required final  List<UserListItemsAttributesModel> userListItemsAttributesModel, required this.listId, required this.listName}): _userListItemsAttributesModel = userListItemsAttributesModel;
  

 final  List<UserListItemsAttributesModel> _userListItemsAttributesModel;
 List<UserListItemsAttributesModel> get userListItemsAttributesModel {
  if (_userListItemsAttributesModel is EqualUnmodifiableListView) return _userListItemsAttributesModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userListItemsAttributesModel);
}

 final  String listId;
 final  String listName;

/// Create a copy of CreateListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductAddToListCopyWith<ProductAddToList> get copyWith => _$ProductAddToListCopyWithImpl<ProductAddToList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductAddToList&&const DeepCollectionEquality().equals(other._userListItemsAttributesModel, _userListItemsAttributesModel)&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.listName, listName) || other.listName == listName));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userListItemsAttributesModel),listId,listName);

@override
String toString() {
  return 'CreateListEvent.productAddToList(userListItemsAttributesModel: $userListItemsAttributesModel, listId: $listId, listName: $listName)';
}


}

/// @nodoc
abstract mixin class $ProductAddToListCopyWith<$Res> implements $CreateListEventCopyWith<$Res> {
  factory $ProductAddToListCopyWith(ProductAddToList value, $Res Function(ProductAddToList) _then) = _$ProductAddToListCopyWithImpl;
@useResult
$Res call({
 List<UserListItemsAttributesModel> userListItemsAttributesModel, String listId, String listName
});




}
/// @nodoc
class _$ProductAddToListCopyWithImpl<$Res>
    implements $ProductAddToListCopyWith<$Res> {
  _$ProductAddToListCopyWithImpl(this._self, this._then);

  final ProductAddToList _self;
  final $Res Function(ProductAddToList) _then;

/// Create a copy of CreateListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userListItemsAttributesModel = null,Object? listId = null,Object? listName = null,}) {
  return _then(ProductAddToList(
userListItemsAttributesModel: null == userListItemsAttributesModel ? _self._userListItemsAttributesModel : userListItemsAttributesModel // ignore: cast_nullable_to_non_nullable
as List<UserListItemsAttributesModel>,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
