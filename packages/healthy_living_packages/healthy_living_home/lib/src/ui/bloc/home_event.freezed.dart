// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeInitialized value)?  homeInitialized,TResult Function( OnNameListTextChanged value)?  onNameListTextChanged,TResult Function( CreateYourList value)?  createYourList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeInitialized() when homeInitialized != null:
return homeInitialized(_that);case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that);case CreateYourList() when createYourList != null:
return createYourList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeInitialized value)  homeInitialized,required TResult Function( OnNameListTextChanged value)  onNameListTextChanged,required TResult Function( CreateYourList value)  createYourList,}){
final _that = this;
switch (_that) {
case HomeInitialized():
return homeInitialized(_that);case OnNameListTextChanged():
return onNameListTextChanged(_that);case CreateYourList():
return createYourList(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeInitialized value)?  homeInitialized,TResult? Function( OnNameListTextChanged value)?  onNameListTextChanged,TResult? Function( CreateYourList value)?  createYourList,}){
final _that = this;
switch (_that) {
case HomeInitialized() when homeInitialized != null:
return homeInitialized(_that);case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that);case CreateYourList() when createYourList != null:
return createYourList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  homeInitialized,TResult Function( String listName)?  onNameListTextChanged,TResult Function( String name)?  createYourList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeInitialized() when homeInitialized != null:
return homeInitialized();case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that.listName);case CreateYourList() when createYourList != null:
return createYourList(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  homeInitialized,required TResult Function( String listName)  onNameListTextChanged,required TResult Function( String name)  createYourList,}) {final _that = this;
switch (_that) {
case HomeInitialized():
return homeInitialized();case OnNameListTextChanged():
return onNameListTextChanged(_that.listName);case CreateYourList():
return createYourList(_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  homeInitialized,TResult? Function( String listName)?  onNameListTextChanged,TResult? Function( String name)?  createYourList,}) {final _that = this;
switch (_that) {
case HomeInitialized() when homeInitialized != null:
return homeInitialized();case OnNameListTextChanged() when onNameListTextChanged != null:
return onNameListTextChanged(_that.listName);case CreateYourList() when createYourList != null:
return createYourList(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class HomeInitialized implements HomeEvent {
  const HomeInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.homeInitialized()';
}


}




/// @nodoc


class OnNameListTextChanged implements HomeEvent {
  const OnNameListTextChanged({required this.listName});
  

 final  String listName;

/// Create a copy of HomeEvent
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
  return 'HomeEvent.onNameListTextChanged(listName: $listName)';
}


}

/// @nodoc
abstract mixin class $OnNameListTextChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
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

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listName = null,}) {
  return _then(OnNameListTextChanged(
listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateYourList implements HomeEvent {
  const CreateYourList({required this.name});
  

 final  String name;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateYourListCopyWith<CreateYourList> get copyWith => _$CreateYourListCopyWithImpl<CreateYourList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateYourList&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'HomeEvent.createYourList(name: $name)';
}


}

/// @nodoc
abstract mixin class $CreateYourListCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $CreateYourListCopyWith(CreateYourList value, $Res Function(CreateYourList) _then) = _$CreateYourListCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CreateYourListCopyWithImpl<$Res>
    implements $CreateYourListCopyWith<$Res> {
  _$CreateYourListCopyWithImpl(this._self, this._then);

  final CreateYourList _self;
  final $Res Function(CreateYourList) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(CreateYourList(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
