// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientDetailsEvent {

 String get id;
/// Create a copy of IngredientDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientDetailsEventCopyWith<IngredientDetailsEvent> get copyWith => _$IngredientDetailsEventCopyWithImpl<IngredientDetailsEvent>(this as IngredientDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDetailsEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'IngredientDetailsEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $IngredientDetailsEventCopyWith<$Res>  {
  factory $IngredientDetailsEventCopyWith(IngredientDetailsEvent value, $Res Function(IngredientDetailsEvent) _then) = _$IngredientDetailsEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$IngredientDetailsEventCopyWithImpl<$Res>
    implements $IngredientDetailsEventCopyWith<$Res> {
  _$IngredientDetailsEventCopyWithImpl(this._self, this._then);

  final IngredientDetailsEvent _self;
  final $Res Function(IngredientDetailsEvent) _then;

/// Create a copy of IngredientDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientDetailsEvent].
extension IngredientDetailsEventPatterns on IngredientDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IngredientDetailsRequested value)?  requested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IngredientDetailsRequested() when requested != null:
return requested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IngredientDetailsRequested value)  requested,}){
final _that = this;
switch (_that) {
case IngredientDetailsRequested():
return requested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IngredientDetailsRequested value)?  requested,}){
final _that = this;
switch (_that) {
case IngredientDetailsRequested() when requested != null:
return requested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  requested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IngredientDetailsRequested() when requested != null:
return requested(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  requested,}) {final _that = this;
switch (_that) {
case IngredientDetailsRequested():
return requested(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  requested,}) {final _that = this;
switch (_that) {
case IngredientDetailsRequested() when requested != null:
return requested(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class IngredientDetailsRequested implements IngredientDetailsEvent {
  const IngredientDetailsRequested({required this.id});
  

@override final  String id;

/// Create a copy of IngredientDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientDetailsRequestedCopyWith<IngredientDetailsRequested> get copyWith => _$IngredientDetailsRequestedCopyWithImpl<IngredientDetailsRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDetailsRequested&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'IngredientDetailsEvent.requested(id: $id)';
}


}

/// @nodoc
abstract mixin class $IngredientDetailsRequestedCopyWith<$Res> implements $IngredientDetailsEventCopyWith<$Res> {
  factory $IngredientDetailsRequestedCopyWith(IngredientDetailsRequested value, $Res Function(IngredientDetailsRequested) _then) = _$IngredientDetailsRequestedCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class _$IngredientDetailsRequestedCopyWithImpl<$Res>
    implements $IngredientDetailsRequestedCopyWith<$Res> {
  _$IngredientDetailsRequestedCopyWithImpl(this._self, this._then);

  final IngredientDetailsRequested _self;
  final $Res Function(IngredientDetailsRequested) _then;

/// Create a copy of IngredientDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(IngredientDetailsRequested(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
