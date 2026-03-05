// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_items_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyItemsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyItemsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyItemsEvent()';
}


}

/// @nodoc
class $MyItemsEventCopyWith<$Res>  {
$MyItemsEventCopyWith(MyItemsEvent _, $Res Function(MyItemsEvent) __);
}


/// Adds pattern-matching-related methods to [MyItemsEvent].
extension MyItemsEventPatterns on MyItemsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MyItemsInitialized value)?  initialized,TResult Function( OnNameListTextChanged value)?  onNameListTextChanged,TResult Function( OnCreateListButtonPressed value)?  onCreateListButtonPressed,TResult Function( GetUserList value)?  getUserList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MyItemsInitialized() when initialized != null:
return initialized(_that);case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that);case OnCreateListButtonPressed() when onCreateListButtonPressed != null:
return onCreateListButtonPressed(_that);case GetUserList() when getUserList != null:
return getUserList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MyItemsInitialized value)  initialized,required TResult Function( OnNameListTextChanged value)  onNameListTextChanged,required TResult Function( OnCreateListButtonPressed value)  onCreateListButtonPressed,required TResult Function( GetUserList value)  getUserList,}){
final _that = this;
switch (_that) {
case MyItemsInitialized():
return initialized(_that);case OnNameListTextChanged():
return onNameListTextChanged(_that);case OnCreateListButtonPressed():
return onCreateListButtonPressed(_that);case GetUserList():
return getUserList(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MyItemsInitialized value)?  initialized,TResult? Function( OnNameListTextChanged value)?  onNameListTextChanged,TResult? Function( OnCreateListButtonPressed value)?  onCreateListButtonPressed,TResult? Function( GetUserList value)?  getUserList,}){
final _that = this;
switch (_that) {
case MyItemsInitialized() when initialized != null:
return initialized(_that);case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that);case OnCreateListButtonPressed() when onCreateListButtonPressed != null:
return onCreateListButtonPressed(_that);case GetUserList() when getUserList != null:
return getUserList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialized,TResult Function( String listName)?  onNameListTextChanged,TResult Function( String listName)?  onCreateListButtonPressed,TResult Function()?  getUserList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MyItemsInitialized() when initialized != null:
return initialized();case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that.listName);case OnCreateListButtonPressed() when onCreateListButtonPressed != null:
return onCreateListButtonPressed(_that.listName);case GetUserList() when getUserList != null:
return getUserList();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialized,required TResult Function( String listName)  onNameListTextChanged,required TResult Function( String listName)  onCreateListButtonPressed,required TResult Function()  getUserList,}) {final _that = this;
switch (_that) {
case MyItemsInitialized():
return initialized();case OnNameListTextChanged():
return onNameListTextChanged(_that.listName);case OnCreateListButtonPressed():
return onCreateListButtonPressed(_that.listName);case GetUserList():
return getUserList();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialized,TResult? Function( String listName)?  onNameListTextChanged,TResult? Function( String listName)?  onCreateListButtonPressed,TResult? Function()?  getUserList,}) {final _that = this;
switch (_that) {
case MyItemsInitialized() when initialized != null:
return initialized();case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that.listName);case OnCreateListButtonPressed() when onCreateListButtonPressed != null:
return onCreateListButtonPressed(_that.listName);case GetUserList() when getUserList != null:
return getUserList();case _:
  return null;

}
}

}

/// @nodoc


class MyItemsInitialized implements MyItemsEvent {
  const MyItemsInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyItemsInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyItemsEvent.initialized()';
}


}




/// @nodoc


class OnNameListTextChanged implements MyItemsEvent {
  const OnNameListTextChanged({required this.listName});
  

 final  String listName;

/// Create a copy of MyItemsEvent
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
  return 'MyItemsEvent.onNameListTextChanged(listName: $listName)';
}


}

/// @nodoc
abstract mixin class $OnNameListTextChangedCopyWith<$Res> implements $MyItemsEventCopyWith<$Res> {
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

/// Create a copy of MyItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listName = null,}) {
  return _then(OnNameListTextChanged(
listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnCreateListButtonPressed implements MyItemsEvent {
  const OnCreateListButtonPressed({required this.listName});
  

 final  String listName;

/// Create a copy of MyItemsEvent
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
  return 'MyItemsEvent.onCreateListButtonPressed(listName: $listName)';
}


}

/// @nodoc
abstract mixin class $OnCreateListButtonPressedCopyWith<$Res> implements $MyItemsEventCopyWith<$Res> {
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

/// Create a copy of MyItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listName = null,}) {
  return _then(OnCreateListButtonPressed(
listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetUserList implements MyItemsEvent {
  const GetUserList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyItemsEvent.getUserList()';
}


}




// dart format on
