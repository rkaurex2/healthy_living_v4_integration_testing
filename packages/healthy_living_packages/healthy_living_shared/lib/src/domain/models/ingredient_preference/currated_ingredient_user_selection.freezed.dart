// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currated_ingredient_user_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CuratedIngredientUserSelection {

@JsonKey(name: 'curated_ingredient_preference_list_id') String get listId; bool get enabled; int get priority;
/// Create a copy of CuratedIngredientUserSelection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientUserSelectionCopyWith<CuratedIngredientUserSelection> get copyWith => _$CuratedIngredientUserSelectionCopyWithImpl<CuratedIngredientUserSelection>(this as CuratedIngredientUserSelection, _$identity);

  /// Serializes this CuratedIngredientUserSelection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientUserSelection&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listId,enabled,priority);

@override
String toString() {
  return 'CuratedIngredientUserSelection(listId: $listId, enabled: $enabled, priority: $priority)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientUserSelectionCopyWith<$Res>  {
  factory $CuratedIngredientUserSelectionCopyWith(CuratedIngredientUserSelection value, $Res Function(CuratedIngredientUserSelection) _then) = _$CuratedIngredientUserSelectionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'curated_ingredient_preference_list_id') String listId, bool enabled, int priority
});




}
/// @nodoc
class _$CuratedIngredientUserSelectionCopyWithImpl<$Res>
    implements $CuratedIngredientUserSelectionCopyWith<$Res> {
  _$CuratedIngredientUserSelectionCopyWithImpl(this._self, this._then);

  final CuratedIngredientUserSelection _self;
  final $Res Function(CuratedIngredientUserSelection) _then;

/// Create a copy of CuratedIngredientUserSelection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listId = null,Object? enabled = null,Object? priority = null,}) {
  return _then(_self.copyWith(
listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CuratedIngredientUserSelection].
extension CuratedIngredientUserSelectionPatterns on CuratedIngredientUserSelection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientUserSelection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientUserSelection() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientUserSelection value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientUserSelection():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientUserSelection value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientUserSelection() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'curated_ingredient_preference_list_id')  String listId,  bool enabled,  int priority)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CuratedIngredientUserSelection() when $default != null:
return $default(_that.listId,_that.enabled,_that.priority);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'curated_ingredient_preference_list_id')  String listId,  bool enabled,  int priority)  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientUserSelection():
return $default(_that.listId,_that.enabled,_that.priority);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'curated_ingredient_preference_list_id')  String listId,  bool enabled,  int priority)?  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientUserSelection() when $default != null:
return $default(_that.listId,_that.enabled,_that.priority);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CuratedIngredientUserSelection implements CuratedIngredientUserSelection {
  const _CuratedIngredientUserSelection({@JsonKey(name: 'curated_ingredient_preference_list_id') required this.listId, required this.enabled, required this.priority});
  factory _CuratedIngredientUserSelection.fromJson(Map<String, dynamic> json) => _$CuratedIngredientUserSelectionFromJson(json);

@override@JsonKey(name: 'curated_ingredient_preference_list_id') final  String listId;
@override final  bool enabled;
@override final  int priority;

/// Create a copy of CuratedIngredientUserSelection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientUserSelectionCopyWith<_CuratedIngredientUserSelection> get copyWith => __$CuratedIngredientUserSelectionCopyWithImpl<_CuratedIngredientUserSelection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CuratedIngredientUserSelectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientUserSelection&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listId,enabled,priority);

@override
String toString() {
  return 'CuratedIngredientUserSelection(listId: $listId, enabled: $enabled, priority: $priority)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientUserSelectionCopyWith<$Res> implements $CuratedIngredientUserSelectionCopyWith<$Res> {
  factory _$CuratedIngredientUserSelectionCopyWith(_CuratedIngredientUserSelection value, $Res Function(_CuratedIngredientUserSelection) _then) = __$CuratedIngredientUserSelectionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'curated_ingredient_preference_list_id') String listId, bool enabled, int priority
});




}
/// @nodoc
class __$CuratedIngredientUserSelectionCopyWithImpl<$Res>
    implements _$CuratedIngredientUserSelectionCopyWith<$Res> {
  __$CuratedIngredientUserSelectionCopyWithImpl(this._self, this._then);

  final _CuratedIngredientUserSelection _self;
  final $Res Function(_CuratedIngredientUserSelection) _then;

/// Create a copy of CuratedIngredientUserSelection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listId = null,Object? enabled = null,Object? priority = null,}) {
  return _then(_CuratedIngredientUserSelection(
listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
